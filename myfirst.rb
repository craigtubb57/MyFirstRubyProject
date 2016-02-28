require_relative 'grid'
require_relative 'cells'
require_relative 'cell'
require_relative 'mine_cell'
size = 6
grid = Grid.new(size, [[1, 1], [4, 3], [2, 2], [2, 4]])
(0..size - 1).each do |y|
  rowStr = '|'
  (0..size - 1).each do |x|
    val = grid.get_cell(x, y)
    if (val == -1)
      val = 'X'
    end
    if (val == 0)
      val = ' '
    end
    #val = x.to_s + ',' + y.to_s
    rowStr += val.to_s + '|'
  end
  puts rowStr
end