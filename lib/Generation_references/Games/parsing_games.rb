require 'open-uri'
require 'nokogiri'
require 'json'


class Games
  include Comparable
  attr_reader :id, :title, :thumbnail, :short_description, :game_url, :genre, :platform, :publisher, :developer, :release_date, :profile_url

  #конструктор класса. из строки вытаскивает функцией help нужные данные для полей
  def initialize (arr_games)
    arr = arr_games.to_s.gsub('{', '').gsub('}', '').gsub('",', '"^^^').split('^^^')
    @id = help(arr, 0)
    @title = help(arr, 1)
    @thumbnail = help(arr, 2)
    @short_description = help(arr, 3)
    @game_url = help(arr, 4)
    @genre = help(arr, 5)
    @platform = help(arr, 6)
    @publisher = help(arr, 7)
    @developer = help(arr, 8)
    @release_date = help(arr, 9).to_i
    @profile_url = help(arr, 10)
  end

  def <=>(an_other)
    an_other.year <=> self.year
  end

  def help(arr, i)
    return arr[i][arr[i].index(':"') + 2, arr[i].length - arr[i].index(':"') - 3]
  end
end

def get_games()
  uri = 'https://www.mmobomb.com/api1/games'
  doc = Nokogiri::HTML(URI.open(uri))

  text = doc.text.gsub('<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"
                      "http://www.w3.org/TR/REC-html40/loose.dtd"> <html><body><p>', '')
  text = text.gsub('[', '').gsub(']', '')

  text.gsub('},', '}').gsub('"errorMessage":""}', '')
end

def get_all_games(text)

  arr_games = []
  while text.index('}') != nil
    ind_start = 0
    ind_finish = text.index('}')
    dist = ind_finish - ind_start + 1
    arr_games << text[ind_start, dist].gsub(' "', '"')
    text = text.gsub(text[ind_start, dist], '')
  end

  res = []
  arr_games.each do |g|
    res << Games.new(g)
  end
  res
end
