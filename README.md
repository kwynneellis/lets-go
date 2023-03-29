## About The Project

#### Find a local workout buddy today to motivate you to achieve your exercise goals.

Not everyone is self-motivated to exercise and stay active. Let's Go enables it's users to pair up with a local workout buddy in their area to hold them accountable and motivate them.

### Database schema


### Tech stack

Trace was designed for a desktop experience for admins and organisers, and a mobile experience for players.

Frameworks & libraries used to make Trace
* [Ruby on Rails](https://rubyonrails.org/)
* [JavaScript](https://www.javascript.com/)
* [CSS & SASS](https://sass-lang.com/)
* [Bootstrap](https://getbootstrap.com/)
* [Stimulus](https://stimulus.hotwired.dev/)
* [Mapbox API](https://docs.mapbox.com/api/overview/)

Version control & deployment
* [GitHub] (https://github.com/kwynneellis/lets-go)
* [Heroku] (http://lets-go.herokuapp.com/)

<p align="right">(<a href="#top">back to top</a>)</p>

## Installation

#### Setup

0. In order to run our app locally, you will need to have already installed Yarn and Rails. Check them with:


```
$ yarn -v
$ rails --version
```

If no version number is returned, please install [Yarn](https://classic.yarnpkg.com/en/docs/install) and/or [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) before continuing.

#### Dependencies

1. You'll also need to install all dependencies of the project with:
```
$ bundle install && yarn install
```

The `bundle` command installs all Ruby Gems specified in our Gemfile. The `yarn install` command retrieves all dependencies from the project’s package.json file.
<br>
<br>

2. Run the following command to create a database, load the schema, and initialize it with our seed data.
```
$ rails db:create db:migrate db:seed
```

#### API Keys

3. Lastly, our API keys are hidden. You will need to `touch` a `.env` file and populate it with your own [Mapbox](https://docs.mapbox.com/help/getting-started/access-tokens/) and [Cloudinary](https://cloudinary.com/documentation/image_upload_api_reference) API keys.

#### Launch 🚀

Finally! Lets launch the app by running:

```
$ rails s
```

```
$ yarn build --watch
```

Then go to [localhost:3000](http://localhost:3000/)

<p align="right">(<a href="#top">back to top</a>)</p>

## License

Created as part of the Le Wagon Fullstack Web Development program.

<p align="right">(<a href="#top">back to top</a>)</p>

## Acknowledgments and Contact

Made with love by:
* Anthony Deadman
  * Check me out on Github https://github.com/Anthony-0304
* Becky Lomax
  * Check me out on Github https://github.com/beckylomax
* Rachel Jones
  * Check me out on Github https://github.com/rachelscjones
* Kat Wynne-Ellis
  * Check me out on Github https://github.com/kwynneellis

<p align="right">(<a href="#top">back to top</a>)</p>

<p align="center">
  <img src="https://visitor-badge.laobi.icu/badge?page_id=RebeccaL23/trace" id="counter">
</p>
