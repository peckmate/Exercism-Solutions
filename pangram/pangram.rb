class Pangram

  RANGE = ( 'a' .. 'z' )

  def self.pangram?( input )
    input.downcase!
    RANGE.all? { | letter |  input.include?( letter ) }
  end
end
