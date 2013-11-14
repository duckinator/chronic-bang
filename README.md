# Chronic::Bang

This adds the `parse!` method to Chronic, which  raises a `Chronic::ParseError`
when `Chronic.parse` would return nil.

## Installation

Add this line to your application's Gemfile:

    gem 'chronic-bang'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chronic-bang

## Usage

This:

```ruby
require 'chronic'

start_date = Chronic.parse(ARGV.delete_at(0))
end_date   = Chronic.parse(ARGV.delete_at(0))

invalid =
  if start_date.nil? && (start_date_str.nil? || !start_date_str.empty?)
    start_date
  elsif end_date.nil? && (end_date_str.nil? || !end_date_str.empty?)
    end_date
  else
    nil
  end

if invalid
  $stderr.puts "#$0: could not parse date: #{invalid}"
  exit
end
```

Can become this:

```ruby
require 'chronic/bang'

begin
  start_date = Chronic.parse(ARGV.delete_at(0))
  end_date   = Chronic.parse(ARGV.delete_at(0))
rescue Chronic::ParseError => e
  $stderr.puts "#$0: #{e.message}"
  exit 1
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
