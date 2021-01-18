=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end
class Scrabble
    @@map = {
        "a" => 1,
        "b" => 3,
        "c" => 3,
        "d" => 2,
        "e" => 1,
        "f" => 4,
        "g" => 2,
        "h" => 4,
        "i" => 1,
        "j" => 8,
        "k" => 5,
        "l" => 1,
        "m" => 3,
        "n" => 1,
        "o" => 1,
        "p" => 3,
        "q" => 10,
        "r" => 1,
        "s" => 1,
        "t" => 1,
        "u" => 1,
        "v" => 4,
        "w" => 4,
        "x" => 8,
        "y" => 4,
        "z" => 10
    }
    def initialize(word)
        @word = word
    end

    def self.score(word)
        self.new(word).score
    end

    def score
        score = 0
        if @word.nil?
            return score
        end
        @word.strip.downcase.each_char do |c|
            score += @@map[c]
        end
        score
    end
end