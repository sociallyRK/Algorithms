function change(change_amount) {
    var numfives =Math.floor(change_amount / 5);
    var numthrees = Math.floor((change_amount - numfives * 5) / 3);
    var numones = Math.floor(change_amount - numfives * 5 - numthrees * 3); 
    var total_coins = numfives + numthrees + numones;
	console.log(numfives);
	console.log(numthrees);
	console.log(numones);	
  console.log(total_coins);
  
}
change(9);
change(18);
change(1);