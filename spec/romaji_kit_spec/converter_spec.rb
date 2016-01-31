# coding: utf-8

require 'spec_helper'

describe RomajiKit::Converter do
  describe '.hepburnize' do

    context 'given "し"' do
      subject { described_class.hepburnize('し') }
      it { is_expected.to eq 'shi' }
    end

    context 'given "ち"' do
      subject { described_class.hepburnize('ち') }
      it { is_expected.to eq 'chi' }
    end

    context 'given "つ"' do
      subject { described_class.hepburnize('つ') }
      it { is_expected.to eq 'tsu' }
    end

    context 'given "ふ"' do
      subject { described_class.hepburnize('ふ') }
      it { is_expected.to eq 'fu' }
    end

    context 'given "じ"' do
      subject { described_class.hepburnize('じ') }
      it { is_expected.to eq 'ji' }
    end

    context 'given "ず"' do
      subject { described_class.hepburnize('ず') }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ぢ"' do
      subject { described_class.hepburnize('ぢ') }
      it { is_expected.to eq 'ji' }
    end

    context 'given "づ"' do
      subject { described_class.hepburnize('づ') }
      it { is_expected.to eq 'zu' }
    end

    context 'given "しゃ"' do
      subject { described_class.hepburnize('しゃ') }
      it { is_expected.to eq 'sha' }
    end

    context 'given "しゅ"' do
      subject { described_class.hepburnize('しゅ') }
      it { is_expected.to eq 'shu' }
    end

    context 'given "しょ"' do
      subject { described_class.hepburnize('しょ') }
      it { is_expected.to eq 'sho' }
    end

    context 'given "ちゃ"' do
      subject { described_class.hepburnize('ちゃ') }
      it { is_expected.to eq 'cha' }
    end

    context 'given "ちゅ"' do
      subject { described_class.hepburnize('ちゅ') }
      it { is_expected.to eq 'chu' }
    end

    context 'given "ちょ"' do
      subject { described_class.hepburnize('ちょ') }
      it { is_expected.to eq 'cho' }
    end

    context 'given "りゃ"' do
      subject { described_class.hepburnize('りゃ') }
      it { is_expected.to eq 'rya' }
    end

    context 'given "りゅ"' do
      subject { described_class.hepburnize('りゅ') }
      it { is_expected.to eq 'ryu' }
    end

    context 'given "りょ"' do
      subject { described_class.hepburnize('りょ') }
      it { is_expected.to eq 'ryo' }
    end

    context 'given "じゃ"' do
      subject { described_class.hepburnize('じゃ') }
      it { is_expected.to eq 'ja' }
    end

    context 'given "じゅ"' do
      subject { described_class.hepburnize('じゅ') }
      it { is_expected.to eq 'ju' }
    end

    context 'given "じょ"' do
      subject { described_class.hepburnize('じょ') }
      it { is_expected.to eq 'jo' }
    end

    context 'given "っ"' do
      subject { described_class.hepburnize('いっこんぞめ') }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "っ" before "c"' do
      subject { described_class.hepburnize('まっちゃ') }
      it { is_expected.to eq 'matcha' }
    end

    context 'given "n"' do
      subject { described_class.hepburnize('こんじき') }
      it { is_expected.to eq 'konjiki' }
    end

    context 'given "n" before "b"' do
      subject { described_class.hepburnize('しんばしいろ') }
      it { is_expected.to eq 'shimbashiiro' }
    end

    context 'given "n" before "m"' do
      subject { described_class.hepburnize('ほんむらさき') }
      it { is_expected.to eq 'hommurasaki' }
    end

    context 'given "n" before "p"' do
      subject { described_class.hepburnize('たんぽぽいろ') }
      it { is_expected.to eq 'tampopoiro' }
    end

    context 'given "oo"' do
      subject { described_class.hepburnize('まそおいろ') }
      it { is_expected.to eq 'masoiro' }
    end

    context 'given "oo" at the end of the text' do
      subject { described_class.hepburnize('まそお') }
      it { is_expected.to eq 'masoo' }
    end

    context 'given "ou"' do
      subject { described_class.hepburnize('きょうむらさき') }
      it { is_expected.to eq 'kyomurasaki' }
    end

    context 'given "uu"' do
      subject { described_class.hepburnize('りきゅうちゃ') }
      it { is_expected.to eq 'rikyucha' }
    end
  end
end
