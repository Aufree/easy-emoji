# easy-emoji

easy-emoji give you a simple way to use emoji in your project.

## Features
* Auto complete emoji keywork when you are typing it on text area.
* one-line-code to generate images for emoji.
* Support turbolinks and pjax
* Easy to use.

## Installation

Add this line to your application's Gemfile:

    gem 'easy-emoji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy-emoji

## Usage

You basically have to add the requires to the `application.js` file:

```javascript
//= require easy-emoji
//= require emoji-turbolinks
```
The `emoji-turbolinks` is required only if you use turbolinks. Using pjax rather than turbolinks? Simply require `emoji-pjax` instead, Otherwise, use require `emoji-normal` instead.

Also, into your `application.css` file:

```css
/*
 *= require easy-emoji
 */
 ```

Something we need to do to generate images for emoji.

Just like this:

Into your `Rakefile` file:

``` ruby
load 'tasks/emoji.rake'
```
And then execute:

```
$ rake emoji
```

Now type in an emoji keyword in your HTML, for example:

	easy-emoji is really easy-to-use. :smile:

It will show you some good stuff.

You can see the [Emoji cheat sheet](http://www.emoji-cheat-sheet.com) for more examples.

## Plugins

easy-emoji contains two plugins, That's mean you can custom configuration.

### [Emojify](https://github.com/hassankhan/emojify.js)
A Javascript module to convert Emoji keywords to images.

### [textcomplete](https://github.com/yuku-t/jquery-textcomplete)
Introduces autocompleting power to textareas, like a GitHub comment form has.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
