import express from "express";

import{
    getAllSupplier,
    getSupplierBySupplierId
} from '../controllers/supplierController.js';

const router = express.Router();

router.get('/' , getAllSupplier);
router.get('/:id' , getSupplierBySupplierId);

export default router;

