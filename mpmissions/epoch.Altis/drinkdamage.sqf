while {
    true
}
do {
    
    _damage = damage player;
	
    if(EPOCH_playerHunger < 100) then{
       _damage = _damage + 0.1;
	   if(_damage >= 1 )exitWith { player setDamage 1;};
       player setDamage _damage;
    }else{
	  EPOCH_playerHunger = EPOCH_playerHunger - 50;
	};
	if(EPOCH_playerThirst < 100) then{
       _damage = _damage + 0.1;
	   if(_damage >= 1 )exitWith { player setDamage 1;};
       player setDamage _damage;
    }else{
	  EPOCH_playerThirst = EPOCH_playerThirst - 25;
	};   
    sleep 300;
};