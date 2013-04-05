require 'rubygems'
require 'writegood/version'
require 'writegood/runner'
require 'writegood/commands/duplicate'

module Writegood
  def self.commands
    %w[duplicate]
  end
end
