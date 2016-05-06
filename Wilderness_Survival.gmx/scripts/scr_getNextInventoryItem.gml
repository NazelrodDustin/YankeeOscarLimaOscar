///getNextInventoryItem(axis ("x"/"y"), my ID, direction ("positive"/"negative"), backpack width, backpack height)

axis = argument0;
caller = argument1;
movementDirection = argument2;
backpackWidth = argument3; 
backpackHeight = argument4;

currentPositionX = caller.posX;
currentPositionY = caller.posY;
found = false;

var invString = scr_findString(caller.posX, caller.posY, true);
show_debug_message(string(invString));

if (invString != "empty" && invString != "taken by"){
    if (movementDirection == "positive"){
        if (axis == "x"){
            var row;
            for(row = 0; row < invSlot[currentPositionX, currentPositionY].invSpaceTall; row++;){               
                if (!found){
                    var col;
                    for(col = 1; col < (backpackWidth - currentPositionX); col++;){
                        var invString = scr_findString(col + currentPositionX, row + currentPositionY, true);
                        if (invString != "empty" && invString != "taken by"){
                            caller.posX = col + currentPositionX;
                            caller.posY = row + currentPositionY;
                            found = true;
                            show_debug_message("Hit");
                            break;
                        }else if invString == "taken by"{
                            var objIDString = scr_findString(col + currentPositionX, row + currentPositionY, false);
                            
                            show_debug_message(string(objIDString));
                            show_debug_message(string(scr_findString(currentPositionX, currentPositionY, false)));
                        
                            if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                                show_debug_message("Cannot be same id");
                                found = false;
                                show_debug_message("Miss")
                            }else{
                                show_debug_message("Whatever happens here");
                                var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                                caller.posX = newInvSlot.offsetX;
                                caller.posY = newInvSlot.offsetY;
                                
                                show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                                show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                                found = true;
                                show_debug_message("Hit");
                                break;
                            }
                        }
                    }
                }else{
                    break;
                }
            }
            if (!found){
                show_debug_message("Miss");
            }
        }else if (axis == "y"){
            var col;
            for(col = 0; col < invSlot[currentPositionX, currentPositionY].invSpaceWide; col++;){              
                if (!found){
                    var row;
                    for(row = 1; row < (backpackHeight - currentPositionY); row++;){
                        var invString = scr_findString(col + currentPositionX, row + currentPositionY, true);
                        if (invString != "empty" && invString != "taken by"){
                            caller.posX = col + currentPositionX;
                            caller.posY = row + currentPositionY;
                            found = true;
                            show_debug_message("Hit");
                            break;
                        }else if invString == "taken by"{
                            var objIDString = scr_findString(col + currentPositionX, row + currentPositionY, false);
                            
                            show_debug_message(string(objIDString));
                            show_debug_message(string(scr_findString(currentPositionX, currentPositionY, false)));
                            
                            if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                                show_debug_message("Cannot be same id");
                                found = false;
                                show_debug_message("Miss")
                            }else{
                                show_debug_message("Whatever happens here");
                                var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                                caller.posX = newInvSlot.offsetX;
                                caller.posY = newInvSlot.offsetY;
                                
                                show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                                show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                                found = true;
                                show_debug_message("Hit");
                                break;
                            }
                        }
                    }
                }else{
                    break;
                }
            }
            if (!found){
                show_debug_message("Miss");
            }    
        }else{
            show_debug_message("getNextInventoryItem: Axis not valid. Check spelling ''x''/''y''");
        }
    }else if (movementDirection == "negative"){
        if (axis == "x"){
            var row;
            for(row = 0; row < invSlot[currentPositionX, currentPositionY].invSpaceTall; row++;){               
                if (!found){
                    var col;
                    for(col = currentPositionX - 1; col >= 0; col--;){
                        var invString = scr_findString(col, row + currentPositionY, true);
                        if (invString != "empty" && invString != "taken by"){
                            caller.posX = col;
                            caller.posY = row + currentPositionY;
                            found = true;
                            show_debug_message("Hit");
                            break;
                        }else if invString == "taken by"{
                            var objIDString = scr_findString(col, row + currentPositionY, false);
                            
                            show_debug_message(string(objIDString));
                            show_debug_message(string(scr_findString(currentPositionX , currentPositionY, false)));
                        
                            if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                                show_debug_message("Cannot be same id");
                                found = false;
                                show_debug_message("Miss")
                            }else{
                                show_debug_message("Whatever happens here");
                                var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                                caller.posX = newInvSlot.offsetX;
                                caller.posY = newInvSlot.offsetY;
                                
                                show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                                show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                                found = true;
                                show_debug_message("Hit");
                                break;
                            }
                        }
                    }
                }else{
                    break;
                }
            }      
            if (!found){
                show_debug_message("Miss");
            }
        }else if (axis == "y"){
            var col;
            for(col = 0; col < invSlot[currentPositionX, currentPositionY].invSpaceWide; col++;){               
                if (!found){
                    var row;
                    for(row = currentPositionY - 1; row >= 0; row--;){
                        var invString = scr_findString(col + currentPositionX, row, true);
                        if (invString != "empty" && invString != "taken by"){
                            caller.posX = col + currentPositionX;
                            caller.posY = row;
                            found = true;
                            show_debug_message("Hit");
                            break;
                        }else if invString == "taken by"{
                            var objIDString = scr_findString(col + currentPositionX, row, false);
                            
                            show_debug_message(string(objIDString));
                            show_debug_message(string(scr_findString(currentPositionX, currentPositionY, false)));
                            
                            if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                                show_debug_message("Cannot be same id");
                                found = false;
                                show_debug_message("Miss")
                            }else{
                                show_debug_message("Whatever happens here");
                                var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                                caller.posX = newInvSlot.offsetX;
                                caller.posY = newInvSlot.offsetY;
                                
                                show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                                show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                                found = true;
                                show_debug_message("Hit");
                                break;
                            }
                        }
                    }
                }else{
                    break;
                }
            }
            if (!found){
                show_debug_message("Miss");
            }    
        }else{
            show_debug_message("getNextInventoryItem: Axis not valid. Check spelling ''x''/''y''");
        }
    }else{
        show_debug_message("getNextInventoryItem: Direction not valid. Check spelling ''positve''/''negative''");
    }
}else{
    if (movementDirection == "positive"){
        if (axis == "x"){
            var col;
            for(col = 1; col < (backpackWidth - currentPositionX); col++;){
                var invString = scr_findString(col + currentPositionX, currentPositionY, true);
                if (invString != "empty" && invString != "taken by"){
                    caller.posX = col + currentPositionX;
                    caller.posY = row + currentPositionY;
                    found = true;
                    show_debug_message("Hit");
                    break;
                }else if invString == "taken by"{
                    var objIDString = scr_findString(col + currentPositionX, currentPositionY, false);
                    
                    show_debug_message(string(objIDString));
                    show_debug_message(string(scr_findString(currentPositionX, currentPositionY, false)));
                
                    if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                        show_debug_message("Cannot be same id");
                        found = false;
                        show_debug_message("Miss")
                    }else{
                        show_debug_message("Whatever happens here");
                        var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                        caller.posX = newInvSlot.offsetX;
                        caller.posY = newInvSlot.offsetY;
                        
                        show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                        show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                        found = true;
                        show_debug_message("Hit");
                        break;
                    }
                }
            }
            if (!found){
                show_debug_message("Miss");
            }
        }else if (axis == "y"){
            var row;
            for(row = 1; row < (backpackHeight - currentPositionY); row++;){
                var invString = scr_findString(currentPositionX, row + currentPositionY, true);
                if (invString != "empty" && invString != "taken by"){
                    caller.posX = col + currentPositionX;
                    caller.posY = row + currentPositionY;
                    found = true;
                    show_debug_message("Hit");
                    break;
                }else if invString == "taken by"{
                    var objIDString = scr_findString(currentPositionX, row + currentPositionY, false);
                    
                    show_debug_message(string(objIDString));
                    show_debug_message(string(scr_findString(currentPositionX, currentPositionY, false)));
                    
                    if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                        show_debug_message("Cannot be same id");
                        found = false;
                        show_debug_message("Miss")
                    }else{
                        show_debug_message("Whatever happens here");
                        var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                        caller.posX = newInvSlot.offsetX;
                        caller.posY = newInvSlot.offsetY;
                        
                        show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                        show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                        found = true;
                        show_debug_message("Hit");
                        break;
                    }
                }
            }
            if (!found){
                show_debug_message("Miss");
            }    
        }else{
            show_debug_message("getNextInventoryItem: Axis not valid. Check spelling ''x''/''y''");
        }
    }else if (movementDirection == "negative"){
        if (axis == "x"){
            var col;
            for(col = currentPositionX - 1; col >= 0; col--;){
                var invString = scr_findString(col, currentPositionY, true);
                if (invString != "empty" && invString != "taken by"){
                    caller.posX = col;
                    caller.posY = row + currentPositionY;
                    found = true;
                    show_debug_message("Hit");
                    break;
                }else if invString == "taken by"{
                    var objIDString = scr_findString(col, currentPositionY, false);
                    
                    show_debug_message(string(objIDString));
                    show_debug_message(string(scr_findString(currentPositionX , currentPositionY, false)));
                
                    if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                        show_debug_message("Cannot be same id");
                        found = false;
                        show_debug_message("Miss")
                    }else{
                        show_debug_message("Whatever happens here");
                        var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                        caller.posX = newInvSlot.offsetX;
                        caller.posY = newInvSlot.offsetY;
                        
                        show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                        show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                        found = true;
                        show_debug_message("Hit");
                        break;
                    }
                }
            }      
            if (!found){
                show_debug_message("Miss");
            }
        }else if (axis == "y"){
            var row;
            for(row = currentPositionY - 1; row >= 0; row--;){
                var invString = scr_findString(currentPositionX, row, true);
                if (invString != "empty" && invString != "taken by"){
                    caller.posX = col + currentPositionX;
                    caller.posY = row;
                    found = true;
                    show_debug_message("Hit");
                    break;
                }else if invString == "taken by"{
                    var objIDString = scr_findString(currentPositionX, row, false);
                    
                    show_debug_message(string(objIDString));
                    show_debug_message(string(scr_findString(currentPositionX, currentPositionY, false)));
                    
                    if (objIDString == scr_findString(currentPositionX, currentPositionY, false)){
                        show_debug_message("Cannot be same id");
                        found = false;
                        show_debug_message("Miss")
                    }else{
                        show_debug_message("Whatever happens here");
                        var newInvSlot = scr_searchInventory(backpackWidth, backpackHeight, objIDString);
                        caller.posX = newInvSlot.offsetX;
                        caller.posY = newInvSlot.offsetY;
                        
                        show_debug_message(string(caller.posX) + " " + string(newInvSlot.offsetX));
                        show_debug_message(string(caller.posY) + " " + string(newInvSlot.offsetY));
                        found = true;
                        show_debug_message("Hit");
                        break;
                    }
                }
            }
            if (!found){
                show_debug_message("Miss");
            }    
        }else{
            show_debug_message("getNextInventoryItem: Axis not valid. Check spelling ''x''/''y''");
        }
    }else{
        show_debug_message("getNextInventoryItem: Direction not valid. Check spelling ''positve''/''negative''");
    }
}
show_debug_message(string(currentPositionX) + " " + string(caller.posX));
show_debug_message(string(currentPositionY) + " " + string(caller.posY));
