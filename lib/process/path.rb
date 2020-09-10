# frozen_string_literal: true

require 'fiddle/import'
require_relative 'path/os'
require_relative 'path/version'

module Process
  # Process::Path module
  module Path
    # Returns the path to the current ruby running as a string.
    # @return [String] The path to the current ruby running as a string.
    # @note Currently only osx and linux are supported.
    def self.path
      if Process::Path::OS.mac?
        require_relative 'path/osx'
        Process::Path::OSXImpl.path
      elsif Process::Path::OS.linux?
        require_relative 'path/linux'
        Process::Path::LinuxImpl.path
      else
        raise 'Not implemented'
      end
    end
  end
end
