require 'open-uri'
require 'nokogiri'

def Get_Anime()
  res = []
  begin
    url = Nokogiri::HTML5(URI.open('https://anime-facts-rest-api.herokuapp.com/api/v1')).to_s
  rescue
    return res
  end
  arr = url.split(',')
  arr.each do |a|
    name = a.match(/"anime_name":"(?<name>.*)"/)
    if !name.nil?
      res.push( {name: name[:name]})
    end
  end
  res
end
#puts Get_Anime()

=begin
def Get_Anime_Facts(anime_names)
  res = []
  anime_names.each do |name|
  begin
    url = Nokogiri::HTML5(URI.open('https://anime-facts-rest-api.herokuapp.com/api/v1/' + name[:name])).to_s
  rescue
    next
  end
  anime_name = name[:name]
  anime_fact = url.split(',')
  anime_fact.each do |a|
    fact = a.match(/"fact":"(?<fact>.*)"/)
      if !fact.nil?
        res.push( {name: anime_name, fact: fact[:fact]})
      end
    end
  end
  return res
end

puts Get_Anime_Facts(Get_Anime())
=end

def Information_Of_Anime_Facts(anime_names)
  res = []
  facts = []
  anime_names.each do |name|
    begin
      url = Nokogiri::HTML5(URI.open('https://anime-facts-rest-api.herokuapp.com/api/v1/' + name[:name])).to_s
    rescue
      next
    end
    anime_name = name[:name]
    anime_fact = url.split(',')
    anime_fact.each do |a|
      fact = a.match(/"fact":"(?<fact>.*)"/)
      if !fact.nil?
        res.push( {name: anime_name, fact: fact[:fact]})
      end

    end
  end
  return res
end


#Anime_Facts = Information_Of_Anime_Facts(Get_Anime())
#puts Anime_Facts
#puts Anime_Facts.size
