# frozen_string_literal: true

require_relative "Generation_references/version"

module GenerationReferences
  class Error < StandardError; end
  require_relative "Generation_references/parsing_anime_facts"
  require_relative "Generation_references/HTML_table"
  require_relative "Generation_references/HTML_main"
end
