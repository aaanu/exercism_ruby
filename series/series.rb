=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
    def initialize(digits)
        @digits = digits # string
    end

    def slices(slice_length)
        if slice_length > @digits.length
            throw ArgumentError
        end
        @answer = []
        @digits.each_char.with_index do |c, ind|
            if ind + slice_length <= @digits.length
                @answer.push(@digits.slice(ind, slice_length))
            end
        end
        @answer
    end
end
