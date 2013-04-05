require 'active_support/core_ext/string/inflections'

module Writegood
  class Runner

    def initialize(*args)
      @arguments = args
    end

    def self.execute(*args)
      new(*args).execute
    end

    def execute
      command = arguments.first
      script = "writegood/#{command}"
      if Writegood.commands.include?(command)
        command_class = script.camelize.constantize
        command_class.new(arguments).execute
      elsif which(script)
        exec external_script
      else
        puts "Not a writegood command: " + command
        exit(1)
      end
    end

    private

    attr_reader :arguments

    def external_script
      file = which("writegood-#{arguments.shift}")
      if file
        full_command(file)
      end
    end

    def full_command(file)
      ([file] + arguments).join(' ')
    end

    def which(cmd)
      match = matching_path(cmd)
      if match
        File.join(match, cmd)
      end
    end

    def matching_path(cmd)
      paths.find do |path|
        File.executable?(File.join(path, cmd))
      end
    end

    def paths
      ENV['PATH'].split(File::PATH_SEPARATOR)
    end
  end
end
