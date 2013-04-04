module Writegood
  class Duplicate
    def initialize(string)
      @string = string
    end

    def violated?
      string =~ /\b(\w+)\b(\s+\1\b)/
    end

    private

    attr_reader :string
  end
end
