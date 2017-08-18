# jp_strings_finder

jp_strings_finder is an i18n util for your Japanese project which expected to get translated to other languages.

It searchs for Japanese strings in a directory or a file and reports the results like:

```
$ jp_strings_finder app/

+--------------------------------------------+------+------------------------------------------------+
| File                                       | Type | Strings                                        |
+--------------------------------------------+------+------------------------------------------------+
| controllers/books_controller.rb            | RUBY | 本を書いました                                 |
+--------------------------------------------+------+------------------------------------------------+
| views/books/index.slim                     | SLIM | 本の一覧ですほげ                               |
|                                            |      | 次のページを見る                               |
+--------------------------------------------+------+------------------------------------------------+
There are 3 Japanese strings in 2 files
```

jp_strings_finder currently supports the below file types:

- Ruby (`.rb`)
- ERB (`.erb`)
- Slim (`.slim`)

It fails with status code `-1` when at least 1 Japanese string is found, so it can also be used in your test.

## Usage

### Specifying a single file

Specifying a single file searchs for Japanese strings in the file:

```
$ jp_strings_finder app/views/books/index.slim
```

### Specifying a directory

Specifying a directory recursively searchs for Japanese strings in the directory:

```
$ jp_strings_finder app/views/
```

In both cases, files with not supported filetype are ignore with the below message:

```
Unsupported filetype [app/views/books/books.csv]
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jp_strings_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jp_strings_finder

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
