/*
function checkInPassenger(name, customersArray){
	
	for (var i = 0; i < customersArray.length; i++){
		if (customersArray[i] == name) {
					return	function() {
				console.log( 'Hi,' + name + ' You´re passenger #' + (i + 1));		
			};
		}
	} 
}

var flightToBali = ['Wayan', 'Putu', 'Gede', 'Ni Luh', 'Nyoman'];
var counterCheckIn = checkInPassenger('Gede', flightToBali);
counterCheckIn();
*/

function checkInPassenger(name, customersArray) {
	function createPrinting(passenger_id) {
		return function() {
			console.log('Hi ' + name + ' You are passenger # ' + passenger_id + ' .');
		}
	}
	var result;
	for (var i = 0; i < customersArray.length; i++) {
		if (customersArray[i] == name) {
			result = createPrinting(i+1);
		}
	}
	return result;
}

var flightToBali = ['Wayan', 'Putu', 'Gede', 'Ni Luh', 'Nyoman'];
var counterCheckIn = checkInPassenger('Gede', flightToBali);
counterCheckIn();


/*
function ticketBuilder(transport) {
	var passengerNumber = 0;
	return function(name) {
		passengerNumber ++;
		console.log('Welcome, ' + name + '. Here is your ticket for the ' + transport + ' You are passenger #' + passengerNumber + ' .')
	}
}
var getPlaneTicket = ticketBuilder('plane');
var getTrainTicket = ticketBuilder('train');
getPlaneTicket('Jon Smith');
getPlaneTicket('Patty Bishop');
*/