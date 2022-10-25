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

def Information_Of_Anime_Facts(anime_names, fact_id)
  res = []
  anime_names.each do |name|
    begin
      url = Nokogiri::HTML5(URI.open('https://anime-facts-rest-api.herokuapp.com/api/v1/' +
                                       + name[:name] + '/' + fact_id.to_s)).to_s
    rescue
      next
    end
    anime_name = name[:name]
    fact = url[/"fact":"(?<fact>.*)"/, 1]
    res.push({name: anime_name, fact: fact})
  end
  return res
end

#Anime_Facts = Information_Of_Anime_Facts(Get_Anime(), 1)
#puts Anime_Facts
#puts Anime_Facts.size

=begin
def Get_Facts()
  res = []
  anime_names.each do |name|
      begin
        url = Nokogiri::HTML5(URI.open('https://anime-facts-rest-api.herokuapp.com/api/v1/' + name[:name])).to_s
      rescue
        return res
      end
  end
  anime_name = name[:name]
  arr = url.split(',')
  arr.each do |a|
    fact_id = a.match(/"fact_id":(?<id>.*)/)
    if !fact_id.nil?
      res.push(fact_id: fact_id)
    end
  end
  res
end

puts Get_Facts()
=end
