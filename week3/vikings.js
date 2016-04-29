var Viking = function(name, strength, health) {
	this.name = name;
	this.strength = strength;
	this.health = health;
}

Viking.prototype.attack = function(){
	var damage = Math.floor(this.strength * Math.random());
	return damage;
}


var Pit = function(viking1, viking2){
	this.turns = 10;
	this.fight = function() {
		var attackViking1 = viking1.attack();
		var attackViking2 = viking2.attack();
		var continueBattle = true;


		this.endBattle = function(){
				console.log('End of this glorious battle. A contender surrendered.')
		 		console.log(viking1.name +' finished with '+ viking1.health +'.');
		 		console.log(viking2.name +' finished with '+ viking2.health +'.');
		 		continueBattle = false;
		};
		
		var i = 0;
		while (i < this.turns && (viking1.health > 0 && viking2.health > 0) && continueBattle) {
			if ((viking1.health - attackViking2) > 0 && (viking2.health - attackViking1) > 0) {
					viking2.health -= attackViking1;
					viking1.health -= attackViking2;
					console.log('OORAY for ' + viking1.name + '. He still has ' +  viking1.health + ' health.');
					console.log('OORAY for ' + viking2.name + '. He still has ' +  viking2.health + ' health.');
					console.log('#############################');	
			} else {
				this.endBattle();
			}

			i++;
		}
	}
};


var alfon = new Viking('Alfon', 50, 100);
var jorge = new Viking('Jorge', 41, 100);
var pit1 = new Pit(alfon, jorge);
pit1.fight();