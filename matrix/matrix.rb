=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
    def initialize(matrix_as_string)
        @matrix_as_string = matrix_as_string
        @rows_as_string = matrix_as_string.split(/\n+/).map{|row_as_string| row_as_string.split(" ")}
        @rows = @rows_as_string.each{ |row| row.map!(&:to_i)}
        @matrix = Array.new(@rows[0].length) {@rows}

        @cols = Array.new(@rows[0].length){Array.new(@rows.length) {nil}}
        @matrix.each_with_index do |row, row_ind|
            row.each_with_index do |num, num_ind|
                @cols[row_ind][num_ind] = @rows[num_ind][row_ind]
           
            end
        end
    end

    def rows
        @rows
    end

    def columns
        @cols
    end
end
