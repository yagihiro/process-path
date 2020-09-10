# frozen_string_literal: true

module Process
  module Path
    # @!visibility private
    # Process::Path::LinuxImpl module
    module LinuxImpl
      def self.path
        `readlink -f /proc/#{Process.pid}/exe`
      end
    end
  end
end
