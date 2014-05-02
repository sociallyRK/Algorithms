function palindrome(string) {
		for (var i=0; i<string.length/2; i++) {
	  	if string[0] != string[-1]
	  		return false
	  	else palindrome(string[0..string.length[-1]])
	  	end;
		};
		return true
};
palindrome("abccba")


var myGreeter = {
		name: "john doe",
		greet: function(){
			console.log("My name is ", myGreeter.name )
		}
	}

