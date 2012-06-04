# String::IRC

String::IRC is a module to IRC-friendlily colorize text.

## Installation

Add this line to your application's Gemfile:

    gem 'string-irc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string-irc

## Usage

### Use String::IRC module

    require 'string/irc'

    Strint::IRC.colorize 'Hello', :white, :red
    #=> Text whose foreground color is white and background color is red

    Strint::IRC.colorize 'Hello', :red
    #=> Text whose foreground color is red and background color is not designated

    Strint::IRC.colorize 'Hello', nil, :red
    #=> Nothing changes.

    Strint::IRC.bold 'Hello'
    #=> Makes the text bold.

    Strint::IRC.underline 'Hello'
    #=> Makes the text underlined.

    Strint::IRC.italic 'Hello'
    #=> Makes the text italic.

### Use String extension

    require 'string/irc/core_ext/string'

    'Hello'.irc_colorize :white, :red
    #=> Same as above.

    'Hello'.irc_bold
    #=> Same as above.

    'Hello'.irc_underline
    #=> Same as above.

    'Hello'.irc_italic
    #=> Same as above.

### Supported Colors

- white
- black
- blue
- navy
- green
- red
- brown
- maroon
- purple
- orange
- olive
- yellow
- light
- green
- lime
- teal
- light_cyan
- cyan
- aqua
- light_blue
- royal
- pink
- light_purple
- fuchsia
- grey
- light_grey
- silver

## See Also

- [mIRC Colors](http://www.mirc.co.uk/colors.html)
- [IRC Hacks: Hack #21 - Format Text](http://oreilly.com/pub/h/1953)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
