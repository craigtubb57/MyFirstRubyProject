class Cells < Hash

  #TODO - this class has a lot of methods - should some be extracted?
  def initialize
    @cells = Hash.new(nil)
  end

  def get_cell(x, y)
    cell(x, y).value
  end

  #ensure a mine exists at x, y
  def cell(x, y)
    @cells[[x, y]] = @cells[[x, y]].nil? ? Cell.new(:x=>x, :y=>y) : @cells[[x, y]]
  end

  #ensure a cell exists at x, y
  def mine(x, y)
    #@cells[[x, y]] = @cells[[x, y]].nil? ? MineCell.new(:x=>x, :y=>y) : @cells[[x, y]]
    @cells[[x, y]] = MineCell.new(:x=>x, :y=>y)
  end

  #set all the mines, incrementing surrounding cells
  def set_mines(mines)
    mines.each do |mine|
      increment_surrounding_cells(mine(mine[0], mine[1]))
    end
  end

  def increment_surrounding_cells(cell)
    surrounding_cells(cell).reject {|surroundCell|surroundCell.value == -1}.each {|filteredCell|filteredCell.increment_value}
  end

  #gather cells that immediately surround the given cell
  def surrounding_cells(cell)
    surroundCells ||= []
    (cell.x - 1..cell.x + 1).each do |x|
      (cell.y - 1..cell.y + 1).each do |y|
        if (x != cell.x || y != cell.y)
          surroundCells << cell(x, y)
        end
      end
    end
    surroundCells
  end
end