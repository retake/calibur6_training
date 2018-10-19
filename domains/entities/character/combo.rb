class Combo
  attr_reader :total_damage

  def initialize(arg_combo_move_list)
    @combo = arg_combo_move_list.collect { |move| move.command }
    @total_damage = 1
  end

  def recipe
    @combo.join('->')
  end

end
