var foods = ['pizza', 'pasta', 'burger'];

var base = foods.reduce(function (pre, food) {
	return pre + " and " + food;
});

console.log(base);

var numbers = '80:70:90:100';

function averageColon(num){
	var arrayNumbers = num.split(":");
	var result = 0;
	arrayNumbers.forEach(function(i){
	result += parseInt(i);
});
	return result / arrayNumbers.length
}

console.log(averageColon(numbers));