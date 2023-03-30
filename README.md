## About Let's Go

#### Find a local workout buddy today to motivate you to achieve your exercise goals.

Not everyone is self-motivated to exercise and stay active. Let's Go enables it's users to pair up with a local workout buddy in their area to hold them accountable and motivate them.

*How it works - join someone else's workout*
1. Browse the workouts                                                   
2. Filter by activity type or search by location
3. Select a workout and checkout the information and buddy's profile
4. Join the workout
5. Chat to your workout buddy
6. Leave a rating & review after the workout

*How it works - create your own workout*
1. Add a new workout and await for a buddy to join you

#### User journey: Search, join and book a workout then chat to buddy
<img width="200"  alt="book workout and chat to buddy gif" src="https://user-images.githubusercontent.com/53523467/228527806-781a4814-c873-4f74-93e4-77df509db708.gif">

#### Map search
<img width="200"  alt="map search gif" src="https://user-images.githubusercontent.com/53523467/228523851-66c13c91-fc55-4efb-8807-5485cbf61f46.gif">

#### Leave rating on past workout
<img width="200"  alt="map search gif" src="https://user-images.githubusercontent.com/53523467/228528928-ef1ca586-f113-4843-8866-b4df0aab5c1b.gif">


### Database schema
<img width="646" alt="let's go database schema" src="https://user-images.githubusercontent.com/53523467/228519528-2d2fa676-62d2-4d19-ae9d-42ebe8247f95.png">


### Tech stack

Let's Go was designed for a mobile-first experience for users.

Frameworks & libraries used to make Let's Go
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

<img width="602" alt="Team photo" src="https://user-images.githubusercontent.com/53523467/228519708-bf9648ee-7f95-41ee-ae2d-0b4f0cf126e9.png">

<p align="right">(<a href="#top">back to top</a>)</p>

<p align="center">
  <img src="https://visitor-badge.laobi.icu/badge?page_id=kwynneellis/lets-go" id="counter">
</p>
