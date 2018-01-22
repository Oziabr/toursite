{exec} = require 'child_process'

run = (cmd) ->
  exec cmd, (err, stdout, stderr) ->
    throw err if err
    console.log "stdout: #{stdout}" if stdout
    console.log "stderr: #{stderr}" if stderr

task 'assemble', 'assemble assets from node packages', (options) ->
  run 'mkdir -p demo/css/images'
  run 'mkdir -p demo/js'
  run 'mkdir -p demo/images'

  run 'cp node_modules/bootstrap/dist/css/bootstrap.css demo/css'
  run 'cp node_modules/font-awesome/css/font-awesome.css demo/css'
  run 'cp -r node_modules/font-awesome/fonts demo'
  run 'cp node_modules/animate.css/animate.css demo/css'
  run 'cp node_modules/select2/dist/css/select2.css demo/css'
  run 'cp src/assets/*.css demo/css'

  run 'cp node_modules/jquery/dist/jquery.js demo/js'
  run 'cp node_modules/jquery-ui-dist/jquery-ui.js demo/js'
  run 'cp node_modules/jquery-migrate/dist/jquery-migrate.js demo/js'
  run 'cp node_modules/jquery.easing/jquery.easing.js demo/js'
  run 'cp node_modules/superfish/dist/js/superfish.js demo/js'
  run 'cp node_modules/select2/dist/js/select2.js demo/js'
  run 'cp node_modules/jquery.appear/jquery.appear.js demo/js'
  run 'cp node_modules/caroufredsel/jquery.carouFredSel-6.2.1.js demo/js'
  run 'cp node_modules/jquery-touchswipe/jquery.touchSwipe.js demo/js'
  run 'cp node_modules/bootstrap/dist/js/bootstrap.js demo/js'
  run 'cp src/assets/*.js demo/js'

  run 'cp src/assets/*.png demo/images'
  run 'cp src/assets/*.jpg demo/images'
  run 'cp src/assets/css/* demo/css/images'

task 'compile', 'compile pug templates into html', (options) ->
  run '''cd src/mixins; find . -type f | grep -v index | awk '{print "include " $1}' > index.pug'''
  run 'pug src/index.pug -o demo --pretty'
  
task 'up', 'run preview', (options) ->
  invoke 'assemble'
  invoke 'compile'
  run 'npm start'
  console.log "\x1b[33mcheck preview at \x1b[1m\x1b[33mhttps://toursite-oziabr.c9users.io\x1b[0m\n"