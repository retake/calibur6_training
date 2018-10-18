class Character
  attr_reader :name, :sex

  def initialize(arg_name, arg_sex, arg_move_list, arg_combo_list)
    @name = arg_name
    @sex = arg_sex
    @move_list = arg_move_list
    @combo_list = arg_combo_list
  end

  def move_names
    @move_list.collect(&:name)
  end

  def move_list
    @move_list.collect{ |move| [move.name, move.command].join(',') }
  end

  def combo_list
    @combo_list.collect{ |combo| [combo.recipe, combo.total_damage] }
  end


end
