# coding: utf-8

RSpec.describe Romajify::CLI do
  let(:cli) { described_class.new }

  describe '#hepburn' do
    context 'given no options' do
      subject { -> { cli.hepburn('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { -> { cli.invoke(:hepburn, ['かな'], upcase: true) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end

    context 'given --traditional option' do
      subject { -> { cli.invoke(:hepburn, ['しんばしいろ'], traditional: true) } }
      it { is_expected.to output("shimbashiiro\n").to_stdout }
    end
  end

  describe '#nihon' do
    context 'given no options' do
      subject { -> { cli.nihon('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { -> { cli.invoke(:nihon, ['かな'], upcase: true) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end
  end

  describe '#kunrei' do
    context 'given no options' do
      subject { -> { cli.kunrei('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { -> { cli.invoke(:kunrei, ['かな'], upcase: true) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end
  end

  describe '#version' do
    subject { -> { cli.version } }
    it { is_expected.to output("romajify #{Romajify::VERSION}\n").to_stdout }
  end
end
