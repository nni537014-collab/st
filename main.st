function_block add 
var_input
    run: bool;
end_var
var_output
    inverted: bool := true;
end_var

if run then
   inverted := false;
end_if
end_function_block

TYPE Point :
    STRUCT
        X : LREAL;
        Y : LREAL;
    END_STRUCT
END_TYPE

TYPE BallColour
    (
        RED;
        YELLOW;
        WHITE;
        BLACK
    ) uint;
                       
END_TYPE
TYPE BallPoint :
    STRUCT
        point : Point;
        colour : BallColour;
    END_STRUCT
END_TYPE

function_block createPositions
   var_input
       radius : lreal;
   end_var
   var_output
       //positions : Array[0..14] of Point;
       positions: Array[0..14] of BallPoint
   end_var
   var
      YMulti : LREAL;
   end_var
   YMulti := TAN(60);
   XAdd := 2 * radius;
   positions[0].point.X := 0;
   positions[0].point.Y := 0;
   positions[1].point.X := XAdd;
   positions[1].point.Y := positions[0].point.Y
   positions[2].point.X := positions[1].point.X + XAdd;
   positions[2].point.Y := positions[0].point.Y
   positions[3].point.X := positions[2].point.X + XAdd;
   positions[3].point.Y := positions[0].point.Y
   positions[4].point.X := positions[3].point.X + XAdd;
   positions[4].point.Y := positions[0].point.Y


   positions[5].point.X := positions[0].point.X + radius;
   positions[5].point.Y := positions[0].point.Y + radius * YMulti;
   positions[6].point.X := positions[5].point.X + XAdd;
   positions[6].point.Y := positions[5].point.Y
   positions[7].point.X := positions[6].point.X + XAdd;
   positions[7].point.Y := positions[5].point.Y
   positions[8].point.X := positions[7].point.X + XAdd;
   positions[8].point.Y := positions[5].point.Y

   positions[9].point.X := positions[5].point.X + radius;
   positions[9].point.Y := positions[5].point.Y + radius * YMulti;
   positions[10].point.X := positions[9].point.X + XAdd;
   positions[10].point.Y := positions[9].point.Y
   positions[11].point.X := positions[10].point.X + XAdd;
   positions[11].point.Y := positions[9].point.Y

   positions[12].point.X := positions[9].point.X + radius;
   positions[12].point.Y := positions[9].point.Y + radius * YMulti;
   positions[13].point.X := positions[12].point.X + XAdd;
   positions[13].point.Y := positions[12].point.Y    
   
   positions[14].point.X := positions[12].point.X + radius;
   positions[14].point.Y := positions[12].point.Y + radius * YMulti;
   
end_function_block