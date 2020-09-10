# frozen_string_literal: true

module Process
  module Path
    # https://stackoverflow.com/a/171011
    module OS
      def self.windows?
        (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
      end

      def self.mac?
        (/darwin/ =~ RUBY_PLATFORM) != nil
      end

      def self.unix?
        !OS.windows?
      end

      def self.linux?
        OS.unix? and !OS.mac?
      end

      def self.jruby?
        RUBY_ENGINE == 'jruby'
      end
    end
  end
end
