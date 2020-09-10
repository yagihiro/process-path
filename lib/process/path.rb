# frozen_string_literal: true

require 'fiddle/import'
require_relative 'path/os'
require_relative 'path/version'

module Process
  # Process::Path module
  module Path
    # @!visibility private
    # Process::Path::OSXImpl module
    module OSXImpl
      extend Fiddle::Importer
      dlload 'libSystem.B.dylib'
      extern 'int proc_pidpath(int, void *, unsigned int)'

      def self.path
        s = ' ' * 4096
        proc_pidpath(Process.pid, s, 4096)
        s.unpack1('Z*')
      end
    end

    # @!visibility private
    # Process::Path::LinuxImpl module
    module LinuxImpl
      def self.path
        `readlink -f /proc/#{Process.pid}/exe`
      end
    end

    # Returns the path to the current ruby running as a string.
    # @return [String] The path to the current ruby running as a string.
    # @note Currently only osx and linux are supported.
    def self.path
      if Process::Path::OS.mac?
        Process::Path::OSXImpl.path
      elsif Process::Path::OS.linux?
        Process::Path::LinuxImpl.path
      else
        raise 'Not implemented'
      end
    end
  end
end
