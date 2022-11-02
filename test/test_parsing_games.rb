require_relative '../test/test_helper'
require_relative '../lib/Generation_references/Games/parsing_games'

class ParsingGamesTest < Minitest::Test

  def test_id_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.id, "1136")
  end

  def test_title_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.title, "Overwatch 2")
  end

  def test_thumbnail_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.thumbnail, "https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg")
  end

  def test_short_description_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.short_description, "Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.")
  end

  def test_game_url_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.game_url, "https:\/\/www.mmobomb.com\/open\/overwatch-2")
  end

  def test_genre_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.genre, "Shooter")
  end

  def test_platform_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.platform, "PC (Windows)")
  end

  def test_publisher_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.publisher, "Activision Blizzard King")
  end

  def test_developer_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.developer, "Blizzard Entertainment")
  end

  def test_release_date_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.release_date, "2022-10-04")
  end

  def test_profile_url_of_arr_films
    games = Games.new('id:"1136",title:"Overwatch 2", thumbnail:"https:\/\/www.mmobomb.com\/g\/1136\/thumbnail.jpg",short_description:"Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.",game_url:"https:\/\/www.mmobomb.com\/open\/overwatch-2",genre:"Shooter",platform:"PC (Windows)",publisher:"Activision Blizzard King",developer:"Blizzard Entertainment",release_date:"2022-10-04",profile_url:"https:\/\/www.mmobomb.com\/overwatch-2"')
    assert_equal(games.profile_url, "https:\/\/www.mmobomb.com\/overwatch-2")
  end
end
