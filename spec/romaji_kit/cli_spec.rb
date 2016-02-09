# coding: utf-8

require 'spec_helper'

describe RomajiKit::CLI do
  let(:converter) { described_class.new }

  describe '#hepburnize' do
    context 'given no options' do
      subject { lambda { converter.hepburnize('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { lambda { converter.invoke(:hepburnize, ['かな'], { upcase: true }) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end
  end

  describe '#nihon' do
    context 'given no options' do
      subject { lambda { converter.nihon('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { lambda { converter.invoke(:nihon, ['かな'], { upcase: true }) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end
  end

  describe '#version' do
    subject { lambda { converter.version } }
    it { is_expected.to output("romaji_kit #{RomajiKit::VERSION}\n").to_stdout }
  end
end
