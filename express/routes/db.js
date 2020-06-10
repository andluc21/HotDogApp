const express = require('express');
//const bodyParser = require('body-parser');
//const expressValidator = reqire('express-validator');
const app = express();
const router = express.Router();

/**
 * TODO:
 * Find some way to make it so only validated vendors and admins can access this page
 * reject any unauth access
*/
/*
app.use(bodyParser.json());
app.use(expressValidator());
app.use('/api',router);
*/



const getter = require('../db')
router.use('/', getter);

module.exports = router;