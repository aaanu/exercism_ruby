=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end
class Prime
    def self.nth(n)
        if n == 0
            throw ArgumentError
        end
        primes = []
        counter = 2 # we know this is the first prime number
        #btw this approach takes very long for a big n
        until primes.length == n do
            primes.push(counter)
            (2..counter-1).each do |divisor|
                if counter % divisor == 0
                    primes.delete(counter)
                    break # break out of if
                end
            end
            counter += 1
        end
        primes.last
    end
end
