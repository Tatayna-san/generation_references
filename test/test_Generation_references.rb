# frozen_string_literal: true

require "../test/test_helper"

class TestGenerationReferences < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GenerationReferences::VERSION
  end
end
