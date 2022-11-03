require_relative '../test/test_helper'
require_relative '../lib/Generation_references/Anime_Facts/parsing_anime_facts.rb'

class Parsing_Anime_Facts < Minitest::Test
  def test_number_of_elements_in_Get_Anime
    anime_facts = Get_Anime()
    assert_equal(anime_facts.size, 13)
  end

  def test_number_of_elements_in_Information_Of_Anime_Facts
    anime_facts = Information_Of_Anime_Facts(Get_Anime())
    assert_equal(anime_facts.size, 146)
  end

  def test_first_elem_of_anime_name
    anime_facts = Information_Of_Anime_Facts(Get_Anime())
    assert_equal(anime_facts[0][:name], ('bleach'))
  end

  def test_first_elem_of_anime_fact
    anime_facts = Information_Of_Anime_Facts(Get_Anime())
    assert_equal(anime_facts[0][:fact], ('Ichigo s English Voice Actor Was A Power Ranger'))
  end
end
