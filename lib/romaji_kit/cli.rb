require 'thor'

module RomajiKit
  class CLI < Thor
    class_option :upcase, type: :boolean, aliases: '-u'

    desc 'hepburnize KANA', 'Convert kana to Hepburn romaji'
    def hepburnize(text)
      puts Converter.hepburnize(text, options[:upcase])
    end

    desc 'nihon KANA', 'Convert kana to Nihon-shiki romaji'
    def nihon(text)
      puts Converter.nihon(text, options[:upcase])
    end

    desc '-v, --version', 'Print the version'
    map %w(-v --version) => :version
    def version
      puts "romaji_kit #{RomajiKit::VERSION}"
    end
  end

  CLI.start
end
