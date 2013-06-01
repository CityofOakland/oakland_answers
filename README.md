## Oakland Answers
#### [Live site](http://answers.oaklandnet.com/)
=====

[![screenshot](http://i.imgur.com/uOwnDV9.png)](http://answers.oaklandnet.com/)

### About

Oakland Answers is based on [Honolulu Answers](http://answers.honolulu.gov): a new approach to make it easier for people to navigate city information and services quickly. It's a citizen-focused website that is question-driven, with clean, easy-to-navigate design. Unlike a portal destination, Honolulu Answers is like Google -- type in anything, and it probably gives you the answer you're looking for, using the words you know. Every page on the site is an answer to a potential Google search question by a citizen, written in simple, friendly language, as if you'd asked your neighbor a question. The content is organized based on citizen understanding, the intuitive way you'd think of a problem, not the way the city is organized internally.

Honolulu Answers is designed to be very user-friendly. It declutters the govt website experience, and it solves a problem people ordinarily have. And we hope it makes people's lives easier. Inspired by Gov.uk, Honolulu Answers is a first-of-its-kind for municipal government, a partnership between Code for America and the City & County of Honolulu.


### Developing

**If you are using OS X Snow Leopard, Lion or Mountain Lion, please follow this guide which will take you through the setup procedure**

Mac OS X is best supported by Honolulu Answers, since it is what most of us at Code for America use. Ubuntu (and therefore presumeably other linux distributions) are also supported.  Windows is currently unsupported and untested.

[Installation Instructions for OS X 10.8 Mountain Lion](https://github.com/codeforamerica/honolulu_answers/wiki/Installation-Instructions-for-OS-X-10.8-Mountain-Lion)

Slightly outdated Ubuntu instructions are available [here](https://github.com/codeforamerica/honolulu_answers/wiki/Installation-Instructions-for-Ubuntu-12.04-Precise).

```
$ foreman start
```

### Testing

`foreman run bundle exec rake spec` command will run the current tests, these test need to be expanded.

### Deploying to Heroku

    $ heroku create honoluluanswers --stack cedar
    $ git push heroku master
    $ heroku config push
    $ heroku config set LD_LIBRARY_PATH='lib/native'
    $ heroku addons:add searchify:small # WARNING: paid addon!
    $ heroku addons:add memcache
    $ heroku addons:add newrelic:standard
    $ heroku run rake db:setup

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
