express = require 'express'
app = do express

ip = process.env.IP
port =  process.env.PORT

app.use express.static 'demo'

app.listen process.env.PORT, process.env.IP, () =>
  console.log "started server at #{process.env.IP}:#{process.env.PORT}"