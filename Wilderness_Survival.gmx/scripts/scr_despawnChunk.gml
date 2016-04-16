///scr_spawnChunk();
var i = 0;
repeat(foliageAmount + 1){
    with(foliageArray[i, 3]){
        instance_destroy();
        other.foliageArray[i, 3] = -4;
    }
    i++;
}  
