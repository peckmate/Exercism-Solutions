module Complement
  def self.of_dna( input )
    input = input.upcase
    case input
    when "G"
      "C"
    when "C"
      "G"
    when "T"
      "A"
    when "A"
      "U"
    else
      ""
    end
  end
end
