const express = require('express')
const router = express.Router()
const controller = require('../controllers/products')

router.route('/').get(controller.getAllProducts)
router.route('/name').get(controller.getProductsByName)
router.route('/price').get(controller.getProductsByPrice)
router.route('/rating').get(controller.getProductsByRating)
router.route('/company').get(controller.getProductsByCompany)
router.route('/featured').get(controller.getProductsByFeatured)

module.exports = router