## Oakland Answers
#### [Live site](http://answers.oaklandnet.com/)

[![screenshot](http://i.imgur.com/uOwnDV9.png)](http://answers.oaklandnet.com/)

### About

Oakland Answers is based on [Honolulu Answers](http://answers.honolulu.gov): a new approach to make it easier for people to navigate city information and services quickly. It's a citizen-focused website that is question-driven, with clean, easy-to-navigate design. Unlike a portal destination, Honolulu Answers is like Google -- type in anything, and it probably gives you the answer you're looking for, using the words you know.

### Developing

#### Requirements
* Postgres (Mac OS: [Postgres.app](http://postgresapp.com/))
* qt (for Capybara-Webkit) `brew install qt`

#### Instructions
1. `git clone` the repo
2. Configure environment variables as specified in `.env.example`
3. Create a `config/database.yml` configuration file. An example is provided for you at `config/database.yml.example`
4. `rake db:setup` and follow the prompts to create your first user
5. Launch with your choice of web server

### Testing
`rake spec` command will run the current tests, although these tests need to be expanded.

### Deploying to Heroku
```
$ heroku create APPNAME
$ git push heroku master
$ heroku addons:add searchify:small # WARNING: paid addon!
$ heroku addons:add memcache
$ heroku addons:add newrelic:standard
$ heroku run rake db:setup
```

### Contributing
See [CONTRIBUTING.md](https://www.github.com/cityofoakland/oakland_answers/blob/master/CONTRIBUTING.md).

### Roadmap
* Support other search indexes backends/services (perhaps just fulltext search in DB as a fallback)
* A comprehensive admin component
* Results tailored to current location

### Credits:

* Search results are aided by a thesaurus service provided by [words.bighugelabs.com](http://words.bighugelabs.com/).
* Background photo courtesy of [Royal Realty](http://royalrealtyllc.com/)

### License
Released under a [MIT License](https://www.github.com/cityofoakland/oakland_answers/blob/master/LICENSE.md).
