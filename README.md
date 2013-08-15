# grunt-warn-match

> Warn if files contain a match for a specified string

## Getting Started
This plugin requires Grunt `~0.4.1`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-warn-match --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile.coffee with this line of CoffeeScript:

```coffeescript
grunt.loadNpmTasks 'grunt-warn-match'
```

## The "match" task

### Overview
In your project's Gruntfile, add a section named `match` to the data object passed into `grunt.initConfig()`.

```coffeescript
grunt.initConfig
  match:
    files:
      src: ['app/**/*.coffee']
    options:
      str: 'debugger'
      fail: false
```

### Options

#### options.separator
Type: `String`
Default value: `',  '`

A string value that is used to do something with whatever.

#### options.punctuation
Type: `String`
Default value: `'.'`

A string value that is used to do something else with whatever else.

### Usage Examples

#### Default Options
In this example, the default options are used to warn if the match is found

```coffeescript
grunt.initConfig
  match:
    files:
      src: ['app/**/*.coffee']
    options:
      str: 'debugger'
      fail: false
```

#### Custom Options
In this example, custom options are used to fail if the match is found

```coffeescript
grunt.initConfig
  match:
    files:
      src: ['app/**/*.coffee']
    options:
      str: 'debugger'
      fail: true
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).
