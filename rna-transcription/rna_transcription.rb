module Complement
  def self.of_dna( input )
    input.each do | input |
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
end
