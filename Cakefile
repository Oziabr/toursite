{exec} = require 'child_process'

run = (cmd) ->
  exec cmd, (err, stdout, stderr) ->
    throw err if err
    console.log "stdout: #{stdout}" if stdout
    console.log "stderr: #{stderr}" if stderr

task 'assemble', 'assemble assets from node packages', (options) ->

task 'compile', 'compile pug templates into html', (options) ->
  run '''cd src/mixins; find . -type f | grep -v index | awk '{print "include " $1}' > index.pug'''
  run 'pug src/index.pug -o demo --pretty'