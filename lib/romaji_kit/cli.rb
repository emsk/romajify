require 'thor'

module RomajiKit
  class CLI < Thor
    desc 'hepburnize', 'Convert kana to hepburn'
    option :upcase, type: :boolean, aliases: '-u'
    def hepburnize(text)
      puts Converter.hepburnize(text, options[:upcase])
    end
  end

  CLI.start
end
