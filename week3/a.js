var words;

words = ['dead', 'bygone', 'landing', 'cheaply', 'assumed', 'incorrectly', 'attention', 'agent'];

function decoder(array){
	result = "";
	index = 0;

	array.forEach(function(word){
		result += word[index];
		index ++;
		if (index === 5){
				index = 0;
			} 
		});
	return result
}
message = decoder(words);
console.log(message);


/*function super_decoder(sentence){
	//backwards:
	result = "";
	index = 0;

	var arrayBackwards = sentence.split(" ").reverse();
		arrayBackwards.forEach(function(word){
				//if ( index % 2 == 0){
				result += word[index];
				index = (index + 1) % 5;
			}); return result 
		} 


var sentence = "fill the proper tank for the cow"
console.log(super_decoder(sentence));

*/
function super_decoder(sentence){
	//backwards:
	result = "";
	index = 0;

	var arrayBackwards = sentence.split(" ").reverse();
		
		arrayBackwards.forEach(function(word){
				if ( index % 2 == 0){
				result += word[index];
				index = (index + 1) % 5;
			} 
		}); return result
}


var sentence = "fill the proper tank for the cow"
console.log(super_decoder(sentence));

