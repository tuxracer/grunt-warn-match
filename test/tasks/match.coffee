###
grunt-warn-match
http://gruntjs.com/

Copyright (c) 2013 Derek Petersen
Licensed under the MIT license.
###

module.exports = (grunt) ->
  grunt.registerMultiTask 'match', 'Warn about files containing the specified string', ->
    matches = []
    options = @options()
    logMethod = if options.fail then grunt.fail.warn else grunt.log.subhead

    @filesSrc.forEach (filepath) =>
      if grunt.file.read(filepath).match(options.str)
        grunt.log.warn filepath
        matches.push filepath

    if matches.length
      logMethod "#{matches.length} file(s) match #{options.str}"
