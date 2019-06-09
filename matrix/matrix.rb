class Matrix
  attr_reader :rows

  def initialize( input )
    @rows = parse_rows( input )
  end

  def columns
    @columns = rows.transpose
  end

  def parse_rows( input )
    input.each_line.map { | line | line.split.map(&:to_i) }
  end
end
