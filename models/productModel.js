// ไฟล์ที่ทำงานคู่กับ table ใน database
import { Sequelize } from "sequelize";
import dbconnect from "./../config/dbconnect.js";

const { DataTypes } = Sequelize;

const Product = dbconnect.define("product_tb" , {
    productName:{
        type: DataTypes.STRING
    },
    productPrice:{
        type: DataTypes.DOUBLE
    },
    productQuantity:{
        type: DataTypes.INTEGER
    },
    productOutofOrder:{
        type: DataTypes.INTEGER
    }
},{
    freezeTableName:true,
});

export default Product;

(async()=>{
    await dbconnect.sync()
})()

