# frozen_string_literal: true

require 'fiddle/import'

module Process
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
  end
end
