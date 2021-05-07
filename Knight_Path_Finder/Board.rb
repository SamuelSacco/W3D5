class Board

    def initialize
        @board = Array.new(8) { Array.new(8 , :X) }

    end

    def print
        puts "  #{(0..7).to_a.join(" ")}"
        @board.each_with_index do |row, i|
            puts "#{i} #{row.join(" ")}"
        end
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def get_neighbors(pos)
        row, col = pos
        result_array = []
        coordinates = [[-1, 2], [1, 2], [-2, 1], [1, -2], [2, 1], [2, -1], [-2,-1], [-1,-2]]
        (0..7).each do |i|
            new_row = row + coordinates[i][0]
            new_col = col + coordinates[i][1]
            if (0..7).to_a.include?(new_row) && (0..7).to_a.include?(new_col)
                result_array << [new_row, new_col]
            end
        end
        result_array
    end



end

board = Board.new
board.print
p board.get_neighbors([1,2])

=begin 
[0,0] => [[1,2] 
          [2,1]]
                 
[1,2] => [[0,0], [-1,-2]``
          [0,4], [-1, +2]``
          [2,4], [+1,+2]``
          [3,3], [+2, +1]``
          [3,1], [+2, -1]``
          [2,0] [+1, -2]``
          [-1,1] [-2,-1]``
          [-1,3] [-2, +1]
          *** PATTERN IS PERMUTATIONS OF possible nums = [-1,1,-2,2]
          output = []
          (0...possible_nums.length).each do |i|
            inner = []
            (i + 1...possible_nums.length).each do |j|
                inner << possible_nums[i][j]
                if inner.length == 2
                    output << inner
                    inner = []
                end
            end


=end

#        -1, +2    +1, +2
# -2, -1                  -1, +2
#                K
# -1, -2                  +1, +2
#        2, -1    +2, +1



    
    
    