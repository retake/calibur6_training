class Move
  attr_reader :id, :name, :command

  def initialize(arg_moves)
    @id = arg_moves[0]
    @name = arg_moves[2]
    @command = arg_moves[3]
  end

end
