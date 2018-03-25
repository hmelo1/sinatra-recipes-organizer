## Nom Nom Recipes

Front end styled CRUD (Create, Read, Update and Delete) application. The front end is built using Javascript from a modified Bootstap. The backend is built using Sinatra.  Nom Nom Recipes was built to store random recipes I find online.

Guests can view all the reports but will be unable to create or edit/delete any of the standing posts. User authentication is done via Ruby Logged in users can create new recipes, edit their own, and delete their own recipes.

## Installation Instructions

Github Repo: https://github.com/hmelo1/sinatra-recipes-organizer
```
$bundle install
```
Run migrations:
```
$ rake db:migrate
```
In order for this app to function, you must seed it with the included 5 boroughs:
```
$ rake db:seed
```
Host on local server:
```
$ shotgun
```
