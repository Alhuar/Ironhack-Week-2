function testClosure(){
	var x = 4;
	function closeX(){
		return x;
	}
	return closeX;
}

var checkLocalX = testClosure();
console.log(checkLocalX());