# coding: utf-8

require 'spec_helper'

describe RomajiKit::Converter do
  describe '.hepburnize' do
    context 'given "し"' do
      subject { described_class.hepburnize('し') }
      it { is_expected.to eq 'shi' }
    end

    context 'given "シ"' do
      subject { described_class.hepburnize('シ') }
      it { is_expected.to eq 'shi' }
    end

    context 'given "しゃ"' do
      subject { described_class.hepburnize('しゃ') }
      it { is_expected.to eq 'sha' }
    end

    context 'given "シャ"' do
      subject { described_class.hepburnize('シャ') }
      it { is_expected.to eq 'sha' }
    end

    context 'given "しゅ"' do
      subject { described_class.hepburnize('しゅ') }
      it { is_expected.to eq 'shu' }
    end

    context 'given "シュ"' do
      subject { described_class.hepburnize('シュ') }
      it { is_expected.to eq 'shu' }
    end

    context 'given "しょ"' do
      subject { described_class.hepburnize('しょ') }
      it { is_expected.to eq 'sho' }
    end

    context 'given "ショ"' do
      subject { described_class.hepburnize('ショ') }
      it { is_expected.to eq 'sho' }
    end

    context 'given "ち"' do
      subject { described_class.hepburnize('ち') }
      it { is_expected.to eq 'chi' }
    end

    context 'given "チ"' do
      subject { described_class.hepburnize('チ') }
      it { is_expected.to eq 'chi' }
    end

    context 'given "つ"' do
      subject { described_class.hepburnize('つ') }
      it { is_expected.to eq 'tsu' }
    end

    context 'given "ツ"' do
      subject { described_class.hepburnize('ツ') }
      it { is_expected.to eq 'tsu' }
    end

    context 'given "ちゃ"' do
      subject { described_class.hepburnize('ちゃ') }
      it { is_expected.to eq 'cha' }
    end

    context 'given "チャ"' do
      subject { described_class.hepburnize('チャ') }
      it { is_expected.to eq 'cha' }
    end

    context 'given "ちゅ"' do
      subject { described_class.hepburnize('ちゅ') }
      it { is_expected.to eq 'chu' }
    end

    context 'given "チュ"' do
      subject { described_class.hepburnize('チュ') }
      it { is_expected.to eq 'chu' }
    end

    context 'given "ちょ"' do
      subject { described_class.hepburnize('ちょ') }
      it { is_expected.to eq 'cho' }
    end

    context 'given "チョ"' do
      subject { described_class.hepburnize('チョ') }
      it { is_expected.to eq 'cho' }
    end

    context 'given "ふ"' do
      subject { described_class.hepburnize('ふ') }
      it { is_expected.to eq 'fu' }
    end

    context 'given "フ"' do
      subject { described_class.hepburnize('フ') }
      it { is_expected.to eq 'fu' }
    end

    context 'given "ゐ"' do
      subject { described_class.hepburnize('ゐ') }
      it { is_expected.to eq 'i' }
    end

    context 'given "ヰ"' do
      subject { described_class.hepburnize('ヰ') }
      it { is_expected.to eq 'i' }
    end

    context 'given "ゑ"' do
      subject { described_class.hepburnize('ゑ') }
      it { is_expected.to eq 'e' }
    end

    context 'given "ヱ"' do
      subject { described_class.hepburnize('ヱ') }
      it { is_expected.to eq 'e' }
    end

    context 'given "を"' do
      subject { described_class.hepburnize('を') }
      it { is_expected.to eq 'o' }
    end

    context 'given "ヲ"' do
      subject { described_class.hepburnize('ヲ') }
      it { is_expected.to eq 'o' }
    end

    context 'given "じ"' do
      subject { described_class.hepburnize('じ') }
      it { is_expected.to eq 'ji' }
    end

    context 'given "ジ"' do
      subject { described_class.hepburnize('ジ') }
      it { is_expected.to eq 'ji' }
    end

    context 'given "じゃ"' do
      subject { described_class.hepburnize('じゃ') }
      it { is_expected.to eq 'ja' }
    end

    context 'given "ジャ"' do
      subject { described_class.hepburnize('ジャ') }
      it { is_expected.to eq 'ja' }
    end

    context 'given "じゅ"' do
      subject { described_class.hepburnize('じゅ') }
      it { is_expected.to eq 'ju' }
    end

    context 'given "ジュ"' do
      subject { described_class.hepburnize('ジュ') }
      it { is_expected.to eq 'ju' }
    end

    context 'given "じょ"' do
      subject { described_class.hepburnize('じょ') }
      it { is_expected.to eq 'jo' }
    end

    context 'given "ジョ"' do
      subject { described_class.hepburnize('ジョ') }
      it { is_expected.to eq 'jo' }
    end

    context 'given "ぢ"' do
      subject { described_class.hepburnize('ぢ') }
      it { is_expected.to eq 'ji' }
    end

    context 'given "ヂ"' do
      subject { described_class.hepburnize('ヂ') }
      it { is_expected.to eq 'ji' }
    end

    context 'given "づ"' do
      subject { described_class.hepburnize('づ') }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ヅ"' do
      subject { described_class.hepburnize('ヅ') }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ぢゃ"' do
      subject { described_class.hepburnize('ぢゃ') }
      it { is_expected.to eq 'ja' }
    end

    context 'given "ヂャ"' do
      subject { described_class.hepburnize('ヂャ') }
      it { is_expected.to eq 'ja' }
    end

    context 'given "ぢゅ"' do
      subject { described_class.hepburnize('ぢゅ') }
      it { is_expected.to eq 'ju' }
    end

    context 'given "ヂュ"' do
      subject { described_class.hepburnize('ヂュ') }
      it { is_expected.to eq 'ju' }
    end

    context 'given "ぢょ"' do
      subject { described_class.hepburnize('ぢょ') }
      it { is_expected.to eq 'jo' }
    end

    context 'given "ヂョ"' do
      subject { described_class.hepburnize('ヂョ') }
      it { is_expected.to eq 'jo' }
    end

    context 'given "っ"' do
      subject { described_class.hepburnize('いっこんぞめ') }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "ッ"' do
      subject { described_class.hepburnize('イッコンゾメ') }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "っ" before "c"' do
      subject { described_class.hepburnize('まっちゃ') }
      it { is_expected.to eq 'matcha' }
    end

    context 'given "ッ" before "c"' do
      subject { described_class.hepburnize('マッチャ') }
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
