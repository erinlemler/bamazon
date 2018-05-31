var mysql = require("mysql");
var inquirer = require("inquirer")

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
   
    displayProducts();
});

function displayProducts(){
    connection.query("SELECT * FROM products", function (err, results) {
        console.log(results);
    });
}


function start() {

    inquirer.prompt
            ({
                type: 'input',
                name: 'item',
                message: "What is the number id of the product you would like to buy?"

            }).then(function(res){
                connection.query("SELECT * FROM products", function(err, results){
                    console.log(results);
                });

            });

}

function placeOrder(){
    inquirer.prompt
        ({
            type: 'input',
            name: 'item',
            message: "How many of the units do you want to buy?"

        }).then(function (res) {
            connection.query("SELECT * FROM products", function (err, results) {
                console.log(results);
            })

        })
}

//         OrderQuantity: [
//             {
//                 type: 'input',
//                 name: 'quantity',
//                 message: "How many units of the product would you like to buy?"
//             }],

//     }
//     displayTable()
//     inquirer.prompt(messages.itemNumber).then(function (answers) {
//         console.log(answers)
//     })
// }

// function start() {
//     displayTable()
//     inquirer.prompt(messages.OrderQuantity).then(function (answers) {
//         console.log(answers)
//     })
// }

// function displayTable() {
//     connection.query("SELECT * FROM products", function (err, results) {
//         if (err) throw err;
//         console.log(results)
// }
//     )}
