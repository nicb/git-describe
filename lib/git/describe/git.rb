module Git
  module Describe

    class << self

      #:doc:
      #
      # +git(abb_value = 6)+
      #
      # returns the string reported by the following system command:
      #
      # +git describe --abbrev=<abb_value> --dirty=D --always+
      #
      # as simple as that. No other features featured (as of today).
      #
      # If this gem is called inside something that is not a git repository,
      # it will silently return an empty string.
      #
      #:no_doc:

      DEFAULT_ABBREVIATION_VALUE = 6
      COMMAND_STRING = "git describe --abbrev=@@abb_value@@ --dirty='-D' --always 2>/dev/null"

      def git(abb_value = DEFAULT_ABBREVIATION_VALUE)
        command_string = COMMAND_STRING.sub(/@@abb_value@@/, abb_value.to_s)
        %x{ #{command_string} }.chomp
      end

    end

  end
end
