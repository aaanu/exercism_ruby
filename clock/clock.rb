=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
class Clock
    # Says I want hour and minute to be readable and writeable
    attr_accessor :hour, :minute

    def initialize(**options)
        @hour = options[:hour]
        @minute = options[:minute]

        if @minute.nil?
            @minute = 0
        elsif @hour.nil?
            @hour = 0
        end

        @hour = calculate_hour(@hour, @minute)
        @minute = calculate_minute(@minute)
    end

    def calculate_hour(hour, minute)
        to_add = minute.divmod(60)
        if to_add[0] != 0 && to_add[1] == 0
            hour = hour + to_add[0]
        else
            hour = hour + to_add[0]
            minute = minute + to_add[1]
        end

        hour = hour % 24
    end

    def calculate_minute(minute)
        minute = minute % 60
    end

    def to_s
        result = ""
        if (@hour.is_a? Integer) && (@minute.is_a? Integer)
            if @hour < 10 && @minute < 10
                result = "0#{@hour}:0#{@minute}"
            elsif @hour < 10 && @minute > 10
                result = "0#{@hour}:#{@minute}"
            elsif @hour > 10 && @minute < 10
                result = "#{@hour}:0#{@minute}"
            else
                result = "#{@hour}:#{@minute}"
            end
        else
            throw ArgumentError()
        end
        return result
    end

    def +(other)
        @hour = calculate_hour(@hour + other.hour, @minute + other.minute)
        @minute = calculate_minute(@minute + other.minute)
        self
    end
    
    def -(other)
        @hour = calculate_hour(@hour - other.hour, @minute - other.minute)
        @minute = calculate_minute(@minute - other.minute)
        self
    end

    def ==(other)
        self.to_s === other.to_s
    end
end
