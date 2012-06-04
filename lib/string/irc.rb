require "string/irc/version"

class String
  module IRC
    COLOR_CODES = {
      0  => %w(white),
      1  => %w(black),
      2  => %w(blue navy),
      3  => %w(green),
      4  => %w(red),
      5  => %w(brown maroon),
      6  => %w(purple),
      7  => %w(orange olive),
      8  => %w(yellow),
      9  => %w(light green lime),
      10 => %w(teal),
      11 => %w(light_cyan cyan aqua),
      12 => %w(light_blue royal),
      13 => %w(pink light_purple fuchsia),
      14 => %w(grey),
      15 => %w(light_grey silver)
    }
    COLORS_MAP = COLOR_CODES.keys.inject({}) do |result, code|
      COLOR_CODES[code].each do |color|
        result[color] = code
      end
      result
    end

    def self.colorize(str, foreground, background)
      foreground_code = COLORS_MAP[foreground.to_s] or return str
      background_code = COLORS_MAP[background.to_s]

      "\x03%s%s%s\x03" % [
        foreground_code.to_s,
        (background_code ? ",#{background_code.to_s}" : ''),
        str
      ]
    end

    def self.bold(str)
      "\x02%s\x02" % str
    end

    def self.underline(str)
      "\x1F%s\x1F" % str
    end

    def self.italic(str)
      "\x16%s\x16" % str
    end
  end
end
