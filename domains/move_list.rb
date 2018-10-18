class MoveList

  def initialize(arg_move_objects)
    @move_list = arg_move_objects
  end

  def move_names
    @move_list.collect(&:name)
  end

  def move_infos
    @move_list.collect { |move| [move.name, move.command] }
  end
end

