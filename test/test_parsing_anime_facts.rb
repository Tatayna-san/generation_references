require_relative '../test/test_helper'
require_relative '../lib/Generation_references/Anime_Facts/parsing_anime_facts.rb'

class Parsing_Anime_Facts < Minitest::Test

  def test_of_anime_name
    anime_facts_information = Anime_Facts.new('name:"bleach",fact:"Ichigo s English Voice Actor Was A Power Ranger')
    assert_equal(anime_facts_information.name, "bleach")
  end

  def test_of_anime_fact
    anime_facts_information = Anime_Fact.new('name:"bleach",fact:"Ichigo s English Voice Actor Was A Power Ranger')
    assert_equal(anime_facts_information.fact, "Ichigo s English Voice Actor Was A Power Ranger")
  end
end
