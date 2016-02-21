# coding: utf-8

module RomajiKit

  # Class to convert kana to romaji
  class Converter
    MONOGRAPHS = {
      あ: 'a', い: 'i', う: 'u', え: 'e', お: 'o',
      ア: 'a', イ: 'i', ウ: 'u', エ: 'e', オ: 'o',

      か: 'ka', き: 'ki', く: 'ku', け: 'ke', こ: 'ko',
      カ: 'ka', キ: 'ki', ク: 'ku', ケ: 'ke', コ: 'ko',

      が: 'ga', ぎ: 'gi', ぐ: 'gu', げ: 'ge', ご: 'go',
      ガ: 'ga', ギ: 'gi', グ: 'gu', ゲ: 'ge', ゴ: 'go',

      さ: 'sa', し: 'shi', す: 'su', せ: 'se', そ: 'so',
      サ: 'sa', シ: 'shi', ス: 'su', セ: 'se', ソ: 'so',

      ざ: 'za', じ: 'ji', ず: 'zu', ぜ: 'ze', ぞ: 'zo',
      ザ: 'za', ジ: 'ji', ズ: 'zu', ゼ: 'ze', ゾ: 'zo',

      た: 'ta', ち: 'chi', つ: 'tsu', て: 'te', と: 'to',
      タ: 'ta', チ: 'chi', ツ: 'tsu', テ: 'te', ト: 'to',

      だ: 'da', ぢ: 'ji', づ: 'zu', で: 'de', ど: 'do',
      ダ: 'da', ヂ: 'ji', ヅ: 'zu', デ: 'de', ド: 'do',

      な: 'na', に: 'ni', ぬ: 'nu', ね: 'ne', の: 'no',
      ナ: 'na', ニ: 'ni', ヌ: 'nu', ネ: 'ne', ノ: 'no',

      は: 'ha', ひ: 'hi', ふ: 'fu', へ: 'he', ほ: 'ho',
      ハ: 'ha', ヒ: 'hi', フ: 'fu', ヘ: 'he', ホ: 'ho',

      ば: 'ba', び: 'bi', ぶ: 'bu', べ: 'be', ぼ: 'bo',
      バ: 'ba', ビ: 'bi', ブ: 'bu', ベ: 'be', ボ: 'bo',

      ぱ: 'pa', ぴ: 'pi', ぷ: 'pu', ぺ: 'pe', ぽ: 'po',
      パ: 'pa', ピ: 'pi', プ: 'pu', ペ: 'pe', ポ: 'po',

      ま: 'ma', み: 'mi', む: 'mu', め: 'me', も: 'mo',
      マ: 'ma', ミ: 'mi', ム: 'mu', メ: 'me', モ: 'mo',

      や: 'ya', ゆ: 'yu', よ: 'yo',
      ヤ: 'ya', ユ: 'yu', ヨ: 'yo',

      ら: 'ra', り: 'ri', る: 'ru', れ: 're', ろ: 'ro',
      ラ: 'ra', リ: 'ri', ル: 'ru', レ: 're', ロ: 'ro',

      わ: 'wa', ゐ: 'i', ゑ: 'e', を: 'o', ん: 'n',
      ワ: 'wa', ヰ: 'i', ヱ: 'e', ヲ: 'o', ン: 'n',

      ぁ: 'a', ぃ: 'i', ぅ: 'u', ぇ: 'e', ぉ: 'o',
      ァ: 'a', ィ: 'i', ゥ: 'u', ェ: 'e', ォ: 'o',

      ゃ: 'ya', ゅ: 'yu', ょ: 'yo',
      ャ: 'ya', ュ: 'yu', ョ: 'yo',

      ゔ: 'bu', ヴ: 'bu', ー: '', ＿: '_'
    }

    DIGRAPHS = {
      きゃ: 'kya', きゅ: 'kyu', きょ: 'kyo',
      キャ: 'kya', キュ: 'kyu', キョ: 'kyo',

      ぎゃ: 'gya', ぎゅ: 'gyu', ぎょ: 'gyo',
      ギャ: 'gya', ギュ: 'gyu', ギョ: 'gyo',

      しゃ: 'sha', しゅ: 'shu', しょ: 'sho',
      シャ: 'sha', シュ: 'shu', ショ: 'sho',

      じゃ: 'ja', じゅ: 'ju', じょ: 'jo',
      ジャ: 'ja', ジュ: 'ju', ジョ: 'jo',

      ちゃ: 'cha', ちゅ: 'chu', ちょ: 'cho',
      チャ: 'cha', チュ: 'chu', チョ: 'cho',

      ぢゃ: 'ja', ぢゅ: 'ju', ぢょ: 'jo',
      ヂャ: 'ja', ヂュ: 'ju', ヂョ: 'jo',

      にゃ: 'nya', にゅ: 'nyu', にょ: 'nyo',
      ニャ: 'nya', ニュ: 'nyu', ニョ: 'nyo',

      ひゃ: 'hya', ひゅ: 'hyu', ひょ: 'hyo',
      ヒャ: 'hya', ヒュ: 'hyu', ヒョ: 'hyo',

      びゃ: 'bya', びゅ: 'byu', びょ: 'byo',
      ビャ: 'bya', ビュ: 'byu', ビョ: 'byo',

      ぴゃ: 'pya', ぴゅ: 'pyu', ぴょ: 'pyo',
      ピャ: 'pya', ピュ: 'pyu', ピョ: 'pyo',

      みゃ: 'mya', みゅ: 'myu', みょ: 'myo',
      ミャ: 'mya', ミュ: 'myu', ミョ: 'myo',

      りゃ: 'rya', りゅ: 'ryu', りょ: 'ryo',
      リャ: 'rya', リュ: 'ryu', リョ: 'ryo'
    }

    NIHON_MONOGRAPHS = {
      し: 'si', ち: 'ti', つ: 'tu', ふ: 'hu', じ: 'zi', ぢ: 'di', づ: 'du',
      シ: 'si', チ: 'ti', ツ: 'tu', フ: 'hu', ジ: 'zi', ヂ: 'di', ヅ: 'du',

      ゐ: 'wi', ゑ: 'we', を: 'wo',
      ヰ: 'wi', ヱ: 'we', ヲ: 'wo'
    }

    NIHON_DIGRAPHS = {
      しゃ: 'sya', しゅ: 'syu', しょ: 'syo',
      シャ: 'sya', シュ: 'syu', ショ: 'syo',

      じゃ: 'zya', じゅ: 'zyu', じょ: 'zyo',
      ジャ: 'zya', ジュ: 'zyu', ジョ: 'zyo',

      ちゃ: 'tya', ちゅ: 'tyu', ちょ: 'tyo',
      チャ: 'tya', チュ: 'tyu', チョ: 'tyo',

      ぢゃ: 'dya', ぢゅ: 'dyu', ぢょ: 'dyo',
      ヂャ: 'dya', ヂュ: 'dyu', ヂョ: 'dyo'
    }

    # Convert kana to Hepburn romaji
    #
    # @param text [String] Kana text
    # @param is_upcase [Boolean] Whether to return upper case
    def self.hepburnize(text, is_upcase = false)
      result_text = text.dup

      result_text = romanize(result_text, DIGRAPHS)
      result_text = romanize(result_text, MONOGRAPHS)

      # Double consonants: 促音
      result_text.gsub!(/[っッ]c/, 'tc')
      result_text.gsub!(/[っッ](.)/, '\1\1')

      # Syllabic n: 撥音
      result_text.gsub!(/n([bmp])/, 'm\1')

      # Long vowels: 長音
      result_text.gsub!(/oo(.+)/, 'o\1')
      result_text.gsub!(/ou/, 'o')
      result_text.gsub!(/uu/, 'u')

      result_text.upcase! if is_upcase

      result_text
    end

    # Convert kana to Nihon-shiki romaji
    #
    # @param text [String] Kana text
    # @param is_upcase [Boolean] Whether to return upper case
    def self.nihon(text, is_upcase = false)
      result_text = text.dup

      result_text = romanize(result_text, DIGRAPHS.merge(NIHON_DIGRAPHS))
      result_text = romanize(result_text, MONOGRAPHS.merge(NIHON_MONOGRAPHS))

      # Double consonants: 促音
      result_text.gsub!(/[っッ](.)/, '\1\1')

      # Long vowels: 長音
      result_text.gsub!(/ou|oo/, 'o')
      result_text.gsub!(/uu/, 'u')

      result_text.upcase! if is_upcase

      result_text
    end

    def self.romanize(text, chars)
      result_text = text.dup

      chars.each do |kana, romaji|
        result_text.gsub!(/#{kana}/, romaji)
      end

      result_text
    end

    private_class_method :romanize
  end
end
