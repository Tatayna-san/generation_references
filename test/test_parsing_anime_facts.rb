require_relative '../test/test_helper'
require_relative '../lib/Generation_references/parsing_ anime_facts.rb'

class Parsing_Anime_Facts < Minitest::Test
  def test_for_Get_Anime
    anime = Get_Anime()
    assert_equal(anime.size, 26)
  end

  def test_for_Information_Of_Anime_Facts
    anime_facts_information = Information_Of_Anime_Facts(Get_Anime(), 1)
    assert_equal(anime_facts_information.size, 26)
  end

  def test_fact_of_bleach
    assert_equal(Information_Of_Anime_Facts('bleach')[:username], 1)
  end
end
