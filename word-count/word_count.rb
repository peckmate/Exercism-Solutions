class Phrase
  def initialize( words )
    @words = words
  end

  def word_count
    split_words = @words.downcase.scan( /\b[\w']+\b/ )
    split_words.each_with_object(Hash.new(0)) do |word,counts|
      counts[word] += 1
    end
  end
end
