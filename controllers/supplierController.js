// ไฟล์ที่จัดการกับข้อมูลใน table ใน database ใช้คู่กับไฟล์ประเภท models
import Supplier from "./../models/supplierModel.js";

export const getAllSupplier = async(req ,res)=>{
    try{
        // คำสั่งไปเอาข้อมูลทั้งหมดจากตาราง 
        const supplier = await Supplier.findAll();
        res.json(supplier);
    }catch(error){
        res.json({message: error.message});
    }
}

export const getSupplierBySupplierId = async(req ,res)=>{
    try{
        // คำสั่งไปเอาข้อมูลจากตารางด้วยเงื่อนไขที่กำหนด
        const supplier = await Supplier.findAll({
            where:{
                id: req.params.id
            }
        });
        res.json(supplier[0]);
    }catch(error){
        res.json({message: error.message});
    }
}