class Grid

  attr_reader :size, :mines, :cells

  def initialize(size, mines)
    @size = size
    @mines = mines
    @cells = Cells.new
    @cells.set_mines(mines)
  end

  def get_cell(x, y)
    @cells.get_cell(x, y)
  end
end