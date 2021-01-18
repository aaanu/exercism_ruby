=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
    def initialize(phrase)
        @phrase = phrase # string
        @map = Hash.new
    end

    def word_count
        @phrase.gsub(/[^a-zA-Z\d. ,']/, "").gsub(",", " ").gsub("\.", " ").split.each do |word|
            word.downcase!
            if word.count("\'") > 1
                word.gsub!("\'", "")
            end
            @map[word] = @map[word] ? @map[word] += 1 : 1
        end
        @map
    end
end
