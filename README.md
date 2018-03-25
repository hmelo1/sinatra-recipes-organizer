
Front end styled CRUD (Create, Read, Update and Delete) application. The front end is built using Javascript from a modified Bootstap.  Nom Nom Recipes was built to store random recipes I find online.


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
