class Series

  def initialize( input )
    @input = input.chars
  end

  def slices( numbers )
    if numbers > @input.length
      raise ArgumentError
    else
      @input.each_cons( numbers ).map( &:join )
    end
  end
end
