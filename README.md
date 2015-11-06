# to_array
This gem convert from String which follow Array format to collectively ArrayClass.  
You can revert string which was converted by 'to_str' method.

## How to Install
~~~~
gem install to_array
~~~~

## Usage
You can convert by 'to_array' method.
~~~~
arr = ['foo', 'bar', 'fizz', 'bazz']
str = arr.to_str


str => "[\"foo\", \"bar\", \"fizz\", \"bazz\"]"
str.class => String
str.size => 30

str.to_array => ['foo', 'bar', 'fizz', 'bazz']
str.to_array.class => Array
str.to_array.size => 4
~~~~

## Contributing

If you would like to contribute, please...

1. Fork.
2. Make changes in a branch & add unit tests.
3. Run Unit Test
~~~~
$ rspec spec/to_array_spec.rb
~~~~
4. Create a pull request.

Contributions, improvements, comments and suggestions are welcome!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
