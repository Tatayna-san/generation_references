require_relative 'Anime_Facts/HTML_anime_facts_table'
require_relative 'Games/HTML_games_table'
require 'erb'

module Generation_references
  module HTML_main
    class HTML_main_page
      def self.create_main(path)
        create_table_anime_facts(path)
        create_table_games(path)

        erb_str = File.read(File.dirname(__FILE__) + '/main_page.html.erb')

        @path = path
        renderer = ERB.new(erb_str)
        result = renderer.result(binding)

        File.open(path + "/table_main.html", 'w') do |f|
          f.write(result)
        end
      end
    end
  end
end

