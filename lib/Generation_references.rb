# frozen_string_literal: true

require_relative "Generation_references/version"

module GenerationReferences
  class Error < StandardError; end
  require_relative "Generation_references/Anime_Facts/parsing_anime_facts"
  require_relative "Generation_references/Anime_Facts/HTML_anime_facts_table"
  require_relative "Generation_references/Games/parsing_games"
  require_relative "Generation_references/Games/HTML_games_table"
  require_relative "Generation_references/HTML_main"
end
