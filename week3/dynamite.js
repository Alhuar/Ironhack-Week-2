var words;

words = ['dead', 'bygone', 'landing', 'cheaply', 'assumed', 'incorrectly', 'attention', 'agent'];

function decoder(array){
	result = "";
	index = 0;
	array.forEach(function(word){
		result += word[index]
		index ++;
		if (index === 5){
			index = 0;
		}
	}); return result
}

message = decoder(words)
console.log(message);