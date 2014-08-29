module.exports = (lineman) ->
  app = lineman.config.application

  config:
    loadNpmTasks: app.loadNpmTasks.concat("grunt-vulcanize")

    vulcanize:
      options:
        csp: false
        inline: false
        strip: false
        exports:
          imports: []

    watch:
      vulcanize:
        files: []
        tasks: []

  files:
    vulcanize:
      'build.html': 'index.html'
