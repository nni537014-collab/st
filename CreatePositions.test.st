TEST 'CreatePositions position test'
  VAR uut : CreatePositions; END_VAR
  uut(Radius := 1.0);
  ASSERT_EQ(uut.positions[5].POINT.Y, TAN(60.0));
END_TEST