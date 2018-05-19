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


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hmelo1/sinatra-recipes-organizer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SteamDealsCli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hmelo1/sinatra-recipes-organizer/blob/master/CODE_OF_CONDUCT.md).
