const Product = require('../models/product')

const getAllProducts = async (req, res) => {
    const products = await Product.find().sort({name: 1})
    res.status(200).json({products})
}

const getProductsByName = async (req, res) => {
    const nameQuery = req.query.name 
    const products = await Product.find({ name: { $regex: new RegExp(nameQuery, "i") } }).sort({name: 1})
    res.status(200).json({products})
}

const getProductsByPrice = async (req, res) => {
    const highestQuery = req.query.highest ?? Number.MAX_VALUE;
    const lowestQuery = req.query.lowest ?? 0;
    
    const products = await Product.find({$and: [{price: {$gte: lowestQuery}}, {price: {$lte: highestQuery}}]}).sort({price: 1})
    res.status(200).json({products})
}

const getProductsByFeatured = async (req, res) => {
    const featuredQuery = req.query.featured 
    const products = await Product.find({ featured: featuredQuery}).sort({name: 1})
    res.status(200).json({products})
}

const getProductsByRating = async (req, res) => {
    const ratingQuery = req.query.rating 
    const products = await Product.find({ rating: {$gte: ratingQuery} }).sort({name: 1})
    res.status(200).json({products})
}

const getProductsByCompany = async (req, res) => {
    const companyQuery = req.query.company 
    const products = await Product.find({ company: { $regex: new RegExp(companyQuery, "i") } }).sort({name: 1})
    res.status(200).json({products})
}


module.exports = {getProductsByFeatured, getAllProducts, getProductsByCompany, getProductsByRating, getProductsByPrice, getProductsByName}

