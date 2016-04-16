///scr_spawnChunk
var a = 0;
repeat(foliageAmount + 1){
    foliageArray[a, 3] = instance_create(x + foliageArray[a, 1], y + foliageArray[a, 2], foliageArray[a, 0]);  
    a++;
}     
