# Feed the Bunny

##Visit it on Heroku
<a href="http://feedthebunny.herokuapp.com/" target="_blank"><img src="http://media.tumblr.com/94b2e1e37201807c3814b6e6367810b5/tumblr_inline_nkasrcuJQX1r2z94x.jpg" alt="App Screenshot"></img></a>

## Purpose

Feed the Bunny is a simple app that provides short random writing prompts to spark the imagination.  At this stage it provides a random single prompt from any category, but future plans include random prompts from a specific category (e.g.: holiday, drama, poetry) as well as combination prompts.

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