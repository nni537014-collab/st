TEST 'CreatePositions position test'
  VAR uut : CreatePositions; END_VAR
  uut(Radius := 1);
  ASSERT_EQ(uut.positions[5].point.Y, TAN(60));
END_TEST