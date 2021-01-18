=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
    def self.compute(first_strand, second_strand) # both are strings
        if first_strand.length != second_strand.length
            throw ArgumentError
        end
        distance = 0
        first_strand.each_char.with_index do |c, index|
            if c != second_strand[index]
                distance += 1
            end
        end
        distance
    end
end