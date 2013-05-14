var express = require("express");

var app = express();

app.post('/accounts', express.bodyParser(), function(req, res, err) {
  console.log("Creating a user named: "+req.body.name);
  if(req.body.name == "Todd") {
    res.send(500, "Oh no! Todd is already in use.");
  } else {
    res.send(201);
  }
});

console.log("Listening to requests on port 4567");
app.listen(4567);
