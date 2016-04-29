var animal = {
	name: 'Shadow',
	noise: 'Brrr',

	shout: function(){
		console.log('moooo');
	},
	makeNoise: function(){
		console.log(this.noise + '!!!!!')
	}
}

var Animal = function() {
	this.name = 'Buk';
	this.noise = 'Brrrrr';
	this.makenoise = function(){
		console.log(this.noise + '!!!!!');
	}
};

var Car = function(model, noise){
	this.model = model;
	this.noise = noise;
	

}

Car.prototype.wheels = 4;
Car.prototype.makeNoise = function(){
		console.log(this.noise)
};

var car = new Car('Camaro', 'Brrrrrrm');
car.makeNoise();


console.log('Model: '+ car.model)
console.log('Noise: '+ car.noise)
console.log('# of wheels: '+ car.wheels)