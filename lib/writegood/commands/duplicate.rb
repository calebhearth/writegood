require 'pry'
module Writegood
  class Duplicate
    def initialize(arguments)
      arguments.shift
      if File.file?(arguments.first)
        @string = File.open(arguments.first, "rb").read
      else
        raise "404 - #{arguments.first} is not a file"
      end
    end

    def violated?
      string =~ regex
    end

    def execute
      if violated?
        line_number = string.split(regex).first.count($/) + 1
        puts "DUPLICATE #{line_number}:" << string.slice(regex).inspect
      end
    end

    private

    attr_reader :string

    def regex
      /\b(\w+)\b(\s+\1\b)/
    end
  end
end
