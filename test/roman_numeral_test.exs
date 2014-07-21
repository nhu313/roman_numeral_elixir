defmodule RomanNumeralTest do
  use ExUnit.Case

  test "converts arabic into roman numeral" do
    numerals = [[0, ""],
                [1, "I"],
                [2, "II"],
                [3, "III"],
                [4, "IV"],
                [5, "V"],
                [6, "VI"],
                [9, "IX"],
                [10, "X"],
                [28, "XXVIII"]]
    Enum.each numerals, fn([arabic, roman]) -> assert roman == RomanNumeral.converts(arabic) end
  end
end
