# coding: utf-8

require 'spec_helper'

describe RomajiKit::Converter do
  describe '.hepburn' do
    subject { described_class.hepburn(text) }

    context 'given "し"' do
      let(:text) { 'し' }
      it { is_expected.to eq 'shi' }
    end

    context 'given "シ"' do
      let(:text) { 'シ' }
      it { is_expected.to eq 'shi' }
    end

    context 'given "しゃ"' do
      let(:text) { 'しゃ' }
      it { is_expected.to eq 'sha' }
    end

    context 'given "シャ"' do
      let(:text) { 'シャ' }
      it { is_expected.to eq 'sha' }
    end

    context 'given "しゅ"' do
      let(:text) { 'しゅ' }
      it { is_expected.to eq 'shu' }
    end

    context 'given "シュ"' do
      let(:text) { 'シュ' }
      it { is_expected.to eq 'shu' }
    end

    context 'given "しょ"' do
      let(:text) { 'しょ' }
      it { is_expected.to eq 'sho' }
    end

    context 'given "ショ"' do
      let(:text) { 'ショ' }
      it { is_expected.to eq 'sho' }
    end

    context 'given "ち"' do
      let(:text) { 'ち' }
      it { is_expected.to eq 'chi' }
    end

    context 'given "チ"' do
      let(:text) { 'チ' }
      it { is_expected.to eq 'chi' }
    end

    context 'given "つ"' do
      let(:text) { 'つ' }
      it { is_expected.to eq 'tsu' }
    end

    context 'given "ツ"' do
      let(:text) { 'ツ' }
      it { is_expected.to eq 'tsu' }
    end

    context 'given "ちゃ"' do
      let(:text) { 'ちゃ' }
      it { is_expected.to eq 'cha' }
    end

    context 'given "チャ"' do
      let(:text) { 'チャ' }
      it { is_expected.to eq 'cha' }
    end

    context 'given "ちゅ"' do
      let(:text) { 'ちゅ' }
      it { is_expected.to eq 'chu' }
    end

    context 'given "チュ"' do
      let(:text) { 'チュ' }
      it { is_expected.to eq 'chu' }
    end

    context 'given "ちょ"' do
      let(:text) { 'ちょ' }
      it { is_expected.to eq 'cho' }
    end

    context 'given "チョ"' do
      let(:text) { 'チョ' }
      it { is_expected.to eq 'cho' }
    end

    context 'given "ふ"' do
      let(:text) { 'ふ' }
      it { is_expected.to eq 'fu' }
    end

    context 'given "フ"' do
      let(:text) { 'フ' }
      it { is_expected.to eq 'fu' }
    end

    context 'given "ゐ"' do
      let(:text) { 'ゐ' }
      it { is_expected.to eq 'i' }
    end

    context 'given "ヰ"' do
      let(:text) { 'ヰ' }
      it { is_expected.to eq 'i' }
    end

    context 'given "ゑ"' do
      let(:text) { 'ゑ' }
      it { is_expected.to eq 'e' }
    end

    context 'given "ヱ"' do
      let(:text) { 'ヱ' }
      it { is_expected.to eq 'e' }
    end

    context 'given "を"' do
      let(:text) { 'を' }
      it { is_expected.to eq 'o' }
    end

    context 'given "ヲ"' do
      let(:text) { 'ヲ' }
      it { is_expected.to eq 'o' }
    end

    context 'given "じ"' do
      let(:text) { 'じ' }
      it { is_expected.to eq 'ji' }
    end

    context 'given "ジ"' do
      let(:text) { 'ジ' }
      it { is_expected.to eq 'ji' }
    end

    context 'given "じゃ"' do
      let(:text) { 'じゃ' }
      it { is_expected.to eq 'ja' }
    end

    context 'given "ジャ"' do
      let(:text) { 'ジャ' }
      it { is_expected.to eq 'ja' }
    end

    context 'given "じゅ"' do
      let(:text) { 'じゅ' }
      it { is_expected.to eq 'ju' }
    end

    context 'given "ジュ"' do
      let(:text) { 'ジュ' }
      it { is_expected.to eq 'ju' }
    end

    context 'given "じょ"' do
      let(:text) { 'じょ' }
      it { is_expected.to eq 'jo' }
    end

    context 'given "ジョ"' do
      let(:text) { 'ジョ' }
      it { is_expected.to eq 'jo' }
    end

    context 'given "ぢ"' do
      let(:text) { 'ぢ' }
      it { is_expected.to eq 'ji' }
    end

    context 'given "ヂ"' do
      let(:text) { 'ヂ' }
      it { is_expected.to eq 'ji' }
    end

    context 'given "づ"' do
      let(:text) { 'づ' }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ヅ"' do
      let(:text) { 'ヅ' }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ぢゃ"' do
      let(:text) { 'ぢゃ' }
      it { is_expected.to eq 'ja' }
    end

    context 'given "ヂャ"' do
      let(:text) { 'ヂャ' }
      it { is_expected.to eq 'ja' }
    end

    context 'given "ぢゅ"' do
      let(:text) { 'ぢゅ' }
      it { is_expected.to eq 'ju' }
    end

    context 'given "ヂュ"' do
      let(:text) { 'ヂュ' }
      it { is_expected.to eq 'ju' }
    end

    context 'given "ぢょ"' do
      let(:text) { 'ぢょ' }
      it { is_expected.to eq 'jo' }
    end

    context 'given "ヂョ"' do
      let(:text) { 'ヂョ' }
      it { is_expected.to eq 'jo' }
    end

    context 'given "っ"' do
      let(:text) { 'いっこんぞめ' }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "ッ"' do
      let(:text) { 'イッコンゾメ' }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "っ" before "c"' do
      let(:text) { 'まっちゃ' }
      it { is_expected.to eq 'matcha' }
    end

    context 'given "ッ" before "c"' do
      let(:text) { 'マッチャ' }
      it { is_expected.to eq 'matcha' }
    end

    context 'given "n"' do
      let(:text) { 'こんじき' }
      it { is_expected.to eq 'konjiki' }
    end

    context 'given "n" before "b"' do
      let(:text) { 'しんばしいろ' }
      it { is_expected.to eq 'shinbashiiro' }
    end

    context 'given "n" before "m"' do
      let(:text) { 'ほんむらさき' }
      it { is_expected.to eq 'honmurasaki' }
    end

    context 'given "n" before "p"' do
      let(:text) { 'たんぽぽいろ' }
      it { is_expected.to eq 'tanpopoiro' }
    end

    context 'given "oo"' do
      let(:text) { 'まそおいろ' }
      it { is_expected.to eq 'masoiro' }
    end

    context 'given "oo" at the end of the text' do
      let(:text) { 'まそお' }
      it { is_expected.to eq 'masoo' }
    end

    context 'given "ou"' do
      let(:text) { 'きょうむらさき' }
      it { is_expected.to eq 'kyomurasaki' }
    end

    context 'given "uu"' do
      let(:text) { 'りきゅうちゃ' }
      it { is_expected.to eq 'rikyucha' }
    end

    context 'given Windows-31J text' do
      let(:text) { 'あ'.encode(Encoding::Windows_31J) }
      it { is_expected.to eq 'a' }
    end

    context 'given upcase option' do
      subject { described_class.hepburn('さくらいろ', true) }
      it { is_expected.to eq 'SAKURAIRO' }
    end

    context 'given traditional option' do
      subject { described_class.hepburn(text, false, true) }

      context 'given "n" before "b"' do
        let(:text) { 'しんばしいろ' }
        it { is_expected.to eq 'shimbashiiro' }
      end

      context 'given "n" before "m"' do
        let(:text) { 'ほんむらさき' }
        it { is_expected.to eq 'hommurasaki' }
      end

      context 'given "n" before "p"' do
        let(:text) { 'たんぽぽいろ' }
        it { is_expected.to eq 'tampopoiro' }
      end
    end
  end

  describe '.nihon' do
    subject { described_class.nihon(text) }

    context 'given "し"' do
      let(:text) { 'し' }
      it { is_expected.to eq 'si' }
    end

    context 'given "シ"' do
      let(:text) { 'シ' }
      it { is_expected.to eq 'si' }
    end

    context 'given "しゃ"' do
      let(:text) { 'しゃ' }
      it { is_expected.to eq 'sya' }
    end

    context 'given "シャ"' do
      let(:text) { 'シャ' }
      it { is_expected.to eq 'sya' }
    end

    context 'given "しゅ"' do
      let(:text) { 'しゅ' }
      it { is_expected.to eq 'syu' }
    end

    context 'given "シュ"' do
      let(:text) { 'シュ' }
      it { is_expected.to eq 'syu' }
    end

    context 'given "しょ"' do
      let(:text) { 'しょ' }
      it { is_expected.to eq 'syo' }
    end

    context 'given "ショ"' do
      let(:text) { 'ショ' }
      it { is_expected.to eq 'syo' }
    end

    context 'given "ち"' do
      let(:text) { 'ち' }
      it { is_expected.to eq 'ti' }
    end

    context 'given "チ"' do
      let(:text) { 'チ' }
      it { is_expected.to eq 'ti' }
    end

    context 'given "つ"' do
      let(:text) { 'つ' }
      it { is_expected.to eq 'tu' }
    end

    context 'given "ツ"' do
      let(:text) { 'ツ' }
      it { is_expected.to eq 'tu' }
    end

    context 'given "ちゃ"' do
      let(:text) { 'ちゃ' }
      it { is_expected.to eq 'tya' }
    end

    context 'given "チャ"' do
      let(:text) { 'チャ' }
      it { is_expected.to eq 'tya' }
    end

    context 'given "ちゅ"' do
      let(:text) { 'ちゅ' }
      it { is_expected.to eq 'tyu' }
    end

    context 'given "チュ"' do
      let(:text) { 'チュ' }
      it { is_expected.to eq 'tyu' }
    end

    context 'given "ちょ"' do
      let(:text) { 'ちょ' }
      it { is_expected.to eq 'tyo' }
    end

    context 'given "チョ"' do
      let(:text) { 'チョ' }
      it { is_expected.to eq 'tyo' }
    end

    context 'given "ふ"' do
      let(:text) { 'ふ' }
      it { is_expected.to eq 'hu' }
    end

    context 'given "フ"' do
      let(:text) { 'フ' }
      it { is_expected.to eq 'hu' }
    end

    context 'given "ゐ"' do
      let(:text) { 'ゐ' }
      it { is_expected.to eq 'wi' }
    end

    context 'given "ヰ"' do
      let(:text) { 'ヰ' }
      it { is_expected.to eq 'wi' }
    end

    context 'given "ゑ"' do
      let(:text) { 'ゑ' }
      it { is_expected.to eq 'we' }
    end

    context 'given "ヱ"' do
      let(:text) { 'ヱ' }
      it { is_expected.to eq 'we' }
    end

    context 'given "を"' do
      let(:text) { 'を' }
      it { is_expected.to eq 'wo' }
    end

    context 'given "ヲ"' do
      let(:text) { 'ヲ' }
      it { is_expected.to eq 'wo' }
    end

    context 'given "じ"' do
      let(:text) { 'じ' }
      it { is_expected.to eq 'zi' }
    end

    context 'given "ジ"' do
      let(:text) { 'ジ' }
      it { is_expected.to eq 'zi' }
    end

    context 'given "じゃ"' do
      let(:text) { 'じゃ' }
      it { is_expected.to eq 'zya' }
    end

    context 'given "ジャ"' do
      let(:text) { 'ジャ' }
      it { is_expected.to eq 'zya' }
    end

    context 'given "じゅ"' do
      let(:text) { 'じゅ' }
      it { is_expected.to eq 'zyu' }
    end

    context 'given "ジュ"' do
      let(:text) { 'ジュ' }
      it { is_expected.to eq 'zyu' }
    end

    context 'given "じょ"' do
      let(:text) { 'じょ' }
      it { is_expected.to eq 'zyo' }
    end

    context 'given "ジョ"' do
      let(:text) { 'ジョ' }
      it { is_expected.to eq 'zyo' }
    end

    context 'given "ぢ"' do
      let(:text) { 'ぢ' }
      it { is_expected.to eq 'di' }
    end

    context 'given "ヂ"' do
      let(:text) { 'ヂ' }
      it { is_expected.to eq 'di' }
    end

    context 'given "づ"' do
      let(:text) { 'づ' }
      it { is_expected.to eq 'du' }
    end

    context 'given "ヅ"' do
      let(:text) { 'ヅ' }
      it { is_expected.to eq 'du' }
    end

    context 'given "ぢゃ"' do
      let(:text) { 'ぢゃ' }
      it { is_expected.to eq 'dya' }
    end

    context 'given "ヂャ"' do
      let(:text) { 'ヂャ' }
      it { is_expected.to eq 'dya' }
    end

    context 'given "ぢゅ"' do
      let(:text) { 'ぢゅ' }
      it { is_expected.to eq 'dyu' }
    end

    context 'given "ヂュ"' do
      let(:text) { 'ヂュ' }
      it { is_expected.to eq 'dyu' }
    end

    context 'given "ぢょ"' do
      let(:text) { 'ぢょ' }
      it { is_expected.to eq 'dyo' }
    end

    context 'given "ヂョ"' do
      let(:text) { 'ヂョ' }
      it { is_expected.to eq 'dyo' }
    end

    context 'given "っ"' do
      let(:text) { 'いっこんぞめ' }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "ッ"' do
      let(:text) { 'イッコンゾメ' }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "っ" before "t"' do
      let(:text) { 'まっちゃ' }
      it { is_expected.to eq 'mattya' }
    end

    context 'given "ッ" before "t"' do
      let(:text) { 'マッチャ' }
      it { is_expected.to eq 'mattya' }
    end

    context 'given "n"' do
      let(:text) { 'こんじき' }
      it { is_expected.to eq 'konziki' }
    end

    context 'given "n" before "b"' do
      let(:text) { 'しんばしいろ' }
      it { is_expected.to eq 'sinbasiiro' }
    end

    context 'given "n" before "m"' do
      let(:text) { 'ほんむらさき' }
      it { is_expected.to eq 'honmurasaki' }
    end

    context 'given "n" before "p"' do
      let(:text) { 'たんぽぽいろ' }
      it { is_expected.to eq 'tanpopoiro' }
    end

    context 'given "oo"' do
      let(:text) { 'まそおいろ' }
      it { is_expected.to eq 'masoiro' }
    end

    context 'given "oo" at the end of the text' do
      let(:text) { 'まそお' }
      it { is_expected.to eq 'maso' }
    end

    context 'given "ou"' do
      let(:text) { 'きょうむらさき' }
      it { is_expected.to eq 'kyomurasaki' }
    end

    context 'given "uu"' do
      let(:text) { 'りきゅうちゃ' }
      it { is_expected.to eq 'rikyutya' }
    end

    context 'given Windows-31J text' do
      let(:text) { 'あ'.encode(Encoding::Windows_31J) }
      it { is_expected.to eq 'a' }
    end

    context 'given upcase option' do
      subject { described_class.nihon('さくらいろ', true) }
      it { is_expected.to eq 'SAKURAIRO' }
    end
  end

  describe '.kunrei' do
    subject { described_class.kunrei(text) }

    context 'given "し"' do
      let(:text) { 'し' }
      it { is_expected.to eq 'si' }
    end

    context 'given "シ"' do
      let(:text) { 'シ' }
      it { is_expected.to eq 'si' }
    end

    context 'given "しゃ"' do
      let(:text) { 'しゃ' }
      it { is_expected.to eq 'sya' }
    end

    context 'given "シャ"' do
      let(:text) { 'シャ' }
      it { is_expected.to eq 'sya' }
    end

    context 'given "しゅ"' do
      let(:text) { 'しゅ' }
      it { is_expected.to eq 'syu' }
    end

    context 'given "シュ"' do
      let(:text) { 'シュ' }
      it { is_expected.to eq 'syu' }
    end

    context 'given "しょ"' do
      let(:text) { 'しょ' }
      it { is_expected.to eq 'syo' }
    end

    context 'given "ショ"' do
      let(:text) { 'ショ' }
      it { is_expected.to eq 'syo' }
    end

    context 'given "ち"' do
      let(:text) { 'ち' }
      it { is_expected.to eq 'ti' }
    end

    context 'given "チ"' do
      let(:text) { 'チ' }
      it { is_expected.to eq 'ti' }
    end

    context 'given "つ"' do
      let(:text) { 'つ' }
      it { is_expected.to eq 'tu' }
    end

    context 'given "ツ"' do
      let(:text) { 'ツ' }
      it { is_expected.to eq 'tu' }
    end

    context 'given "ちゃ"' do
      let(:text) { 'ちゃ' }
      it { is_expected.to eq 'tya' }
    end

    context 'given "チャ"' do
      let(:text) { 'チャ' }
      it { is_expected.to eq 'tya' }
    end

    context 'given "ちゅ"' do
      let(:text) { 'ちゅ' }
      it { is_expected.to eq 'tyu' }
    end

    context 'given "チュ"' do
      let(:text) { 'チュ' }
      it { is_expected.to eq 'tyu' }
    end

    context 'given "ちょ"' do
      let(:text) { 'ちょ' }
      it { is_expected.to eq 'tyo' }
    end

    context 'given "チョ"' do
      let(:text) { 'チョ' }
      it { is_expected.to eq 'tyo' }
    end

    context 'given "ふ"' do
      let(:text) { 'ふ' }
      it { is_expected.to eq 'hu' }
    end

    context 'given "フ"' do
      let(:text) { 'フ' }
      it { is_expected.to eq 'hu' }
    end

    context 'given "ゐ"' do
      let(:text) { 'ゐ' }
      it { is_expected.to eq 'i' }
    end

    context 'given "ヰ"' do
      let(:text) { 'ヰ' }
      it { is_expected.to eq 'i' }
    end

    context 'given "ゑ"' do
      let(:text) { 'ゑ' }
      it { is_expected.to eq 'e' }
    end

    context 'given "ヱ"' do
      let(:text) { 'ヱ' }
      it { is_expected.to eq 'e' }
    end

    context 'given "を"' do
      let(:text) { 'を' }
      it { is_expected.to eq 'o' }
    end

    context 'given "ヲ"' do
      let(:text) { 'ヲ' }
      it { is_expected.to eq 'o' }
    end

    context 'given "じ"' do
      let(:text) { 'じ' }
      it { is_expected.to eq 'zi' }
    end

    context 'given "ジ"' do
      let(:text) { 'ジ' }
      it { is_expected.to eq 'zi' }
    end

    context 'given "じゃ"' do
      let(:text) { 'じゃ' }
      it { is_expected.to eq 'zya' }
    end

    context 'given "ジャ"' do
      let(:text) { 'ジャ' }
      it { is_expected.to eq 'zya' }
    end

    context 'given "じゅ"' do
      let(:text) { 'じゅ' }
      it { is_expected.to eq 'zyu' }
    end

    context 'given "ジュ"' do
      let(:text) { 'ジュ' }
      it { is_expected.to eq 'zyu' }
    end

    context 'given "じょ"' do
      let(:text) { 'じょ' }
      it { is_expected.to eq 'zyo' }
    end

    context 'given "ジョ"' do
      let(:text) { 'ジョ' }
      it { is_expected.to eq 'zyo' }
    end

    context 'given "ぢ"' do
      let(:text) { 'ぢ' }
      it { is_expected.to eq 'zi' }
    end

    context 'given "ヂ"' do
      let(:text) { 'ヂ' }
      it { is_expected.to eq 'zi' }
    end

    context 'given "づ"' do
      let(:text) { 'づ' }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ヅ"' do
      let(:text) { 'ヅ' }
      it { is_expected.to eq 'zu' }
    end

    context 'given "ぢゃ"' do
      let(:text) { 'ぢゃ' }
      it { is_expected.to eq 'zya' }
    end

    context 'given "ヂャ"' do
      let(:text) { 'ヂャ' }
      it { is_expected.to eq 'zya' }
    end

    context 'given "ぢゅ"' do
      let(:text) { 'ぢゅ' }
      it { is_expected.to eq 'zyu' }
    end

    context 'given "ヂュ"' do
      let(:text) { 'ヂュ' }
      it { is_expected.to eq 'zyu' }
    end

    context 'given "ぢょ"' do
      let(:text) { 'ぢょ' }
      it { is_expected.to eq 'zyo' }
    end

    context 'given "ヂョ"' do
      let(:text) { 'ヂョ' }
      it { is_expected.to eq 'zyo' }
    end

    context 'given "っ"' do
      let(:text) { 'いっこんぞめ' }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "ッ"' do
      let(:text) { 'イッコンゾメ' }
      it { is_expected.to eq 'ikkonzome' }
    end

    context 'given "っ" before "t"' do
      let(:text) { 'まっちゃ' }
      it { is_expected.to eq 'mattya' }
    end

    context 'given "ッ" before "t"' do
      let(:text) { 'マッチャ' }
      it { is_expected.to eq 'mattya' }
    end

    context 'given "n"' do
      let(:text) { 'こんじき' }
      it { is_expected.to eq 'konziki' }
    end

    context 'given "n" before "b"' do
      let(:text) { 'しんばしいろ' }
      it { is_expected.to eq 'sinbasiiro' }
    end

    context 'given "n" before "m"' do
      let(:text) { 'ほんむらさき' }
      it { is_expected.to eq 'honmurasaki' }
    end

    context 'given "n" before "p"' do
      let(:text) { 'たんぽぽいろ' }
      it { is_expected.to eq 'tanpopoiro' }
    end

    context 'given "oo"' do
      let(:text) { 'まそおいろ' }
      it { is_expected.to eq 'masoiro' }
    end

    context 'given "oo" at the end of the text' do
      let(:text) { 'まそお' }
      it { is_expected.to eq 'maso' }
    end

    context 'given "ou"' do
      let(:text) { 'きょうむらさき' }
      it { is_expected.to eq 'kyomurasaki' }
    end

    context 'given "uu"' do
      let(:text) { 'りきゅうちゃ' }
      it { is_expected.to eq 'rikyutya' }
    end

    context 'given Windows-31J text' do
      let(:text) { 'あ'.encode(Encoding::Windows_31J) }
      it { is_expected.to eq 'a' }
    end

    context 'given upcase option' do
      subject { described_class.nihon('さくらいろ', true) }
      it { is_expected.to eq 'SAKURAIRO' }
    end
  end
end
