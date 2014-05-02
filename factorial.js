function factorial(num) {
	var result = 1;
		for (var i=num; i>0; i--) {
	  var result = result * i;
		};
		return result;
};
factorial(4)
