defmodule BowlixirTest do
  use ExUnit.Case

  test "zeroScoreForAllGutterBalls" do
    assert Bowlixir.score([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) == 0
  end

  test "knockingDownOnePin" do
    assert Bowlixir.score([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) == 1
  end

  test "knockingDownThreePins" do
    assert Bowlixir.score([1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1]) == 3
  end

  test "spareAndNoOthers" do
    assert Bowlixir.score([5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) == 10
  end

  test "spareAndSevenPinsOntheNextRoll" do
    assert Bowlixir.score([5,5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) == 24
  end

  test "strike" do
    assert Bowlixir.score([10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) == 10
  end

  test "strikeAndThenEightPinsOverTheNextTwoRolls" do
    assert Bowlixir.score([10,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) == 26
  end

  test "gettingAllStrikes" do
    assert Bowlixir.score([10,10,10,10,10,10,10,10,10,10]) == 300
  end

  test "gettingAStrikeOnTheLastFrame" do

  end

end
