require 'thor'

module RomajiKit
  class CLI < Thor
    desc 'hepburnize', 'Convert kana to hepburn'
    def hepburnize(text)
      puts Converter.hepburnize(text)
    end
  end

  CLI.start
end
