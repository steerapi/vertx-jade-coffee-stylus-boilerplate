load "vertx.js"

vertx.deployModule "vertx.web-server-v1.0",
  web_root:"web"
  port: 8080
  bridge: true
  inbound_permitted: [{}]
  outbound_permitted: [{}]
