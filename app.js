const express = require('express');
const route = require('./routes')
const path = require("path");

const app = express();

// app.use(express.static(path.join(__dirname, 'public')));


app.use(express.static('public'));
app.set("views", "./views");
app.set("view engine", "pug");

app.listen(process.env.PORT || 3000);

route(app)





