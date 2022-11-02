require_relative 'parsing_games'
require 'erb'

def create_table_games(path)
  erd_str = File.read(File.dirname(__FILE__) + '/games_page.html.erb')

  gamesInformation = get_all_games(get_games())

  @games_information = gamesInformation
  renderer = ERB.new(erd_str)
  result = renderer.result(binding)
  File.open(path + "/table_games.html", 'w') do |f|
    f.write(result)
  end
end