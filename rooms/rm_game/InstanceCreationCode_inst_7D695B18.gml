// [waves,type, spawnpoint, delay]

waves = ds_list_create();
ds_list_add(waves,[0,oSlimeEnemy,0,0]);
ds_list_add(waves,[0,oSlimeEnemy,1,50]);
ds_list_add(waves,[0,oSlimeEnemy,0,10]);
ds_list_add(waves,[0,oSlimeEnemy,1,0]);
ds_list_add(waves,[0,oSlimeEnemy,1,10]);
ds_list_add(waves,[0,oSlimeEnemy,0,30]);

ds_list_add(waves,[1,oSlimeEnemy,0,0]);
ds_list_add(waves,[1,oSlimeEnemy,0,10]);
ds_list_add(waves,[1,oSlimeEnemy,0,20]);
ds_list_add(waves,[1,oSlimeEnemy,0,30]);
ds_list_add(waves,[1,oSlimeEnemy,0,40]);
ds_list_add(waves,[1,oSlimeEnemy,0,50]);

ds_list_add(waves,[2,oSlimeEnemy,1,0]);
ds_list_add(waves,[2,oSlimeEnemy,0,10]);
ds_list_add(waves,[2,oSlimeEnemy,1,20]);
ds_list_add(waves,[2,oSlimeEnemy,0,30]);
ds_list_add(waves,[2,oSlimeEnemy,1,40]);
ds_list_add(waves,[2,oSlimeEnemy,0,50]);

ds_list_add(waves,[3,oSlimeEnemy,0,0]);
ds_list_add(waves,[3,oSlimeEnemy,0,10]);
ds_list_add(waves,[3,oSlimeEnemy,0,20]);
ds_list_add(waves,[3,oSlimeEnemy,0,30]);
ds_list_add(waves,[3,oSlimeEnemy,1,40]);
ds_list_add(waves,[3,oSlimeEnemy,0,50]);

spawn[0,0] = 26811;
spawn[0,1] = 1223;
spawn[1,0] = 27363;
spawn[1,1] = 1023;