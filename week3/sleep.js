/*function shout(){
	console.log('Aaaaaah');
}

setTimeout(shout, 1000);

function sleep(time, callback){
	setTimeout(callback, time*1000);
}

sleep(10, function(){
	console.log('it´s been 10 seconds');
})


function test(){
	var x = 1;
	function test2(){
		var x = 2;
		return x;
	}; return x;
}

console.log(test());

var x = 5;
function oneAndAHalf(){
	var x = 1;
	console.log(x);
};
oneAndAHalf();
console.log(x);
*/

var x = 5;
function three(){
	console.log(x);
}

function four(){
	 x = 4;
	console.log(x);
};

four();
three();


// function five(){
// 	var y = 5;
// 	console.log(y);
// }

// five();
// console.log(y);


