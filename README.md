# PolymerForm

Very Super Mega Alpha Stage 
This Gem would like to provide Polymer FormHelpers for Rails

## Installation

Add this line to your application's Gemfile:

    gem 'polymer-rails', '~> 1.0'
    gem 'polymer-elements-rails'
    gem 'polymer_form'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polymer_form

## Components Provided

* paper_input
* paper_textarea

## Usage

    = polymer_form_for User.new do |f|
      = f.paper_input :first_name, label: 'First Name'
      = f.paper_input :last_name, label: 'Last Name'
      = f.paper_textarea :description, label: 'Description'

## Contributing

1. Fork it ( https://github.com/[my-github-username]/polymer_form/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
