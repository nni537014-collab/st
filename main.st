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
       positions : Array[0..14] of Point;
   end_var
   var
      YMulti : LREAL;
   end_var
   YMulti := TAN(60);
   XAdd := 2 * radius;
   positions[0].X := 0;
   positions[0].Y := 0;
   positions[1].X := XAdd;
   positions[1].Y := positions[0].Y
   positions[2].X := positions[1].X + XAdd;
   positions[2].Y := positions[0].Y
   positions[3].X := positions[2].X + XAdd;
   positions[3].Y := positions[0].Y
   positions[4].X := positions[3].X + XAdd;
   positions[4].Y := positions[0].Y


   positions[5].X := positions[0].X + radius;
   positions[5].Y := positions[0].Y + radius * YMulti;
   positions[6].X := positions[5].X + XAdd;
   positions[6].Y := positions[5].Y
   positions[7].X := positions[6].X + XAdd;
   positions[7].Y := positions[5].Y
   positions[8].X := positions[7].X + XAdd;
   positions[8].Y := positions[5].Y

   positions[9].X := positions[5].X + radius;
   positions[9].Y := positions[5].Y + radius * YMulti;
   positions[10].X := positions[9].X + XAdd;
   positions[10].Y := positions[9].Y
   positions[11].X := positions[10].X + XAdd;
   positions[11].Y := positions[9].Y

   positions[12].X := positions[9].X + radius;
   positions[12].Y := positions[9].Y + radius * YMulti;
   positions[13].X := positions[12].X + XAdd;
   positions[13].Y := positions[12].Y    
   
   positions[14].X := positions[12].X + radius;
   positions[14].Y := positions[12].Y + radius * YMulti;
   
end_function_block