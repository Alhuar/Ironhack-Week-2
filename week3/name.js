/*
var animal = {};
animal.cats = 15;
animal.rabbits = 12;
animal.dogs = 21;
animal.adoptADog = function() {
	dogs--;
	alert('A dog has been adopted!!');
}

console.log(animal);
animal.adoptADog;
console.log(animal);
*/
var myApp = (function(){
	var dogs = 21;
	var cats = 15;
	var rabbits = 12;
	my_public_object = {};
	my_public_object.adoptADog = function() {
			return dogs--;
			console.log('A dog has been adopted.');
		};
	my_public_object.showRabbits = function() {
			console.log("rabbits" + rabbits);
		};
		return my_public_object;
	})(); 


myApp.my_public_object;
