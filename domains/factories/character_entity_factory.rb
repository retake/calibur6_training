require './domains/entities/character/character'
require './domains/entities/character/move'
require './domains/entities/character/combo'
require './domains/repositories/character_implement'
require './domains/repositories/move_list_implement'
require './domains/repositories/combo_list_implement'


# TODO: characterを集約ルートにするため、エンティティ内の永続データのオブジェクト化は、全てここで行っている
class CharacterEntityFactory

  def self.build_character_entity(arg_character_name)
    id, name, sex = CharacterImplement.find_by_name(arg_character_name)
    move_list = MoveListImplement.select_by_character_name(name).collect { |move| Move.new(move) }
    combo_list = combo_list(name, move_list)

    Character.new(name, sex, move_list, combo_list)
  end

  private
  def self.combo_list(arg_name, arg_move_list)
    ComboListImplement.select_by_character_name(arg_name).collect do |combo|
      combo_move_list = combo.collect do |combo_move|
        arg_move_list.find{ |move| move.id == combo_move }
      end
      Combo.new(combo_move_list)
    end
  end

end
