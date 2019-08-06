
web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
console.log(web3.currentProvider);

//var profesorContract = web3.eth.contract([{"constant":false,"inputs":[],"name":"Professor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_fname","type":"string"},{"name":"_lname","type":"string"},{"name":"_id","type":"uint256"}],"name":"setProfessor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":false,"name":"firstname","type":"string"},{"indexed":false,"name":"lastname","type":"string"},{"indexed":false,"name":"collegeid","type":"uint256"}],"name":"ProfessorEv","type":"event"}]);

abi = JSON.parse('[{"constant":false,"inputs":[],"name":"Professor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_fname","type":"string"},{"name":"_lname","type":"string"},{"name":"_id","type":"uint256"}],"name":"setProfessor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":false,"name":"firstname","type":"string"},{"indexed":false,"name":"lastname","type":"string"},{"indexed":false,"name":"collegeid","type":"uint256"}],"name":"ProfessorEv","type":"event"}]');
var ProfContract = web3.eth.contract(abi);
contractInstance = ProfContract.at('0x51b666962135943266757af912c05e3f161c9d9d');


$(document).ready(function() {

contractInstance.ProfessorEv().watch(function(error, result){
  	  	if (!error){
  			console.log(result.args.firstname);
  			console.log(result.args.lastname);
  			console.log(result.args.collegeid);
  		} else {
  			console.log(error);
          }
      });
      
      window.addEventListener('load', function () {
        if (typeof web3 !== 'undefined') {
            console.log('Web3 Detected! ' + web3.currentProvider.constructor.name)
            window.web3 = new Web3(web3.currentProvider);
        } else {
            console.log('No Web3 Detected... using HTTP Provider')
            window.web3 = new Web3(new Web3.providers.HttpProvider("https://mainnet.infura.io/<APIKEY>"));
        }
    })

    $("#button").click(function() {
		contractInstance.setProfessor('Billy','Luy',1234, {from: web3.eth.accounts[0]}, function() {
  		});
    });

});