class MoveListImplement

  # データソースより対象キャラの技を取得
  # input
  #   arg_character_name: キャラ名
  # output
  #   [コンボid, キャラ名, 技名、コマンド]
  def self.select_by_character_name(arg_character_name)
    character_move_rows = MoveListImplement.character_move_rows(arg_character_name)
    MoveListImplement.character_move_array(character_move_rows)
  end

  private

  def self.character_move_rows(arg_character_name)
    File.open('tmp/move', 'r:UTF-8').select do |move|
      move.split(',')[1] == arg_character_name
    end
  end

  def self.character_move_array(arg_character_move_rows)
    arg_character_move_rows.collect do |character_move_row|
      character_move_row.chomp.split(',')
    end
  end

end

