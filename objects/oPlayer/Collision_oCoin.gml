// when I collide with oCoin, destroy coin and boost poins and coin count
instance_destroy(other);
global.coins +=1;
global.points +=100;
