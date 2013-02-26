# Minuteman Rails

[![Code Climate](https://codeclimate.com/github/elcuervo/minuteman-rails.png)](https://codeclimate.com/github/elcuervo/minuteman-rails)
[![Build Status](https://secure.travis-ci.org/elcuervo/minuteman-rails.png?branch=master)](https://travis-ci.org/elcuervo/minuteman-rails)

Track everything in your Rails app using Minuteman

You can use it within your Controllers to track stuff:

This are the new toys you'll have: `track`, `events`, `analytics`.

## Installation

```bash
gem install minuteman-rails
```

## Initializer

```ruby

# Optional
# config/initializers/minuteman.rb

Minuteman::Rails.configure |c|
  c.silent = true
end
```

## Example

```ruby
class SomethingController < ApplicationController
  def create
    # Track an event as you would using Minuteman
    track("something:create", current_user.id) if current_user
  end

  def index
    # List all the events
    @current_events = events
  end

  def show
    # Access the analytics and make operations
    @group = analytics.month("something:create") - analytics.month("free:users")
  end
end
```
