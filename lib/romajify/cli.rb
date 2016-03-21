require 'thor'
require 'romajify/converter'

# Japanese romanization library
module Romajify

  # Command-line interface of {Romajify}
  class CLI < Thor
    class_option :upcase, type: :boolean, aliases: '-u'

    desc 'hepburn KANA', 'Convert kana to Hepburn romaji'
    option :traditional, type: :boolean, aliases: '-t'

    # Convert kana to Hepburn romaji
    #
    # @param text [String] Kana text
    def hepburn(text)
      puts Converter.hepburn(text, options)
    end

    desc 'nihon KANA', 'Convert kana to Nihon-shiki romaji'

    # Convert kana to Nihon-shiki romaji
    #
    # @param text [String] Kana text
    def nihon(text)
      puts Converter.nihon(text, options)
    end

    desc 'kunrei KANA', 'Convert kana to Kunrei-shiki romaji'

    # Convert kana to Kunrei-shiki romaji
    #
    # @param text [String] Kana text
    def kunrei(text)
      puts Converter.kunrei(text, options)
    end

    desc '-v, --version', 'Print the version'
    map %w(-v --version) => :version

    # Print the version
    def version
      puts "romajify #{Romajify::VERSION}"
    end
  end

  CLI.start
end
