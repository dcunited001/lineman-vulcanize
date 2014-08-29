module.exports = (lineman) ->
  app = lineman.config.application

  config:
    loadNpmTasks: lineman.config.application.loadNpmTasks.concat("grunt-vulcanize")
    prependTasks: lineman.config.application.prependTasks.common.concat("vulcanize")

    vulcanize:
      options:
        csp: false
        inline: false
        strip: false
        exports:
          imports: []
          scripts: []
          styles: []

    watch:
      vulcanize:
        files: ["app/vulcanize/**.html"]
        tasks: ["vulcanize"]

  files:
    vulcanize:
      src: "app/vulcanize/build.html"
      dest: "generated/vulcanize/build.html"
