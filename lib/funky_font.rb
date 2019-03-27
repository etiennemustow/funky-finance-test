require 'pry'

class FunkyFont
  attr_reader :value

  FUNKY_FONTS = [
    "===\n@@@\n@ @\n@ @\n@ @\n@@@\n===".split("\n"),
    "=\n@\n@\n@\n@\n@\n=".split("\n"),
    "===\n@@@\n  @\n@@@\n@  \n@@@\n===".split("\n"),
    "===\n@@@\n  @\n@@@\n  @\n@@@\n===".split("\n"),
    "===\n@ @\n@ @\n@@@\n  @\n  @\n===".split("\n"),
    "===\n@@@\n@  \n@@@\n  @\n@@@\n===".split("\n"),
    "===\n@@@\n@  \n@@@\n@ @\n@@@\n===".split("\n"),
    "===\n@@@\n  @\n  @\n  @\n  @\n===".split("\n"),
    "===\n@@@\n@ @\n@@@\n@ @\n@@@\n===".split("\n"),
    "===\n@@@\n@ @\n@@@\n  @\n@@@\n===".split("\n"),
    ["=", " ", " ", " ", " ", "@", "="]

  ]

  def initialize(value)
    @value = value.to_s.split("")
  end

  def space
    ["=", " ", " ", " ", " ", " ", "="]
  end

  def create
    calculated_value = ""
    array_of_numbers = []
    @value.each do |v|
      if v == "0"
        array_of_numbers << FUNKY_FONTS[0]
        array_of_numbers << space
      elsif v == "1"
        array_of_numbers << FUNKY_FONTS[1]
        array_of_numbers << space
      elsif v == "2"
        array_of_numbers << FUNKY_FONTS[2]
        array_of_numbers << space
      elsif v == "3"
        array_of_numbers << FUNKY_FONTS[3]
        array_of_numbers << space
      elsif v == "4"
        array_of_numbers << FUNKY_FONTS[4]
        array_of_numbers << space
      elsif v == "5"
        array_of_numbers << FUNKY_FONTS[5]
        array_of_numbers << space
      elsif v == "6"
        array_of_numbers << FUNKY_FONTS[6]
        array_of_numbers << space
      elsif v == "7"
        array_of_numbers << FUNKY_FONTS[7]
        array_of_numbers << space
      elsif v == "8"
        array_of_numbers << FUNKY_FONTS[8]
        array_of_numbers << space
      elsif v == "9"
        array_of_numbers << FUNKY_FONTS[9]
        array_of_numbers << space
      elsif v == "."
        array_of_numbers << FUNKY_FONTS[10]
        array_of_numbers << space
      end
    end

    funky_font_array = ["", "", "", "", "", "", ""]
    array_of_numbers
    i = 0
    while i < array_of_numbers[0].count
      array_of_numbers.each do |line|
        funky_font_array[i] += line[i]
      end
      i += 1
    end

    funky_font_array.each do |funky_font_line|
      puts funky_font_line
    end
  end
end
