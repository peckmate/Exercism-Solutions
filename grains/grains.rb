=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

module Grains
    SQUARES = (1..64)
  
    def self.square(position)
      raise BoardPositionError unless SQUARES.cover? position
      2 ** (position - 1)
    end
  
    def self.total
      square(SQUARES.max) * 2 - 1
    end
  end
  
  class BoardPositionError < ArgumentError
    def initialize(message = "This position doesn't exist on this board")
      super
    end
end