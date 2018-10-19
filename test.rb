require './domains/factories/character_entity_factory'

mina = CharacterEntityFactory.build_character_entity('mina')
taki = CharacterEntityFactory.build_character_entity('taki')
mitsurugi = CharacterEntityFactory.build_character_entity('mitsurugi')

[mina,taki,mitsurugi].each do |chara|
  puts '-------------------'
  puts "name: #{chara.name}"
  puts "sex: #{chara.sex}"
  puts "move: #{chara.move_list}"
  puts "combo: #{chara.combo_list}"
  puts '-------------------'
end
