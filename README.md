# Logcamp::Ruby

Simple gem for communicating with external API. Heavily inspired by stripe gem.

## Installation

Add this line to your application's Gemfile:

    gem 'logcamp-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logcamp-ruby

## Usage

In your app

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
