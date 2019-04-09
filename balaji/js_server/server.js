const express = require('express');
var cors = require('cors')
const app = express();
var bodyParser = require('body-parser');
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies

app.use(cors())
app.get('/add', (req, res) => {

	var num1=req.query.num1;
	num1=Number(num1);

	var num2=req.query.num2;
    num2=Number(num2);

    res.send({
    	'result':num2+num1
    });
});
app.get('/subtract', (req, res) => {

    var num1=req.query.num1;
    num1=Number(num1);

    var num2=req.query.num2;
    num2=Number(num2);

    res.send({
        'result':num2-num1
    });
});

app.get('/multiply', (req, res) => {

    var num1=req.query.num1;
    num1=Number(num1);

    var num2=req.query.num2;
    num2=Number(num2);

    res.send({
        'nagaraj_result':num2*num1
    });
});
app.post('/greatest_square', (req, res) => {

	var num1=req.body.num1;
	num1=Number(num1);

	var num2=req.body.num2;
    num2=Number(num2);

    res.send({
    	'result':myGreatestSquare(num1,num2)
    });
});


function myGreatestSquare(num1,num2){
	return (num1>num2)?num1*num1:num2*num2;
}



app.listen(3000, () => console.log('Server app listening on port 3000!'));