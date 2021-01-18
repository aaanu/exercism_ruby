=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
class Isogram
    def self.isogram?(str)
        @map = Hash.new
        str.gsub(/\-/, "").gsub(/\s+/, "").downcase.each_char.with_index do |c, ind|
            if @map[c].nil?
                @map[c] = 1
            else
                return false
            end
        end
        return true
    end
end