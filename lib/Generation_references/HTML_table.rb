require_relative 'parsing_anime_facts'
require 'erb'

def create_table_anime_facts(path)
  erb_str = File.read(File.dirname(__FILE__) + '/anime_facts_page.html.erb')

  anime_facts_information = Information_Of_Anime_Facts(Get_Anime())

  @anime_facts_information = anime_facts_information
  renderer = ERB.new(erb_str)
  result = renderer.result(binding)

  File.open(path + "/table_anime_facts.html", 'w') do |f|
    f.write(result)
  end
end