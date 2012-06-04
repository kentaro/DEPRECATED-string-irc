require 'string/irc'

class String
  module IRC
    module CoreExt
      module String
        def irc_colorize(foreground, background)
          ::String::IRC.colorize(self, foreground, background)
        end

        def irc_bold
          ::String::IRC.bold(self)
        end

        def irc_underline
          ::String::IRC.underline(self)
        end

        def irc_italic
          ::String::IRC.italic(self)
        end
      end
    end
  end
end

String.send(:include, String::IRC::CoreExt::String)
