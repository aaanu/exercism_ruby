=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
    def self.convert(num)
        sound = ""
        if num % 3 == 0
            sound += "Pling"
        end
        if num % 5 == 0
            sound += "Plang"
        end
        if num % 7 == 0
            sound += "Plong"
        end
        if sound.empty?
            return num.to_s
        end
        return sound
    end
end
