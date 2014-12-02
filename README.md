# Logcamp

[![Build Status](https://semaphoreapp.com/api/v1/projects/0d7ed887-f4de-410c-a678-eb47c9c66aa8/275246/shields_badge.svg)](https://semaphoreapp.com/olimart/logcamp-ruby)

Simple ruby gem for communicating with external API. Heavily inspired by stripe gem.

## Installation

Add this line to your application's Gemfile:

    gem 'logcamp-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logcamp-ruby

## Usage

1. Sign up and create an app.

In your project, initialize your app.

1. Set token

```ruby
Logcamp.token = ENV['LOGCAMP_TOKEN']
```

2. Send event

```ruby
Logcamp::Event.create(
  status: 'event status',
  message: 'notification message',
  alert: true,
  metadata: {
    key1: value1,
    key2: value2
  }
)
```

**For Sinatra app** you may need to add `require 'bundler/setup'`


## Tests

```ruby
rake test
```
