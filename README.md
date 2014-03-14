 
# SimpleToFixture

Adds a Model.to_fixture('one') to any ActiveRecord model, which 
automatically creates and appends to fixture files for quick 
testing of a real model.  

Very handy for testing a new business problem or scenario, with
a sample record that is having the problem.

## Installation

Add this line to your application's Gemfile:

    gem 'simple_to_fixture'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_to_fixture

## Usage

order = order.find(123)

order.to_fixture('test_order_one')

- This creates or adds to a fixtures file, in your /test/fixtures folder


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
=======
simple_to_fixture-1.0.0
=======================

Simple ActiveRecord fixture creator
 
