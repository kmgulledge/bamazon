// Being White Belt Node / Mysql Coding

// set variables / requires 
var mysql = require("mysql");
var inquirer = require("inquirer");

// create mysql connection
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon_db"
});

// start connection
connection.connect(function(err) {
    if (err) throw err;
    runSearch();
});

// start prompt
function runSearch() {
    inquirer.prompt({
        name: "action",
        type: "rawlist",
        message: "What would you like to purchase?",
        choices: [
            "Find Something To Buy",
            "Find Something To Sell"
        ]
    })
    then(function(answer) {
        switch (answer.action) {
            case "Find Something To Buy":
                buy();
                break;

            case "Find Something To Sell":
                sell();
                break;
        }
    });
}

// start buy prompt
function buy() {
    inquirer.prompt({
            name: "buy",
            type: "input",
            message: "What Would You Like To Purchase?"
        })
        .then(function(answer) {
            var query = "SELECT ItemID, ProductName, Price FROM Products";
            connection.query(query, { buy: answer.buy }, function(err, res) {
                for (var i = 0; i < res.length; i++) {
                    console.log("Item ID: " + res[i].ItemID + " || Product Name: " + res[i].ProductName + " || Price: " + res[i].Price);
                }
                runSearch();
            });
        });
}

// start purchase prompt
function sell() {
    inquirer.prompt({
            name: "sell",
            type: "input",
            message: "What Would You Like To Sell?"
        })
        .then(function(answer) {
            var query = "SELECT ItemID, ProductName, Price FROM Products";
            connection.query(query, { sell: answer.sell }, function(err, res) {
                for (var i = 0; i < res.length; i++) {
                    console.log("Item ID: " + res[i].ItemID + " || Product Name: " + res[i].ProductName + " || Price: " + res[i].Price);
                }
                runSearch();
            });
        });
}