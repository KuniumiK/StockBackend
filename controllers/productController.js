// ไฟล์ที่จัดการกับข้อมูลใน table ใน database ใช้คู่กับไฟล์ประเภท models
import Product from "./../models/productModel.js";

export const getAllProduct = async(req ,res)=>{
    try{
        // คำสั่งไปเอาข้อมูลทั้งหมดจากตาราง 
        const product = await Product.findAll();
        res.json(product);
    }catch(error){
        res.json({message: error.message});
    }
}

export const getProductByProductId = async(req ,res)=>{
    try{
        // คำสั่งไปเอาข้อมูลจากตารางด้วยเงื่อนไขที่กำหนด
        const product = await Product.findAll({
            where:{
                id: req.params.id
            }
        });
        res.json(product[0]);
    }catch(error){
        res.json({message: error.message});
    }
}