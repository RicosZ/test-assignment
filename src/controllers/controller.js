const client = require('../config/dbpsg');


class Controller {
    static async getProduct(req, res) {
        const { gender, style, size, limit = 10, page = 1 } = req.query;
        let offset;
        if (page > 1) {
            offset = (page - 1) * limit;
        } else {
            offset = 0;
        }
        console.log(style);
        const query = `select * from product.product 
                            where "Gender"='${gender}' OR "Style"='${style}' OR "Size"='${size}' 
                            LIMIT '${limit}' OFFSET '${offset}'`;
        client.query(query, (err, result) => {
            if (!err) {
                return res.json({ productList: result.rows })
            }
            else { console.log(err.message) }
        })

    }

    static async addProduct(req, res) {
        const { gender, style, size, price } = req.body;
        const insertQuery = `insert into product.product("Gender","Style","Size","Price") 
                                values('${gender}', '${style}', '${size}', '${price}')`;
        client.query(insertQuery, (err, result) => {
            if (!err) {
                return res.send('Insertion was successful')
            }
            else { console.log(err.message) }
        })

    }

}

module.exports = Controller;
