///@description ProbChance(arg1, chance1, arg2, chance2, ...)

///@arg arg1 takes a value you want to return with probability chance.
///@arg chance1 takes the percentage chance this function will return arg1.
///@arg arg2 takes a value you want to return with probability chance.
///@arg chance2 takes the percentage chance this function will return arg2.
///@arg ...

var chance = random(100);
var cur_chance = 0;

for(var i = 0; i <= argument_count - 1; i += 2){
	var j = i + 1;
	cur_chance += argument[j];
	if(chance <= cur_chance){
		return argument[i];
	}
}

return argument[argument_count - 2];