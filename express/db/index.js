const express = require('express');
const router = express.Router();
const getter = require('./getter')

router.get('/get/:type', async function(req, res, nex) {
    try{
        //let results = await getter.getBuns();
        let getType = req.params.type;
        //Pass this a table name and it will return a JSON of that table
        console.log("Attempting to fetch table " + getType);
        var results = await getter.get(getType);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
});

module.exports = router;