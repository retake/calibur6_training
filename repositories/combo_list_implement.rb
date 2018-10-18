class ComboListImplement

  # データソースより対象キャラのコンボを取得
  # input
  #   arg_character_name: キャラ名
  # output
  #   [技id, キャラ名, コンボ（技idを:で区切ったもの）]
  def self.select_by_character_name(arg_character_name)
    character_combo_rows = ComboListImplement.character_combo_rows(arg_character_name)
    ComboListImplement.character_combo_array(character_combo_rows)
  end

  private

  def self.character_combo_rows(arg_character_name)
    File.open('tmp/combo', 'r:UTF-8').select do |move|
      move.split(',')[1] == arg_character_name
    end
  end

  def self.character_combo_array(arg_character_combo_rows)
    arg_character_combo_rows.collect do |character_combo_row|
      character_combo_row.chomp.split(',')[2].split(':')
    end
  end

end

