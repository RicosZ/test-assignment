const express = require('express');
const router = express.Router();
const controller = require('../controllers/controller');


router.get('/show',controller.getProduct);
router.post('/add',controller.addProduct);

module.exports = router;
