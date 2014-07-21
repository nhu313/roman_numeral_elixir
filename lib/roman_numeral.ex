defmodule RomanNumeral do
  @numerals [[10, "X"], [9, "IX"], [5, "V"], [4, "IV"], [1, "I"]]

  def converts(number) do
    converts(number, @numerals)
  end

  def converts(number, _) when number < 1 do
    ""
  end

  def converts(number, numerals = [[arabic, roman] | _]) when number >= arabic do
    roman <> converts(number - arabic, numerals)
  end

  def converts(number, numerals) do
    converts(number, tl(numerals))
  end
end
