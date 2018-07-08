# Feed the Bunny

## Visit it on Heroku
<a href="http://feedthebunny.herokuapp.com/" target="_blank"><img src="http://media.tumblr.com/94b2e1e37201807c3814b6e6367810b5/tumblr_inline_nkasrcuJQX1r2z94x.jpg" alt="App Screenshot"></img></a>

## Purpose

Feed the Bunny is a simple app that provides short random writing prompts to spark the imagination.  In its first stage it provided a random single prompt from any category.  Now it includes random prompts from a specific category (e.g.: holiday, drama, poetry).

If you want to contribute prompts to the app, please use the Google Forms link provided in the footer.

## Installation

Feed the Bunny has a Rails backend.  To set up:

```
git clone https://github.com/kdmcclin/feedthebunny.git
```

Run bundle:

```
bundle install
```
**Note**: If you're using a Windows development environment you may need to alter the tzinfo gem to cover your operating system.  This gem is unnecessary for non-Windows users.

Start the server:

```
rails s
```
## Future Plans
* Add non-fiction writing prompts
* Add admin ability to create new categories in production
    - Add an art category
* Add database backups
* Alphabetically sort category index list
* Upgrade foundation for new styling
* Upgrade rails for security vulnerabilities
* Add check for similar prompt when creating a new one
* Upgrade Heroku stack
* Improve test coverage
