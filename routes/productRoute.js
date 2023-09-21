import express from "express";

import{
    getAllProduct,
    getProductByProductId
} from '../controllers/productController.js';

const router = express.Router();

router.get('/' , getAllProduct);
router.get('/:id' , getProductByProductId);

export default router;

