function_block CreatePositions
   var_input
       Radius : LREAL;
   end_var
   var_output
       //positions : Array[0..14] of Point;
       positions: Array[0..14] of BallPoint;
   end_var
   var
      YMulti : LREAL;
      XAdd: LREAL;
   end_var
   YMulti := TAN(60);
   XAdd := 2 * Radius;
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


   positions[5].point.X := positions[0].point.X + Radius;
   positions[5].point.Y := positions[0].point.Y + Radius * YMulti;
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
  
   positions[0].colour := BallColour.RED;
   positions[1].colour := BallColour.YELLOW;
   positions[2].colour := BallColour.RED ;
   positions[3].colour := BallColour.YELLOW ;
   positions[4].colour := BallColour.YELLOW ;
   positions[5].colour := BallColour.YELLOW;
   positions[6].colour := BallColour.RED ;
   positions[7].colour := BallColour.YELLOW ;
   positions[8].colour := BallColour.RED ;
   positions[9].colour := BallColour.RED ;
   positions[10].colour := BallColour.BLACK ;
   positions[11].colour := BallColour.YELLOW ;
   positions[12].colour := BallColour.YELLOW ;
   positions[13].colour := BallColour.RED ;
   positions[14].colour := BallColour.RED ;
end_function_block