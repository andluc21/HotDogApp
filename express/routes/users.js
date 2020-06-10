var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

/*
router.post(
  '/',
  userController.validate('createUser'),
  userController.createUser
);
*/

module.exports = router;
