require "chronic/bang/version"

module Chronic
  def self.parse!(text, options = {})
    parse(text, options) || raise RuntimeError, "could not parse date: #{text}"
  end
end
