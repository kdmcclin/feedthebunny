# Feed the Bunny

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