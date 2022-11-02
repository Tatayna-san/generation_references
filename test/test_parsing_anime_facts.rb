require_relative '../test/test_helper'
require_relative '../lib/Generation_references/parsing_anime_facts.rb'

class Parsing_Anime_Facts < Minitest::Test
=begin
  def test_for_Get_Anime
    anime = Get_Anime()
    assert_equal(anime.size, 26)
  end

  def test_for_Information_Of_Anime_Facts
    anime_facts_information = Information_Of_Anime_Facts(Get_Anime())
    assert_equal(anime_facts_information.size, 26)
  end
=end

  def test_fact_of_anime_name
    #anime_facts_information = Anime_Facts.new('bleach: "bleach", fact: "Ichigo wasnt the first character that Kubo created. It was Rukia. Kubo felt like drawing a shinigami wearing a kimono, thus, Rukia was created."')
    #assert_equal(anime_facts_information(("bleach")[:name], 'Ichigo wasnt the first character that Kubo created. It was Rukia. Kubo felt like drawing a shinigami wearing a kimono, thus, Rukia was created.')
  end
end
