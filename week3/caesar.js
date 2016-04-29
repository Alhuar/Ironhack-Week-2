function caesarCipher (message) {
   	messageArray = message.split("");
   	var string = "";
    for (i = 0; i < messageArray.length; i++) {
    		var encoded = (messageArray[i].charCodeAt(0));
	    		if ((encoded >= 65 && encoded <= 97 ) || (encoded >= 97 && encoded <= 122)) {
	    			string += String.fromCharCode(encoded - 3);
	    		} else {string += messageArray[i];
    		}
    	}
    return string;   		
}
   


var encrypted = caesarCipher("brutus");
var encrypted2 = caesarCipher("Et tu, brute?");

console.log(encrypted);
console.log(encrypted2);


//=> "_orqrp"
//=> "Bq qr, _orqb?"
/*
function caesarCipher (message) {
   	messageArray = message.split("");
   	var string = "";
    for (i = 0; i < messageArray.length; i++) {
    		var encoded = (messageArray[i].charCodeAt(0));
    		if (encoded >= 65 && encoded =< 97){
    			string += " "
    		} else {string += String.fromCharCode(encoded - 3);
    	}
    }
	return string;   		
}

*/