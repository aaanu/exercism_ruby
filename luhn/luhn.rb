=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
    def self.valid?(card_num) # card_num - string
        card_num = card_num.gsub(" ", "")
        
        if card_num.length <= 1
            return false
        end

        if !card_num.match?(/^\d+$/)
            return false
        end

        new_card_num = ""
        card_num.each_char.with_index do |c, ind|
            new_num = 0
            if ind % 2 == 0
                new_num = c.to_i * 2
                if new_num > 9
                    new_num -= 9
                end
                new_card_num += new_num.to_s
            else
                new_card_num += c
            end
        end

        sum = 0
        puts new_card_num
        new_card_num.each_char do |c|
            sum += c.to_i
        end

        if sum % 10 == 0
            return true
        end

        return false
    end
end
