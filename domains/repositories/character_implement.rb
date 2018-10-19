class CharacterImplement

  # データソースよりキャラ情報を取得
  # input
  #   arg_name: キャラ名
  # output
  #   [キャラid, キャラ名, 性別]
  def self.find_by_name(arg_name)
    File.open('datastore/character', 'r:UTF-8').find do |character|
      character.split(',')[1] == arg_name
    end.split(',')
  end

end

