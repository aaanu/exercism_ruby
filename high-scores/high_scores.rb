=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end
class HighScores
    def initialize(scores_array)
        @scores_array = scores_array
    end

    def scores
        @scores_array
    end

    def latest
        @scores_array.last
    end

    def personal_best
        @scores_array.max
    end

    def personal_top_three
        replica = @scores_array
        if @scores_array.length <= 3
            return replica.sort.reverse
        end
        replica.sort.reverse.first(3)
    end

    def latest_is_personal_best?
        self.latest == self.personal_best
    end
end
