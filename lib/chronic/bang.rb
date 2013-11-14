require "chronic/bang/version"
require "chronic"

module Chronic
  class ParseError < StandardError; end

  def self.parse!(text, options = {})
    parse(text, options) || raise(ParseError, "could not parse date: #{text}")
  end
end
