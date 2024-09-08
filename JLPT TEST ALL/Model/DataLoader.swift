//
//  DataLoader.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import Foundation

func JLPTN5loadLocalData() -> [Question] {
    // 샘플 질문 데이터 (질문 내용, 정답, 선택지 등)
    var questions = [
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nあしたは 雨ですか。",
            options: ["ゆき", "はれ", "くもり", "あめ"],
            answer: "あめ",
            underlinedKeywords: ["雨"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nきょうしつで 書いて ください。",
            options: ["かいて", "きいて", "はいて", "ひいて"],
            answer: "かいて",
            underlinedKeywords: ["書いて"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nしゃしんは はこの 中に あります。",
            options: ["そば", "そと", "なか", "よこ"],
            answer: "なか",
            underlinedKeywords: ["中"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nこの いすは 小さいです。",
            options: ["ちいさい", "ちさい", "しいさい", "しさい"],
            answer: "ちいさい",
            underlinedKeywords: ["小さい"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nあしたは 火よう日です。",
            options: ["どようび", "すいようび", "かようび", "にちようび"],
            answer: "かようび",
            underlinedKeywords: ["火よう日"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nきれいな 空ですね。",
            options: ["いえ", "うみ", "にわ", "そら"],
            answer: "そら",
            underlinedKeywords: ["空"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nせいとは 百人 います。",
            options: ["ひゃくにん", "びゃくにん", "ひゃくじん", "びゃくじん"],
            answer: "ひゃくにん",
            underlinedKeywords: ["百人"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\n魚が たくさん いますよ。",
            options: ["ねこ", "とり", "いぬ", "さかな"],
            answer: "さかな",
            underlinedKeywords: ["魚"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nパンを 半分 ともだちに あげました。",
            options: ["はんふん", "はんぶん", "ほんぶん", "ほんふん"],
            answer: "はんぶん",
            underlinedKeywords: ["半分"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nぎんこうと スーパーの 間に ほそい みちが あります。",
            options: ["あいた", "となり", "あいだ", "どなり"],
            answer: "あいた",
            underlinedKeywords: ["間"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nたまごを 三つ とって ください。",
            options: ["いつつ", "みっつ", "さんつ", "ごつ"],
            answer: "みっつ",
            underlinedKeywords: ["三つ"]
        ),
        Question(
            question:"__の ことばは ひらがなで どう かきますか。\nきょうは 元気が いいですね。",
            options: ["けんき", "げんき", "でんき", "てんき"],
            answer: "げんき",
            underlinedKeywords: ["元気"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nこの わいしゃつを ください。",
            options: ["ウイシャソ", "ウイシャツ", "ワイシャソ", "ワイシャツ"],
            answer: "ワイシャツ",
            underlinedKeywords: ["わいしゃつ"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nわたしの くには かわが おおいです。",
            options: ["花", "山", "川", "木"],
            answer: "川",
            underlinedKeywords: ["かわ"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nヤンさんの がっこうは どこですか。",
            options: ["宇校", "学校", "宇枚", "学枚"],
            answer: "学校",
            underlinedKeywords: ["がっこう"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nこの ざっしを みて ください。",
            options: ["見て", "買て", "貝て", "学枚"],
            answer: "見て",
            underlinedKeywords: ["みて"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nこの カメラは たかいですね。",
            options: ["高い", "安い", "古い", "新い"],
            answer: "高い",
            underlinedKeywords: ["たかい"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nきのうは かいしゃを やすみました。",
            options: ["公仕", "公社", "会仕", "会社"],
            answer: "会社",
            underlinedKeywords: ["かいしゃ"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nまだ いわないで ください。",
            options: ["行わないで", "立わないで", "言わないで", "食わないで"],
            answer: "会社",
            underlinedKeywords: ["いわないで"]
        ),
        Question(
            question:"__の ことばは どう かきますか。\nらいげつ けっこんします。",
            options: ["今月", "来月", "来週", "今週"],
            answer: "来月",
            underlinedKeywords: ["らいげつ"]
        ),
        Question(
            question:"( )に なにが はいりますか。\nわたしの へやは この アパートの 2( )です。",
            options: ["ほん", "さつ", "だい", "かい"],
            answer: "かい"
        ),
        Question(
            question:"( )に なにが はいりますか。\nその ナイフで りんごを ( ) ください。 ",
            options: ["おきて", "つけて", "しめて", "きって"],
            answer: "きって"
        ),
        Question(
            question:"( )に なにが はいりますか。\n( )を わすれましたから、じかんが わかりません。",
            options: ["じしょ", "ちず", "とけい", "さいふ"],
            answer: "とけい"
        ),
        Question(
            question:"( )に なにが はいりますか。\nわたしの うちは えきに ちかいですから、( )です。 ",
            options: ["べんり", "じょうぶ", "いっぱい", "へた"],
            answer: "べんり"
        ),
        Question(
            question:"( )に なにが はいりますか。\nなつやすみは まいにち ( )で およぎました。 ",
            options: ["レストラン", "プール", "エレベーター", "ビル"],
            answer: "プール"
        ),
        Question(
            question:"( )に なにが はいりますか。\nしらない ことばが ありましたから、せんせいに\n(  )しました。",
            options: ["しつもん", "べんきょう", "れんしゅう", "じゅぎょう"],
            answer: "しつもん"
        ),
        Question(
            question:"( )に なにが はいりますか。\nこの へやは あついですから、( )を あけましょう。",
            options: ["おふろ", "まど", "エアコン", "テーブル"],
            answer: "エアコン"
        ),
        Question(
            question:"( )に なにが はいりますか。\nきのうは がっこうで たくさん かんじを ( )。",
            options: ["うりました", "もちました", "おぼえました", "こまりました"],
            answer: "おぼえました"
        ),
        Question(
            question:"( )に なにが はいりますか。\nこの コーヒーは、さとうを たくさん いれましたから、\n ( )です。",
            options: ["わかい", "くろい", "まるい", "あまい"],
            answer: "あまい"
        ),
        Question(
            question:"( )に なにが はいりますか。\nこの コーヒーは、さとうを たくさん いれましたから、 ( )です。",
            options: ["ふいて", "いそいで", "とんで", "はしって"],
            answer: "ふいて"
        ),
        Question(
            question:"__の ぶんと だいたい おなじ いみの ぶんが あります。\nいちばん いい ものを ひとつ えらんで ください。\nこれは りょうしんの しゃしんです。",
            options: ["これは そふと そぼの しゃしんです。", "これは ちちと ははの しゃしんです。", "これは あにと おとうとの しゃしんです。", "これは あねと いもうとの しゃしんです。"],
            answer: "これは ちちと ははの しゃしんです。",
            underlinedKeywords: ["これは りょうしんの しゃしんです。"]
        ),
        Question(
            question:"__の ぶんと だいたい おなじ いみの ぶんが あります。\nいちばん いい ものを ひとつ えらんで ください。\nこの ダンスは やさしいです。",
            options: ["この ダンスは かんたんです。", "この ダンスは たいへんです。", "この ダンスは たのしいです。", "この ダンスは つまらないです。"],
            answer: "この ダンスは かんたんです。",
            underlinedKeywords: ["この ダンスは やさしいです。"]
        ),
        Question(
            question:"__の ぶんと だいたい おなじ いみの ぶんが あります。\nいちばん いい ものを ひとつ えらんで ください。\nふくを せんたくしました。",
            options: ["ふくを ぬぎました。", "ふくを わたしました。", "ふくを あらいました。", "ふくを きました。"],
            answer: "ふくを あらいました。",
            underlinedKeywords: ["ふくを せんたくしました。"]
        ),
        Question(
            question:"__の ぶんと だいたい おなじ いみの ぶんが あります。\nいちばん いい ものを ひとつ えらんで ください。\nこの へやは くらいですね。",
            options: ["この へやは あかるいですね。", "この へやは あかるくないですね。", "この へやは しずかじゃ ないですね。", "この へやは しずかですね。"],
            answer: "この へやは あかるくないですね。",
            underlinedKeywords: ["この へやは くらいですね。"]
        ),
        Question(
            question:"__の ぶんと だいたい おなじ いみの ぶんが あります。\nいちばん いい ものを ひとつ えらんで ください。\nリーさんは もりさんに ペンを かしました。",
            options: ["リーさんは もりさんに ペンを もらいました。", "もりさんは リーさんに ペンを もらいました。", "リーさんは もりさんに ペンを かりました。", "もりさんは リーさんに ペンを かりました。"],
            answer: "もりさんは リーさんに ペンを かりました。",
            underlinedKeywords: ["リーさんは もりさんに ペンを かしました。"]
        ),
    ]
    questions.shuffle()
    return questions
}

func JLPTN5GrammarloadLocalData() -> [Question] {
    var questions = [
        Question(
            question:"( )に 何を 入れますか。\n私は あしたの ひこうき ( ) 国へ 帰ります。",
            options: ["に", "で", "か", "を"],
            answer: "で"
        ),
        Question(
            question:"( )に 何を 入れますか。\n先週 デパートで かばん ( ) くつなどを 買いました。",
            options: ["は", "も", "へ", "や"],
            answer: "や"
        ),
        Question(
            question:"( )に 何を 入れますか。\n私は 毎朝 7時ごろ 家( )出ます。",
            options: ["を", "と", "が", "で"],
            answer: "を"
        ),
        Question(
            question:"( )に 何を 入れますか。\nきのう スーパーで 田中さん ( ) 会いました。",
            options: ["を", "の", "で", "に"],
            answer: "に"
        ),
        Question(
            question:"( )に 何を 入れますか。\n私の うちの ほんだなは、きょねん 父 ( ) 作りました。",
            options: ["や", "が", "を", "で"],
            answer: "が"
        ),
        Question(
            question:"( )に 何を 入れますか。\n今日 やおやで りんごを 買いました。五つ ( ) 300円でした。",
            options: ["に", "と", "で", "や"],
            answer: "で"
        ),
        Question(
            question:"( )に 何を 入れますか。\nきのう（ ）歩しかったですが、今日（ )寒くないです。",
            options: ["は/は", "に/に", "も/も", "を/を"],
            answer: "は/は"
        ),
        Question(
            question:"( )に 何を 入れますか。\n南町は、海がきれい（ ）、静かです。",
            options: ["も", "や", "で", "と"],
            answer: "で"
        ),
        Question(
            question:"( )に 何を 入れますか。\n前川「林さん、( ) に ある カメラは 林さんのですか。」\n林 「いいえ。田中さんのですよ。」",
            options: ["そこ", "どこ", "その", "どの"],
            answer: "そこ"        
        ),
        Question(
            question:"( )に 何を 入れますか。\nA「先週 はじめて スキーを しました。」\nB「そうですか。( ) でしたか。」\nA「とても 楽しかったです。」",
            options: ["いくつ", "いかが", "どなた", "どちら"],
            answer: "いかが"
        ),
        Question(
            question:"( )に 何を 入れますか。\n森 「ケンさん、大学の じゅぎょうは 始まりましたか。」\nケン「いいえ、( ) です。来週 始まります。」",
            options: ["よく", "もう", "ちょっと", "まだ"],
            answer: "まだ"
        ),
        Question(
            question:"( )に 何を 入れますか。\n(びょういんで)\nいしゃ「今日から 一週間 薬を 飲んで、来週の 月曜日に (  ) 来て ください 。」",
            options: ["たくさん", "あまり", "また", "だんだん"],
            answer: "まだ"
        ),
        Question(
            question:"( )に 何を 入れますか。\n父は 毎朝 コーヒーを (   ) ながら 新聞を 読みます。",
            options: ["飲む", "飲み", "飲んで", "飲んだ"],
            answer: "飲んで"
        ),
        Question(
            question:"( )に 何を 入れますか。\n私は 小さいとき、なっとうが 好き ( ) でした。",
            options: ["ない", "じゃない", "ありません", "じゃありません"],
            answer: "じゃありません"
        ),
        Question(
            question:"( )に 何を 入れますか。\n(ケーキ屋で)\n店の 人「いらっしゃいませ。」\n山下 「すみません、いちごの ケーキを 二つ ( )。」\n店の 人「はい。ありがとうございます。800円です。」",
            options: ["ありますか", "どうぞ", "ください", "ほしいですか"],
            answer: "ください"
        ),
        Question(
            question:"( )に 何を 入れますか。\nリー「日曜日に、私の 家で アンさんと べんきょうを します。キムさんも ( )。」\nキム「あ、行きたいです。」",
            options: ["来ませんか", "来て いますか", "来ませんでしたか", "来て いましたか"],
            answer: "来ませんか"
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\nA「すみません、つぎの __ ★ __ __ まがってください。」\nB「はい、わかりました。」",
            options: ["に", "しんごう", "右", "を"],
            answer: "を"
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n私は 日曜日に 兄 __ __ ★ __ 出かけました。 ",
            options: ["の", "と", "子ども", "いっしょに"],
            answer: "と"
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\nきのう 買った おかしは __ __ ★ __ でした。",
            options: ["色", "きれい", "が", "まるくて"],
            answer: "が"
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n駅の __ __ ★ __ で ざっしを 買いました。",
            options: ["に", "ある", "近く", "本屋"],
            answer: "ある"
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n先週 __ __ ★ __ の こうちゃは とても おいしかったです。",
            options: ["もらった", "ともだち", "外国", "に"],
            answer: "もらった"
        ),
    ]
        
    questions.shuffle()
    return questions
}

func JLPTN5ReadingloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"けさ 「わたし」は 学校へ 行く 前に、何を 食べましたか。",
            options: ["ご飯と なっとうを 食べました。", "パンと たまごを 食べました。", "なにも 食べませんでした。", "バナナを 食べました。"],
            answer: "なにも 食べませんでした。",
            imageName: "JLPTN5ReadingQuestionImage" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"大学は 「日本語」の クラスの 学生に 何が 言いたいですか。",
            options: ["今日 クラスは ありません。しゅくだいは 午後 出して ください。", "今日 クラスは ありません。しゅくだいは 来週 出して ください。", "今日 クラスが ありますが、しゅくだいは 来週 出して ください。", "今日 クラスが ありますから、しゅくだいを 出して ください。"],
            answer: "今日 クラスは ありません。しゅくだいは 来週 出して ください。",
            imageName: "JLPTN5ReadingQuestionImage1" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"この メモを 読んで、ボゴさんは はじめに 何を しますか。",
            options: ["中西さんに お金を もらいます。", "中西さんに にもつと お金を わたします。", "ゆうびんきょくの 人に にもつを もらいます。", "ゆうびんきょくの 人に にもつと お金を わたします。"],
            answer: "中西さんに お金を もらいます。",
            imageName: "JLPTN5ReadingQuestionImage2" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"どうして ①けさは 5時に 起きましたか。",
            options: ["朝から ゆうがたまで サッカーを したかったから", "かんじテストの べんきょうが したかったから", "シャワーを あびて、朝ご飯を 食べたかったから", "学校へ 行って、べんきょうが したかったから"],
            answer: "朝から ゆうがたまで サッカーを したかったから",
            imageName: "JLPTN5ReadingQuestionImage3" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"チンさんは 何を ②まちがえましたか。",
            options: ["かんじの テキスト", "かんじの テキストの ページ", "かんじの テストが ある 日", "かんじの テストを する きょうしつ"],
            answer: "かんじの テキスト",
            imageName: "JLPTN5ReadingQuestionImage3" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"パブロさんは 高木大学に 行きたいです。花田駅か 糸川駅から乗ります。駅から 大学まで かかる お金は 500円までで、時間はみじかいほうが いいです。パブロさんは どの 行き方で 行きますか。",
            options: ["①", "②", "③", "④"],
            answer: "④",
            imageName: "JLPTN5ReadingQuestionImage4" // Asset Catalog의 이미지 이름
        ),
    ]
  return questions
}

let JLPTN5AUDIOTESTaudioQuestions: [AudioQuestion] = [
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N5Q1", startTime: 0, endTime: 46, images: ["AudioTestImage9"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "1", audioFile: "N5Q2", startTime: 0, endTime: 45, images: ["AudioTestImage10"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "4", audioFile: "N5Q3", startTime: 0, endTime: 47, images: ["AudioTestImage11"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N5Q4", startTime: 0, endTime: 55, images: ["AudioTestImage12"]),
    AudioQuestion(options: ["げつようび", "かようび", "もくようび", "きんようび"], answer: "げつようび", audioFile: "N5Q5", startTime: 0, endTime: 72),
    AudioQuestion(options: ["1かいの 3ばん", "1かいの 4ばん", "2かいの 3ばん", "2かいの 4ばん"], answer: "2かいの 4ばん", audioFile: "N5Q6", startTime: 0, endTime: 48),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N5Q7", startTime: 0, endTime: 58, images: ["AudioTestImage13"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "4", audioFile: "N5Q8", startTime: 0, endTime: 40, images: ["AudioTestImage14"]),
    AudioQuestion(options: ["ひとり", "ふたり", "さんにん", "よにん"], answer: "ひとり", audioFile: "N5Q9", startTime: 0, endTime: 42),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N5Q10", startTime: 0, endTime: 60, images: ["AudioTestImage15"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "1", audioFile: "N5Q11", startTime: 0, endTime: 63, images: ["AudioTestImage16"]),
    AudioQuestion(options: ["1 じかんはん", "3 じかんはん", "5じかん", "6じかん"], answer: "3 じかんはん", audioFile: "N5Q12", startTime: 0, endTime: 67),
    AudioQuestion(options: ["カレー", "ピザ", "すし", "そば"], answer: "ピザ", audioFile: "N5Q13", startTime: 0, endTime: 59),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N5Q14", startTime: 0, endTime: 28, images: ["AudioTestImage17"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N5Q15", startTime: 0, endTime: 27, images: ["AudioTestImage18"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N5Q16", startTime: 0, endTime: 25, images: ["AudioTestImage19"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N5Q17", startTime: 0, endTime: 26, images: ["AudioTestImage20"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N5Q18", startTime: 0, endTime: 30, images: ["AudioTestImage21"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N5Q19", startTime: 0, endTime: 19),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N5Q20", startTime: 0, endTime: 21),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N5Q21", startTime: 0, endTime: 24),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N5Q22", startTime: 0, endTime: 22),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N5Q23", startTime: 0, endTime: 21),
]

func JLPTN4loadLocalData() -> [Question] {
    // 샘플 질문 데이터 (질문 내용, 정답, 선택지 등)
    var questions = [
        Question(
            question: "_の ことばは ひらがなで どう かきますか。\n今日は とても 楽しかったですね。",
               options: ["いそがしかった", "すずしかった", "たのしかった", "かなしかった"],
               answer: "たのしかった",
               underlinedKeywords: ["楽しかった"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nわたしは この 味が すきです。",
            options: ["かたち", "いろ", "におい", "あじ"],
            answer: "あじ",
            underlinedKeywords: ["味"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nこの あたりは ちょっと 不便ですね。",
            options: ["ふべん", "ぶべん", "ふへん", "ぶへん"],
            answer: "ふべん",
            underlinedKeywords: ["不便"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nやさいを 切って ください。",
            options: ["とって", "きって", "あらって", "もって"],
            answer: "きって",
            underlinedKeywords: ["切って"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nはやしさん以外は みんな 来ました。",
            options: ["にそと", "にがい", "いそと", "いがい"],
            answer: "いがい",
            underlinedKeywords: ["以外"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nまどから ずっと 雲を 見て いました。",
            options: ["ほし", "ゆき", "くも", "そら"],
            answer: "ゆき",
            underlinedKeywords: ["雲"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nその 電車は 急行ですよ。",
            options: ["きゅこ", "きゅこう", "きゅうこ", "きゅうこう"],
            answer: "きゅうこう",
            underlinedKeywords: ["急行"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nこれは 写さないで ください。",
            options: ["おさないで", "うつさないで", "けさないで", "おとさないで"],
            answer: "うつさないで",
            underlinedKeywords: ["写さないで"]
        ),
        Question(
            question:"_の ことばは ひらがなで どう かきますか。\nその いけんには 反対です。",
            options: ["はんたい", "ほんたい", "はんだい", "ほんだい"],
            answer: "はんたい",
            underlinedKeywords: ["反対"]
        ),
        Question(
            question:"_の ことばは どう かきますか。いちばん いい ものを ひとつ えらんで ください。\nくろい くつしたが ほしいです。",
            options: ["白い", "黒い", "赤い", "青い"],
            answer: "黒い",
            underlinedKeywords: ["くろい"]
        ),
        Question(
            question:"_の ことばは どう かきますか。いちばん いい ものを ひとつ えらんで ください。\nなつやすみの けいかくは まだ きまって いません。",
            options: ["計書", "訂画", "計画", "訂書"],
            answer: "計画",
            underlinedKeywords: ["けいかく"]
        ),
        Question(
            question:"_の ことばは どう かきますか。いちばん いい ものを ひとつ えらんで ください。\nわたしは いしゃに なりたいです。",
            options: ["匠員", "医員", "匠者", "医者"],
            answer: "医者",
            underlinedKeywords: ["いしゃ"]
        ),
        Question(
            question:"_の ことばは どう かきますか。いちばん いい ものを ひとつ えらんで ください。\nあしたの よる かぞくと 出かけます。",
            options: ["夜", "昼", "夕", "朝"],
            answer: "夜",
            underlinedKeywords: ["よる"]
        ),
        Question(
            question:"_の ことばは どう かきますか。いちばん いい ものを ひとつ えらんで ください。\nかさを かして ください。",
            options: ["貨して", "資して", "貸して", "質して"],
            answer: "貸して",
            underlinedKeywords: ["かして"]
        ),
        Question(
            question:"_の ことばは どう かきますか。いちばん いい ものを ひとつ えらんで ください。\nあしたは サッカーの しあいが あります。",
            options: ["誡会", "誡合", "試会", "試合"],
            answer: "試合",
            underlinedKeywords: ["しあい"]
        ),
        Question(
            question:"( )に なにを いれますか。\nさとうさんが けがを したと 聞いて、みんな (  )しました。",
            options: ["しんぱい", "けいけん", "しつれい", "おじぎ"],
            answer: "しんぱい"
        ),
        Question(
            question:"( )に なにを いれますか。\nわたしには、しょうらい かしゅに なると いう(  )が あります。",
            options: ["けしき", "ゆめ", "おもいで", "せわ"],
            answer: "ゆめ"
        ),
        Question(
            question:"( )に なにを いれますか。\nリーさんも こんどの パーティーに(  )来て くださいね。",
            options: ["ひじょうに", "ぜひ", "じゅうぶん", "いつも"],
            answer: "ぜひ"
        ),
        Question(
            question:"( )に なにを いれますか。\nこれから きかいの つかいかたを ( )しますから、よく 聞いて ください。",
            options: ["じゅんび", "りよう", "せつめい", "せいさん"],
            answer: "せつめい"
        ),
        Question(
            question:"( )に なにを いれますか。\nはが わるいので、( ) ものは 食べられません。",
            options: ["きびしい", "かたい", "はやい", "ふかい"],
            answer: "かたい"
        ),
        Question(
            question:"( )に なにが はいりますか。\nもりさんを デートに (  )が、行けないと 言われました。",
            options: ["さそいました", "つたえました", "あんないしました", "しょうかいしました"],
            answer: "さそいました"
        ),
        Question(
            question:"( )に なにが はいりますか。\nわたしの むすこは、 1年で 5 (  )くらい せが 高く なりました。",
            options: ["グラム", "ばん", "けん", "センチ"],
            answer: "センチ"
        ),
        Question(
            question:"( )に なにが はいりますか。\nお店で 3だいの パソコンを ( )、いちばん かるい パソコンを えらびました。",
            options: ["かたづけて", "かぞえて", "くらべて", "はらって"],
            answer: "くらべて"
        ),
        Question(
            question:"( )に なにが はいりますか。\nたなかさんの いえの 電気が ついて いませんね。たなかさんは ( )の ようです。",
            options: ["うそ", "じゆう", "ちゅうし", "るす"],
            answer: "るす"
        ),
        Question(
            question:"( )に なにが はいりますか。\nへやの かぎを さがして いますが、まだ ( )。",
            options: ["見つかりません", "つかまえません", "しりません", "さわりません"],
            answer: "見つかりません"
        ),
        Question(
            question:"_の ぶんと だいたい おなじ いみの ぶんが あります。いちばん いい ものを ひとつ えらんでください。\nおとうとは あの きっさてんで アルバイトを して います。",
            options: ["おとうとは あの きっさてんで まって います。", "おとうとは あの きっさてんで はたらいて います。", "おとうとは あの きっさてんで コーヒーを 飲んで います。", "おとうとは あの きっさてんで 友だちと 話して います。"],
            answer: "おとうとは あの きっさてんで はたらいて います。",
            underlinedKeywords: ["おとうとは あの きっさてんで アルバイトを して います。"]
        ),
        Question(
            question:"_の ぶんと だいたい おなじ いみの ぶんが あります。いちばん いい ものを ひとつ えらんでください。\nわたしは すいえいが すきです。",
            options: ["わたしは はしるのが すきです。", "わたしは およぐのが すきです。", "わたしは ごはんを 食べるのが すきです。", "わたしは 本を 読むのが すきです。"],
            answer: "わたしは およぐのが すきです。",
            underlinedKeywords: ["わたしは すいえいが すきです。"]
        ),
        Question(
            question:"_の ぶんと だいたい おなじ いみの ぶんが あります。いちばん いい ものを ひとつ えらんでください。\nそれを 聞いて びっくりしました。",
            options: ["それを 聞いて わらいました。", "それを 聞いて こまりました。", "それを 聞いて おこりました。", "それを 聞いて おどろきました。"],
            answer: "それを 聞いて おどろきました。",
            underlinedKeywords: ["それを 聞いて びっくりしました。"]
        ),
        Question(
            question:"_の ぶんと だいたい おなじ いみの ぶんが あります。いちばん いい ものを ひとつ えらんでください。\nあの 人は うつくしいですね。",
            options: ["あの 人は きれいですね。", "あの 人は 元気ですね。", "あの 人は おもしろいですね。", "あの 人は わかいですね。"],
            answer: "あの 人は きれいですね。",
            underlinedKeywords: ["あの 人は うつくしいですね。"]
        ),
        Question(
            question:"_の ぶんと だいたい おなじ いみの ぶんが あります。いちばん いい ものを ひとつ えらんでください。\nこの 国は こめを ゆにゅうして います。",
            options: ["この 国は こめを ほかの 国に うって います。", "この 国は こめを ほかの 国から もらって います。", "この 国は こめを ほかの 国から 買って います。", "この 国は こめを ほかの 国に あげて います。"],
            answer: "この 国は こめを ほかの 国から 買って います。",
            underlinedKeywords: ["この 国は こめを ゆにゅうして います。"]
        ),
        Question(
            question:"つぎの ことばの つかいかたで いちばん いい ものを ひとつ えらんで ください。\nさいきん",
            options: ["さいきん りょうりが できたので、いっしょに 食べましょう。", "さいきん しゅくだいを 出して ください。", "きむらさんは さいきん けっこんした そうです。", "さいきん 電車が 来ますから、いそいで えきに 行きましょう。"],
            answer: "きむらさんは さいきん けっこんした そうです。"
        ),
        Question(
            question:"つぎの ことばの つかいかたで いちばん いい ものを ひとつ えらんで ください。\nおと",
            options: ["ラジオの おとが 大きいので、もう 少し 小さく して ください。", "日本語の おとが じょうずに なりたいので、毎日 たくさん 話します。", "店の 人に 大きな おとで 名前を よばれました。", "すずきさんが ギターで ゆうめいな おとを ひいて くれました。"],
            answer: "ラジオの おとが 大きいので、もう 少し 小さく して ください。"
        ),
        Question(
            question:"つぎの ことばの つかいかたで いちばん いい ものを ひとつ えらんで ください。\nけんがく",
            options: ["かばんが ほしいので、デパートに 行って けんがくします。", "わからない かんじは じしょで けんがくして ください。", "先生や 友だちと こうじょうを けんがくしました。", "まいばん テレビで ニュースを けんがくして います。"],
            answer: "先生や 友だちと こうじょうを けんがくしました。"
        ),
        Question(
            question:"つぎの ことばの つかいかたで いちばん いい ものを ひとつ えらんで ください。\nかざる",
            options: ["やまだ先生は テストの おしらせを きょうしつに かざりました。", "おきゃくさんが 来ますから、へやに 花を かざりましょう。", "天気が わるいので、せんたくものは うちの 中に かざります。", "こっちの エアコンは、となりの へやの かべに かざって ください。"],
            answer: "おきゃくさんが 来ますから、へやに 花を かざりましょう。"
        ),
        Question(
            question:"つぎの ことばの つかいかたで いちばん いい ものを ひとつ えらんで ください。\nこうじ",
            options: ["はが いたかったので、はいしゃで こうじを して もらいました。", "この セーターは 古いですが、こうじを して、ずっと きて います。", "ほんだなが こわれて しまったので、こうじを しました。", "この みちは こうじを して いるので、とおれません。"],
            answer: "この みちは こうじを して いるので、とおれません。"
        ),
    ]
    questions.shuffle()
    return questions
}

func JLPTN4GrammarloadLocalData() -> [Question] {
    var questions = [
        Question(
            question:"( )に 何を 入れますか。\nきのうの しゅくだいは 少なかったので、( ) 終わりました。",
            options: ["20分", "20分しか", "20分で", "20分を"],
            answer: "20分で"
        ),
        Question(
            question:"( )に 何を 入れますか。\nこの ロボットは 人 ( ) 会話することが できます。",
            options: ["や", "を", "へ", "と"],
            answer: "と"
        ),
        Question(
            question:"( )に 何を 入れますか。\n弟 は 小さいとき よく けがを して、両親 ( ) 心配させました。",
            options: ["で", "を", "の", "や"],
            answer: "を"
        ),
        Question(
            question:"( )に 何を 入れますか。\nホテルの 朝ご飯の パンが とても おいしかったので、八つ ( ) 食べました。",
            options: ["も", "に", "が", "で"],
            answer: "も"
        ),
        Question(
            question:"( )に 何を 入れますか。\nこの 日本語の じしょは、150年前に 外国人 ( ) 作られました。",
            options: ["から", "を", "について", "によって"],
            answer: "によって"
        ),
        Question(
            question:"( )に 何を 入れますか。\nA市の 運動場は(  )使えますが、予約がひつようです。",
            options: ["だれでも", "だれを", "だれに", "だれが"],
            answer: "だれでも"
        ),
        Question(
            question:"( )に 何を 入れますか。\n前田「リーさん、いつも ( ) 国の かぞくに れんらくしますか。」\nリー「メールを 書くことが 多いです。」",
            options: ["どのぐらい", "どの", "どうやって", "どういう"],
            answer: "どうやって"
        ),
        Question(
            question:"( )に 何を 入れますか。\n娘は 先月 高校を 卒業しました。( ) 大学の 入学式です。",
            options: ["だんだん ", "あまり", "だいたい", "もうすぐ"],
            answer: "もうすぐ"
        ),
        Question(
            question:"( )に 何を 入れますか。\n今朝は 駅に 行く バスが (  ) 来なかったので、タクシーで 行きました。",
            options: ["やっと", "なかなか", "きっと", "いつか"],
            answer: "なかなか"
        ),
        Question(
            question:"( )に 何を 入れますか。\n山下「南さん、あしたか あさって、カラオケに 行かない 」\n南 「あ、いいね。あしたは 都合が 悪いけど、あさって ( )だいじょうぶだよ。」",
            options: ["なのに", "だから", "でも", "なら"],
            answer: "なら"
        ),
        Question(
            question:"( )に 何を 入れますか。\n私は (  ) 間、スーパーで アルバイトを して いました。",
            options: ["夏休みに", "夏休みで", "夏休みの", "夏休み"],
            answer: "夏休みの"
        ),
        Question(
            question:"( )に 何を 入れますか。\n先週 庭の 木の えだを 切りました。ぜんぶ (  ) 2時間 かかりました。",
            options: ["切ったり", "切るのに", "切りに", "切るか どうか"],
            answer: "切るのに"
        ),
        Question(
            question:"( )に 何を 入れますか。\n木村「山田さん、あしたの 午後、サッカーの 練習に 行きますか。」\n山田「ええ、行きます。でも、午前中に 用事が あるので、( )。」",
            options: ["遅れないで ください", "遅れないほうが いいです", "遅れるかもしれません", "遅れては いけません"],
            answer: "遅れるかもしれません"
        ),
        Question(
            question:"( )に 何を 入れますか。\n(食堂で)\n森 「空いて いる 席が ありませんね。」\n田中「ええ。あ、でも、あそこの 席が (  )よ。」\n森 「本当ですね。空くまで、少し 待ちましょう。」",
            options: ["空きそうです", "空きました", "空いて います", "空いたようです"],
            answer: "空きそうです"
        ),
        Question(
            question:"( )に 何を 入れますか。\n(会議室で)\n林 「上田さん、会議の じゅんびは 終わりましたか。てつだいましょうか。」\n上田「ありがとうございます。じゃあ、いすが 一つ 足りないので、となりの 会議室から( )。」\n林 「はい、わかりました。」",
            options: ["持って こなくても いいですか", "持って きて もらえますか", "持って こないと いけませんか", "持って きて いませんか"],
            answer: "持って きて もらえますか"
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n先月まで 花屋が あった _ ★ _ _ おいしいです。",
            options: ["できた", "りんごの ケーキが", "きっさてんは", "場所に"],
            answer: "できた",
            underlinedKeywords: ["★"]
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\nきのうの 夜 家に 帰ってから、かぎを _  _ ★ _",
            options: ["どこ", "置いた", "に", "か"],
            answer: "置いた",
            underlinedKeywords: ["★"]
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n私はピアノを _ _ ★ _ 時間が ありません。",
            options: ["ひくのが", "ひく", "最近 いそがしくて", "好きですが"],
            answer: "最近 いそがしくて",
            underlinedKeywords: ["★"]
        ),
        Question(
            question:"★ に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n私は 20さいの たんじょうびに そふが _ _ ★ _",
            options: ["大切に", "くれた", "使って", "カメラを"],
            answer: "大切に",
            underlinedKeywords: ["★"]
        ),
        Question(
            question:"★に 入る ものは どれですか。いちばん いい ものを 一つ えらんで ください。\n林 「来週、野球の 試合を 見に 行こうと 思って いるんですが、リーさんも いっしょに どうですか。」\nリー「えっ、野球の 試合ですか。いいですね. _ _ ★ _ です。」",
            options: ["ぜひ 行きたい", "ことが ない", "見に 行った", "ので"],
            answer: "ので",
            underlinedKeywords: ["★"]
        ),
    ]
    questions.shuffle()
    return questions
}

func JLPTN4ReadingloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"試験中の 3日間に忘れ物を取りに行きたい人は、どうしなければなりませんか。",
            options: ["試験が終わるまで待ちます。", "先生たちの部屋へ取りに行きます。", "忘れ物があった場所へ取りに行きます。", "教室で、自分のクラスの先生に話します。"],
            answer: "教室で、自分のクラスの先生に話します。",
            imageName: "JLPTN4ReadingQuestionImage" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"私の楽しみは何ですか。\nアイスクリームは、夏に食べるととてもおいしいですが、私は寒い冬でも時々\n食べます。夏は毎日食べるので安いものしか買いませんが、冬は高いものを\n買います。暖かい部屋でいいアイスクリームを食べるのが、私の楽しみなのです。",
            options: ["冬に暖かい部屋で毎日アイスクリームを食べること", "冬に暖かい部屋で高いアイスクリームを食べること", "夏に毎日アイスクリームを食べること", "夏に高いアイスクリームを食べること"],
            answer: "冬に暖かい部屋で高いアイスクリームを食べること",
            underlinedKeywords: ["私の楽しみ"]
        ),
        Question(
            question:"このメモを読んで、高田先生は林さんに何を知らせなければなりませんか。",
            options: ["工場見学に行く人の数だけ", "工場見学に行く日と時間だけ", "工場見学に行く日と時間と、行く人の数", "工場見学に行く日と時間が、いつごろ決まるか"],
            answer: "工場見学に行く日と時間と、行く人の数",
            imageName: "JLPTN4ReadingQuestionImage1" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"「私」はどうして黒い消しゴムを買いましたか。\n昨日初めて黒い消しゴムを買いました。レジの人が「白いのは、使うと\n消しゴムが黒く汚れて嫌だと言う人が多いから、黒いのを作ったそうですよ。」\nと教えてくれました。私は色がかっこいいから買ったので、理由を聞いて\n面白いなと思いました。",
            options: ["黒い消しゴムは、使った後で消しゴムが黒く汚れないから", "黒い消しゴムを買う人が多いと店の人に聞いたから", "黒い消しゴムのほうが字をきれいに消せるから", "黒い消しゴムは、色がかっこいいと思ったから"],
            answer: "黒い消しゴムは、色がかっこいいと思ったから"
        ),
        Question(
            question:"なぜ 「どうしよう。」 と思いましたか。",
            options: ["友達が見つからないから", "間違えて東京駅で電車を降りてしまったから", "乗りたい電車の場所がわからないから", "知らない女の人に声をかけられたから"],
            answer: "乗りたい電車の場所がわからないから",
            imageName: "JLPTN4ReadingQuestionImage4",
            underlinedKeywords: ["「どうしよう。」"]
        ),
        Question(
            question:"なぜ山田さんは「私」に声をかけましたか。",
            options: ["「私」が行ったり来たりしているのを見たから", "「私」と一緒にお茶を飲みたいと思ったから", "「私」を山田さんの友達と間違えたから", "「私」が落としたメモを拾ったから"],
            answer: "「私」が行ったり来たりしているのを見たから",
            imageName: "JLPTN4ReadingQuestionImage4"
        ),
        Question(
            question:"なぜ お礼を言いましたか。",
            options: ["山田さんが、京都に行く新幹線がたくさんあると「私」に教えてくれたから", "山田さんが、帰りが遅くなるかもしれないのに、「私」を案内してくれたから", "山田さんが、「私」が乗る予定の電車の時間のことを心配してくれたから", "山田さんが、「私」の国のいろいろな人に親切にしてくれたと聞いたから"],
            answer: "山田さんが、帰りが遅くなるかもしれないのに、「私」を案内してくれたから",
            imageName: "JLPTN4ReadingQuestionImage4",
            underlinedKeywords: ["お礼を言いました"]
        ),
        Question(
            question:"( )に入れるのに、いちばんいい文はどれですか。",
            options: ["「仕事を頑張ろう", "外国に住んでみたい", "困っている人に親切にしよう", "東京駅のことをよく知りたい"],
            answer: "困っている人に親切にしよう",
            imageName: "JLPTN4ReadingQuestionImage4"
        ),
        Question(
            question:"ハメスさんとマリアさんは、「春を楽しもう」に行きたいと思っています。\n4 月に行われるもので、お店の中で音楽を聞きながら、お昼に食事ができる\nものがいいです。ハメスさんたちが選べるのは、どれですか。",
            options: ["②", "③", "⑤", "⑥"],
            answer: "⑥",
            imageName: "JLPTN4ReadingQuestionImage5"
        ),
        Question(
            question:"ジーナさんは、「春を楽しもう」に行こうと思っています。土曜日に行きたい\nですが、集まる時間が13時より早いものには行けません。料金は1,000円以下が\nいいです。ジーナさんが選べるのは、どれですか。",
            options: ["②と③", "②と③と④", "②と③と⑤", "③と⑤"],
            answer: "②と③",
            imageName: "JLPTN4ReadingQuestionImage5"
        ),
    ]
    return questions
}

let JLPTN4AUDIOTESTaudioQuestions: [AudioQuestion] = [
    AudioQuestion(options: ["アウ", "アエ", "イウ", "イエ"], answer: "アウ", audioFile: "N4Q1", startTime: 0, endTime: 64,images: ["AudioImage2"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N4Q2", startTime: 0, endTime: 62,images: ["AudioImage3"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N4Q3", startTime: 0, endTime: 63,images: ["AudioImage4"]),
    AudioQuestion(options: ["アイウエ", "アイウ", "イウエ", "イウ"], answer: "イウ", audioFile: "N4Q4", startTime: 0, endTime: 56,images: ["AudioImage5"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N4Q5", startTime: 0, endTime: 64,images: ["AudioImage6"]),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N4Q6", startTime: 0, endTime: 64,images: ["AudioImage7"]),
    AudioQuestion(options: ["えき前の ほんや", "大学の 中の ほんや", "じむしょ", "しょくどうの 前"], answer: "じむしょ", audioFile: "N4Q7", startTime: 0, endTime: 56),
    AudioQuestion(options: ["アイ", "アウ", "イウ", "イ"], answer: "アイ", audioFile: "N4Q8", startTime: 0, endTime: 64,images: ["AudioImage8"]),
    AudioQuestion(options: ["うみの ちかくで しょくじした", "山に のぼった", "うみで およいだ", "かいがんを さんぽした"], answer: "うみの ちかくで しょくじした", audioFile: "N4Q9", startTime: 0, endTime: 94),
    AudioQuestion(options: ["ジュース", "アイスクリーム", "キャンディー", "クッキー"], answer: "アイスクリーム", audioFile: "N4Q10", startTime: 0, endTime: 83),
    AudioQuestion(options: ["山本さんが きょうしつに いるとき", "山本さんが きょうしつを 出たとき", "山本さんが としょかんに いるとき", "山本さんが としょかんを 出たとき"], answer: "山本さんが としょかんを 出たとき", audioFile: "N4Q11", startTime: 0, endTime: 100),
    AudioQuestion(options: ["あく 時間が はやく なる", "しまる 時間が おそく なる", "中学生いかは ただに なる", "チケットが 安く なる"], answer: "しまる 時間が おそく なる", audioFile: "N4Q12", startTime: 0, endTime: 95),
    AudioQuestion(options: ["いろいろな ばしょに おいて あること", "うって いる ものの しゅるいが 多いこと", "ことばを 話すこと", "お金が ぬすまれないこと"], answer: "うって いる ものの しゅるいが 多いこと", audioFile: "N4Q13", startTime: 0, endTime: 102),
    AudioQuestion(options: ["5時から 5時半まで", "5時から 6時まで", "5時半から 6時まで", "5時半から 6時半まで"], answer: "5時半から 6時半まで", audioFile: "N4Q14", startTime: 0, endTime: 81),
    AudioQuestion(options: ["食べものの 店が たくさん あるから", "まつりが あって にぎやかだから", "ふねの 上で さくらが 見られるから", "会社から あるいて 行けるから"], answer: "ふねの 上で さくらが 見られるから", audioFile: "N4Q15", startTime: 0, endTime: 101),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N4Q16", startTime: 0, endTime: 31,images: ["AudioTestImage22"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N4Q17", startTime: 0, endTime: 34,images: ["AudioTestImage23"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N4Q18", startTime: 0, endTime: 28,images: ["AudioTestImage24"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N4Q19", startTime: 0, endTime: 28,images: ["AudioTestImage25"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N4Q20", startTime: 0, endTime: 24,images: ["AudioTestImage26"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N4Q21", startTime: 0, endTime: 24),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N4Q22", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N4Q23", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N4Q24", startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N4Q25", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N4Q26", startTime: 0, endTime: 24),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N4Q27", startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N4Q28", startTime: 0, endTime: 24),
]

func JLPT3loadLocalData() -> [Question] {
    var questions = [
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n会場には大勢の観客がいた。",
            options: ["けんぎゃく", "かんぎゃく", "けんきゃく", "かんきゃく"],
            answer: "かんきゃく",
            underlinedKeywords: ["観客"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n田村さんが払ってくれました。",
            options: ["くばって", "はらって", "かざって", "ひろって"],
            answer: "はらって",
            underlinedKeywords: ["払って"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\nホテルには3時ごろ到着します。",
            options: ["とうちゃく", "とうつく", "とちゃく", "とつく"],
            answer: "とうちゃく",
            underlinedKeywords: ["到着"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n山下さんが説明を加えました。",
            options: ["つたえました", "おえました", "くわえました", "かえました"],
            answer: "くわえました",
            underlinedKeywords: ["加えました。"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n今から訓練を行います。",
            options: ["くんれい", "くんれん", "ぐんれい", "ぐんれん"],
            answer: "くんれん",
            underlinedKeywords: ["訓練"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\nこの豆はスープに使うといいですよ。",
            options: ["こな", "いも", "かい", "まめ"],
            answer: "まめ",
            underlinedKeywords: ["豆"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n社会には共通のルールがあります。",
            options: ["きょうつ", "こうつう", "きょうつう", "こうつ"],
            answer: "きょうつう",
            underlinedKeywords: ["共通"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\n来年から税金が上がるそうだ。",
            options: ["ぜいきん", "ぜっきん", "せいきん", "せっきん"],
            answer: "ぜいきん",
            underlinedKeywords: ["税金"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\nしばらく、きれいななみを見ていた。",
            options: ["池", "湖", "港", "波"],
            answer: "波",
            underlinedKeywords: ["なみ"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\nもう少しはやく歩きましょう。",
            options: ["軽く", "急く", "速く", "進く"],
            answer: "速く",
            underlinedKeywords: ["はやく"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\nわたしは今の生活にまんぞくしている。",
            options: ["満続", "万続", "満足", "万足"],
            answer: "満足",
            underlinedKeywords: ["まんぞく"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\n父は腕をくんで何か考えていた。",
            options: ["接んで", "組んで", "折んで", "結んで"],
            answer: "組んで",
            underlinedKeywords: ["くんで"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\nこの国は主に米をゆしゅつしている。",
            options: ["輸出", "諭出", "輪出", "論出"],
            answer: "輸出",
            underlinedKeywords: ["ゆしゅつ"]
        ),
        Question(
            question:"__のことばを漢字で書くとき、最もよいものを、一つえらびなさい。\n赤ちゃんが母親に抱かれてねむっています。",
            options: ["寝って", "宿って", "眼って", "眠って"],
            answer: "眠って",
            underlinedKeywords: ["ねむって"]
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\nこの紙は、ぬれても破れにくいという (   ) があります。",
            options: ["実力", "特長", "専門", "主張"],
            answer: "特長"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\n佐藤さんには、おとなしい (   ) があるが、本当は活動的な人らしい。",
            options: ["ヒント", "タイトル", "アイディア", "イメージ"],
            answer: "イメージ"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\n正月には親戚が集まって、みんなでテーブルを( )、楽しく食事をした。",
            options: ["囲み", "通し", "包み", "越え"],
            answer: "囲み"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\nこのレストランの料理はおいしくないので、店内はいつも( )だ。",
            options: ["ふらふら", "ぐっすり", "がらがら", "うっかり"],
            answer: "がらがら"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\n高田さんが引っ越すという (  )を聞いたが、本当かどうか気になる。",
            options: ["うわさ", "宣伝", "うそ", "冗談"],
            answer: "うわさ"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\n父から借りた本をなくしてしまったので謝ったら、父はすぐに( )くれた。",
            options: ["従って", "守って", "許して", "抑えて"],
            answer: "許して"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\nパソコンの前でずっと同じ (   ) でいたので、体が痛くなった。 ",
            options: ["様子", "姿勢", "印象", "間隔"],
            answer: "姿勢"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\n申込書に間違いがないか、よく (  ) から受付に出した。",
            options: ["くりかえして", "気にして", "見つめて", "たしかめて"],
            answer: "たしかめて"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\nわたしのふるさとは (   ) が盛んで、米や野菜をたくさん作っています。",
            options: ["自然", "資源", "作物", "農業"],
            answer: "農業"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\n水に浮いていた木の葉が、しばらくすると水の中に (  ) しまった。",
            options: ["しずんで", "ころんで", "たおれて", "おぼれて"],
            answer: "しずんで"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つえらびなさい。\nこの話は誰にも言わずに、ずっと (  ) にしていた。",
            options: ["裏側", "内緒", "後方", "中身"],
            answer: "内緒"
        ),
        Question(
            question:"__に意味が最も近いものを、一つえらびなさい。\n水の表面がかがやいています。",
            options: ["止まって ", "揺れて", "汚れて", "光って"],
            answer: "光って",
            underlinedKeywords: ["がかがやいて"]
        ),
        Question(
            question:"__に意味が最も近いものを、一つえらびなさい。\nその知らせを聞いたとき、わたしはとてもがっかりした。",
            options: ["残念だと思った", "うれしかった", "驚いた", "安心した"],
            answer: "残念だと思った",
            underlinedKeywords: ["がっかりした"]
        ),
        Question(
            question:"__に意味が最も近いものを、一つえらびなさい。\n留学生活に不安は当然ありました。",
            options: ["いろいろ", "少し", "もちろん", "いつも"],
            answer: "もちろん",
            underlinedKeywords: ["当然"]
        ),
        Question(
            question:"__に意味が最も近いものを、一つえらびなさい。\nパーティーの料理があまりました。",
            options: ["多すぎて残りました", "少し足りませんでした", "とてもおいしかったです", "そんなにおいしくなかったです"],
            answer: "多すぎて残りました",
            underlinedKeywords: ["あまりました"]
        ),
        Question(
            question:"__に意味が最も近いものを、一つえらびなさい。\nここは横断禁止です。",
            options: ["座ってはいけません", "渡ってはいけません", "走ってはいけません", "入ってはいけません"],
            answer: "渡ってはいけません",
            underlinedKeywords: ["横断禁止です"]
        ),
        Question(
            question:"つぎのことばの使い方として最もよいものを、一つえらびなさい。\n急",
            options: ["この料理は電子レンジを使って急にできるので、とても簡単だ。", "あと10分で電車が出発してしまうので、急に駅に向かった。", "部屋から急に人が飛び出してきたので、ぶつかりそうになった。", "新しいゲームを買ったので、家に帰って急にやってみた。"],
            answer: "部屋から急に人が飛び出してきたので、ぶつかりそうになった。",
            underlinedKeywords: ["急"]
        ),
        Question(
            question:"つぎのことばの使い方として最もよいものを、一つえらびなさい。\n沸騰",
            options: ["今日は朝からどんどん暑くなり、昼には気温が沸騰した。", "鍋のお湯が沸騰したら、とうふを入れて火を少し弱くしてください。", "昼ごろから具合が悪くなり、夕方熱が沸騰したので病院へ行った。", "このストーブは沸騰するのが早いので、すぐに部屋が暖かくなる。"],
            answer: "鍋のお湯が沸騰したら、とうふを入れて火を少し弱くしてください。",
            underlinedKeywords: ["沸騰"]
        ),
        Question(
            question:"つぎのことばの使い方として最もよいものを、一つえらびなさい。\nまげる",
            options: ["今朝は寒かったので、マフラーを首にまげて出かけた。", "けがは良くなったが、腕を伸ばしたりまげたりすると、まだ少し痛む。", "一つのパンを半分にまげて、二人で分けて食べた。", "シャツをきちんとまげたら、たんすの引き出しにしまってください。"],
            answer: "けがは良くなったが、腕を伸ばしたりまげたりすると、まだ少し痛む。",
            underlinedKeywords: ["まげる"]
        ),
        Question(
            question:"つぎのことばの使い方として最もよいものを、一つえらびなさい。\n出張",
            options: ["営業のため、来週一週間、課長とアメリカに出張します。", "仕事を辞めたら、家族とゆっくり海外に出張したいと思う。", "わたしは毎朝9時に会社に出張し、残業はしないで家に帰る。", "あしたは子どもの運動会に出張するので、仕事を休みます。"],
            answer: "営業のため、来週一週間、課長とアメリカに出張します。",
            underlinedKeywords: ["出張"]
        ),
        Question(
            question:"つぎのことばの使い方として最もよいものを、一つえらびなさい。\n慰める",
            options: ["祖母は古い物でも捨てないで、長い間慰めて使っている。", "試合を見ながら、優勝を願って一生懸命選手を慰めた。", "仕事で失敗してしまったが、友人が慰めてくれたので元気が出た。", "弟が希望の大学に合格したので、家族で外食をして慰めた。"],
            answer: "仕事で失敗してしまったが、友人が慰めてくれたので元気が出た。",
            underlinedKeywords: ["慰める"]
        ),
    ]
    questions.shuffle()
    return questions
}

func JLPTN3GrammarloadLocalData() -> [Question] {
    var questions = [
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n彼は小説家 (   ) 有名になったが、普段は小さな病院で働く医者だ。",
            options: ["について", "として", "にしたがって", "と比べて"],
            answer: "として"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n先週、会社の面接で「もし自分を色で表す( )、何色ですか。」と聞かれ、\nオレンジ色と答えた。「元気」や「健康」のイメージがあるからだ。",
            options: ["ことから", "という点で", "ように", "としたら"],
            answer: "としたら"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n昨日の夜、寝る前に (   ) ヨーグルトが食べたくなって、夜中なのにコンビニに買いに行ってしまった。",
            options: ["どうか", "せっかく", "どうしても", "きっと"],
            answer: "どうしても"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\nこのケーキは材料を混ぜて焼く (   ) から、誰でも失敗せずにおいしく作れる。",
            options: ["だけだ", "ことだ", "せいだ", "ときだ"],
            answer: "だけだ"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n私の町では毎年8月最後の日曜日に夏祭りが (   )。 ",
            options: ["行います", "行わせます", "行っています", "行われます"],
            answer: "行われます"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(靴屋で)\n客 「すみません。この靴のもう一つ大きいサイズはありますか。」 \n店員「あ、はい、確認しますので、少々( )。」 ",
            options: ["お待ちしております", "お待ちください", "お待ちできます", "お待ちしましょう"],
            answer: "お待ちください"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(電話で)\nX建設の社員「はい、X建設営業部です。」\n中田「あ、 私 、ABC 銀行の中田と (  ) が、山石さんをお願いします。」",
            options: ["ございます", "いたします", "申します", "申し上げます"],
            answer: "申します"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n息子が通う高校では、お昼にパンや飲み物が買える場所もあるが、基本的には全員がお弁当を( )。",
            options: ["持っていったばかりだ", "持っていくことになっている", "持っていきたい", "持っていくつもりだ"],
            answer: "持っていくことになっている"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n昼寝をするのは気持ちがいいが、夜(   ) 困るので、いつも15分ぐらいで起きる。",
            options: ["寝なくて", "寝られると思って", "寝られないと", "寝ると思うと"],
            answer: "寝られないと"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\nA市は、保育園の数が少なく、保育園を( )利用できない人がいることが問題になっている。",
            options: ["利用したくても", "利用しそうになって", "利用しているのに", "利用できたら"],
            answer: "利用したくても"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n妻「ねえ、ちょっと買い物に行ってくるから、今夜行くレストランの予約をお願いできる?」\n夫「うん、わかった。( )。19時からで大丈夫?」\n妻「ええ、ありがとう。」",
            options: ["予約してね", "予約しておくよ", "予約しようよ", "予約してあるね"],
            answer: "予約しておくよ"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(畑で)\n子「ねえ、このトマト、もう食べられる? 赤くなっているよ。」\n父「うん。そろそろ (  ) ね。」",
            options: ["食べやすいそうだ", "食べていそうだ", "食べたがるそうだ", "食べてもよさそうだ"],
            answer: "食べてもよさそうだ"
        ),
        Question(
            question:"つぎの文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(改札で)\n南 「山下さん、来ませんね。携帯に電話をしても出ないし、どうしますか。」\n中川「これ以上待つと私たちも間に合わないから、先に( )。」\n南 「そうですね。行きますか。」",
            options: ["行ってしまいましょうか", "行ってしまうのでしょう", "行ってしまいましたか", "行ってしまっていました"],
            answer: "行ってしまいましょうか"
        ),
        Question(
            question:"つぎの文の ★ に入る最もよいものを、一つえらびなさい。\nこの写真の鳥はとても珍しくて、この鳥の __ ★ __ __ そうだ。",
            options: ["見る機会がない", "専門家でも", "なかなか", "研究をしている"],
            answer: "専門家でも"
        ),
        Question(
            question:"つぎの文の ★ に入る最もよいものを、一つえらびなさい。\n春から大学生になる娘には、 __ __ ★ __ できない経験を いろいろしてほしい。",
            options: ["にも", "にしか", "勉強以外", "大学時代"],
            answer: "大学時代"
        ),
        Question(
            question:"つぎの文の ★ に入る最もよいものを、一つえらびなさい。\n土曜日は買い物をしたり友人と食事をしたりし、日曜日は __ __ ★ __ 私の好きな週末の過ごし方だ。",
            options: ["のが", "という", "家で過ごす", "どこにも出かけずに"],
            answer: "という"
        ),
        Question(
            question:"つぎの文の ★ に入る最もよいものを、一つえらびなさい。\n(レストランで)\n客 「すみません。15分ぐらい前に案内をお願いして、しばらくここで待てって\n__ __ ★ __。まだですか。」",
            options: ["待っているんです", "言われた", "から", "けど"],
            answer: "待っているんです"
        ),
        Question(
            question:"つぎの文の ★ に入る最もよいものを、一つえらびなさい。\n歴史を __ __ ★ __ 進学を決めた。",
            options: ["勉強すればするほど", "歴史学科への", "と思うようになって", "もっと学びたい"],
            answer: "と思うようになって"
        ),
    ]
        
    questions.shuffle()
    return questions
}

func JLPTN3ReadingloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"このメールからわかることは何か。",
            options: ["今日の午前の授業は、10時から始まる。", "午前も午後も、今日はクラブ活動を中止しなければならない。", "今日の午後の授業があるかどうか、10時に事務室からメールが届く。", "10時に事務室からメールが届いたら、今日の午後の授業はある。"],
            answer: "午前も午後も、今日はクラブ活動を中止しなければならない。",
            imageName: "JLPTN3ReadingQuestionImage" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"携帯電話について、「私」はどのように考えているか。",
            options: ["便利だと言う人もいるが、自分はそう思わないので、今は持つつもりはない。", "便利だと思うが、いつも電話を気にする生活は嫌なので、今は持つつもりはない。", "持っていると便利だし、最近は料金が安くなったので、もう一度持つつもりだ。", "持ちたくはなかったが、ないと不便なので、もう一度持つつもりだ。"],
            answer: "持ちたくはなかったが、ないと不便なので、もう一度持つつもりだ。",
            imageName: "JLPTN3ReadingQuestionImage1" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"今の販売機が作られることになったのは、どうしてか。\n日本には飲み物の自動販売機がたくさんある。缶コーヒーやペットボトルのお茶などは、\n一台の販売機で温かい物か冷たい物かを選べるので、便利だ。しかし、最初のころの自動\n販売機は、冷たい物しか売ることができなかった。\nある冬の日、高速道路の駐車場で、トラックの運転手たちが自動販売機で買ったジュー\nスを飲んでいた。みんなとても寒そうだったので、それを見た飲料会社の社長が、冬には\n温かい物を飲んでほしいと考えた。それから10年近くかけて作られたのが、今の販売機なのだそうだ。",
            options: ["冬に販売機で冷たい物を買って飲んだ飲料会社の社長が、客が気の毒だと感じたから", "冷たい物が買える販売機があれば便利だろうと、飲料会社の社長が考えたから", "温かい物が買える販売機が欲しいと、飲料会社の社長が運転手たちに言われたから", "温かい物も買える販売機があれば喜ばれるだろうと、飲料会社の社長が考えたから"],
            answer: "温かい物も買える販売機があれば喜ばれるだろうと、飲料会社の社長が考えたから",
            underlinedKeywords: ["今の販売機"]
        ),
        Question(
            question:"このメモを読んで、パクさんがしなければならないことは何か。",
            options: ["11時ごろまでに、説明会に参加した企業のリストを準備しておく。", "午後の会議までに、説明会の報告資料をわかりやすく書き直す。", "午後の会議までに報告資料を直し、会議で説明会について報告する。", "黒田課長がモリムラ工業に行くまでに、説明会の報告資料を完成させる。"],
            answer: "11時ごろまでに、説明会に参加した企業のリストを準備しておく。",
            imageName: "JLPTN3ReadingQuestionImage2" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"失敗とあるが、どのようなことか。",
            options: ["買ったばかりの本を本棚に入れたまま、読むのを忘れてしまったこと", "前に読んだことを忘れて、同じ本をまた買ってしまったこと", "持っていない本なのに、本棚にあるはずだと思って探してしまったこと", "初めて読む本なのに、前に読んだことがあると思ってしまったこと"],
            answer: "前に読んだことを忘れて、同じ本をまた買ってしまったこと",
            imageName: "JLPTN3ReadingQuestionImage3" ,// Asset Catalog의 이미지 이름
            underlinedKeywords: ["失敗"]
        ),
        Question(
            question:"自分が嫌になりますとあるが、それはなぜか。",
            options: ["前に読んで面白いと思った本なのに、もう一度読んだら、つまらないと感じたから", "前に読んでつまらないと思った本なのに、もう一度読んだら、面白いと感じたから", "一度読んで面白いと思った本なのに、その本のことを覚えていなかったから", "一度読んでつまらないと思った本なのに、二度もお金を払ってしまったから"],
            answer: "一度読んで面白いと思った本なのに、その本のことを覚えていなかったから",
            imageName: "JLPTN3ReadingQuestionImage3" ,// Asset Catalog의 이미지 이름
            underlinedKeywords: ["自分が嫌になります"]
        ),
        Question(
            question:"本を買うことについて、「私」はどう思っているか。",
            options: ["これからは失敗しないように、よく調べてから本を買うようになるだろう。", "同じ失敗を繰り返さないために、なるべく本屋に通わないようにするだろう。", "本を好きになるために、これからも失敗を気にせずに本屋通いをするだろう。", "失敗することもあるかもしれないが、これからも自分は本を買い続けるだろう。"],
            answer: "失敗することもあるかもしれないが、これからも自分は本を買い続けるだろう。",
            imageName: "JLPTN3ReadingQuestionImage3" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"それとあるが、何か。",
            options: ["突然雨が降った時に、すぐに傘を買うこと", "突然雨が降った時に、すぐに傘を買うこと", "使いたい時にだけ、傘を借りて使うこと", "雨の日に、傘をささずに観光をすること"],
            answer: "使いたい時にだけ、傘を借りて使うこと",
            imageName: "JLPTN3ReadingQuestionImage4", // Asset Catalog의 이미지 이름
            underlinedKeywords: ["それ"]
        ),
        Question(
            question:"「貸し傘」についての説明で、合っているものはどれか。",
            options: ["この町に来た観光客だけが利用できる。", "「貸し傘」のグループのメンバーだけが利用できる。", "観光客なら、利用した傘を記念に持ち帰ってもいい。", "利用した後は、「貸し傘」用の傘立てのどれかに返せばいい。"],
            answer: "利用した後は、「貸し傘」用の傘立てのどれかに返せばいい。",
            imageName: "JLPTN3ReadingQuestionImage4" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"「貸し傘」を始めたグループが、利用する人にしてほしいと言っていることは何か。",
            options: ["「貸し傘」を始めたグループが、利用する人にしてほしいと言っていることは何か。", "傘をどんどん借りて、「貸し傘」の利用者が増えるように協力してほしい。", "「貸し傘」の傘が不足しないように、不要な傘を集めるのに協力してほしい。", "「貸し傘」の傘が返しやすくなるように、傘立てを増やすことに協力してほしい。"],
            answer: "「貸し傘」を始めたグループが、利用する人にしてほしいと言っていることは何か。",
            imageName: "JLPTN3ReadingQuestionImage4" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"このタクシー会社が調査をして、わかったことはどのようなことか。",
            options: ["急ぐことが利用者へのサービスになると思っている運転手が多い。", "スピードを急に上げたり、前の車を追い越したりする運転手が多い。", "運転手は丁寧な運転をしてくれていると考えている利用者が多い。", "ゆっくり運転してもらいたいと思ったことがある利用者が多い。"],
            answer: "ゆっくり運転してもらいたいと思ったことがある利用者が多い。",
            imageName: "JLPTN3ReadingQuestionImage5" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"驚きましたとあるが、なぜ驚いたのか。",
            options: ["アンケートで、満足している利用者が思った以上に多いことがわかったから", "アンケートに答えてくれた利用者が、期待したよりずっと多かったから", "アンケートを行っても、利用者の本当の希望はわからなかったから", "アンケートでわかった利用者の希望が、予想と違っていたから"],
            answer: "アンケートでわかった利用者の希望が、予想と違っていたから",
            imageName: "JLPTN3ReadingQuestionImage5", // Asset Catalog의 이미지 이름
            underlinedKeywords: ["驚きました"]
        ),
        Question(
            question:"このタクシー会社が、ボタンを使って利用者の希望を聞けるようにしたのはなぜか。",
            options: ["運転手に直接希望を言いにくいと感じている利用者が多いようだから", "運転中に利用者の声がよく聞こえない運転手が多いようだから", "ボタンをつけてほしいという希望を持つ利用者が多いようだから", "利用者となるべく話をしたくないと考える運転手が多いようだから"],
            answer: "運転手に直接希望を言いにくいと感じている利用者が多いようだから",
            imageName: "JLPTN3ReadingQuestionImage5" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"素晴らしいアイディアとあるが、この文章を書いた人は、なぜそのように言っているのか。",
            options: ["利用者は多少減ってしまうが、環境に優しいサービスだから", "会社と利用者がいっしょに考えた、環境に優しいサービスだから", "利用者、会社の両方にいい点があり、環境にも優しいサービスだから", "会社の支出は増えるが、利用者や環境に優しいサービスだから"],
            answer: "利用者、会社の両方にいい点があり、環境にも優しいサービスだから",
            imageName: "JLPTN3ReadingQuestionImage5", // Asset Catalog의 이미지 이름
            underlinedKeywords: ["素晴らしいアイディア"]
        ),
        Question(
            question:"今日は日曜日である。ソフィさんは14時に入園し、このポスターを見た。動物園が昼間に行っている案内や教室の中で、今から参加できるものはどれか。",
            options: ["Aだけ", "AとB", "AとBとC", "BとD"],
            answer: "AとB",
            imageName: "JLPTN3ReadingQuestionImage6" // Asset Catalog의 이미지 이름
        ),
        Question(
            question:"カクさんは8月9日の昼に動物園に来て、園内でポスターを見て、その日の「夜の動物園」も見たくなった。「夜の動物園」を見るために、カクさんがしなければならないことはどれか。",
            options: ["17時半までに、もう一度入園する。", "昼とは別に入園料を払って、もう一度入園する。", "東口から、もう一度入園する。", "外で食事をすませてから、もう一度入園する。"],
            answer: "昼とは別に入園料を払って、もう一度入園する。",
            imageName: "JLPTN3ReadingQuestionImage6" // Asset Catalog의 이미지 이름
        ),
    ]
    return questions
}


let JLPTN3AUDIOTESTaudioQuestions: [AudioQuestion] = [
    AudioQuestion(options: ["アウ", "アエ", "イウ", "イエ"], answer: "アエ", audioFile: "N3Q1", startTime: 0, endTime: 65, images: ["AudioImage1"]),
    AudioQuestion(options: ["水曜日", "木曜日", "金曜日", "土曜日"], answer: "金曜日", audioFile: "N3Q2", startTime: 0, endTime: 64),
    AudioQuestion(options: ["さんかしゃを かくにんする", "店に電話する", "メールをかくにんする", "ないようを決める"], answer: "さんかしゃを かくにんする", audioFile: "N3Q3", startTime: 0, endTime: 73),
    AudioQuestion(options: ["セミナーにもうしこむ", "テストをうける", "けいじばんを見る", "さんかひをふりこむ"], answer: "テストをうける", audioFile: "N3Q4", startTime: 0, endTime: 66),
    AudioQuestion(options: ["ちょうさけっかを入力する", "サンプルをしてんに送る", "かいぎのじゅんびをする", "大野さんに仕事をたのむ"], answer: "ちょうさけっかを入力する", audioFile: "N3Q5", startTime: 0, endTime: 76),
    AudioQuestion(options: ["たいそう教室にもうしこむ", "DVD を買う", "びょういんに行く", "スポーツクラブに行く"], answer: "DVD を買う", audioFile: "N3Q6", startTime: 0, endTime: 84),
    AudioQuestion(options: ["気に入ったのがなかったから", "今すぐ買うひつようが なくなったから", "ねだんが高かったから", "おっとといっしょに えらびたかったから"], answer: "今すぐ買うひつようが なくなったから", audioFile: "N3Q7", startTime: 0, endTime: 88),
    AudioQuestion(options: ["年をとってからの生活のため", "家を買うため", "海外旅行をするため", "りゅうがくするため"], answer: "りゅうがくするため", audioFile: "N3Q8", startTime: 0, endTime: 97),
    AudioQuestion(options: ["ペットをびょういんにつれて行くから", "母がけがをしたから", "アルバイトに行くから", "クラブの話し合いがあるから"], answer: "ペットをびょういんにつれて行くから", audioFile: "N3Q9", startTime: 0, endTime: 81),
    AudioQuestion(options: ["サラさんの友人に教えてもらう", "テレビを見て自分で勉強する", "インターネットでレッスンをうける", "外国語の学校に通う"], answer: "サラさんの友人に教えてもらう", audioFile: "N3Q10", startTime: 0, endTime: 127),
    AudioQuestion(options: ["朝食のメニューが売れていない", "近所の人があまり来てくれない", "こんでいてもせきを空けないきゃくがいる", "ことばづかいがよくない店員がいる"], answer: "こんでいてもせきを空けないきゃくがいる", audioFile: "N3Q11", startTime: 0, endTime: 104),
    AudioQuestion(options: ["せんぱいにしりょうを見せる", "ちょうさをしなおす", "しりょうにグラフをくわえる", "はっぴょうのながれを かえる"], answer: "はっぴょうのながれを かえる", audioFile: "N3Q12", startTime: 0, endTime: 107),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N3Q13", startTime: 0, endTime: 96),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "4", audioFile: "N3Q14", startTime: 0, endTime: 73),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N3Q15", startTime: 0, endTime: 85),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N3Q16", startTime: 0, endTime: 26, images: ["AudioTestImage27"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N3Q17", startTime: 0, endTime: 29, images: ["AudioTestImage28"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N3Q18", startTime: 0, endTime: 30, images: ["AudioTestImage29"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N3Q19", startTime: 0, endTime: 32, images: ["AudioTestImage30"]),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N3Q20", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N3Q21", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N3Q22", startTime: 0, endTime: 25),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N3Q23", startTime: 0, endTime: 23),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N3Q24", startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N3Q25", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N3Q26", startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N3Q27", startTime: 0, endTime: 30),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N3Q28", startTime: 0, endTime: 25),
]



func JLPTN2loadLocalData() -> [Question] {
    var questions = [
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n先生に貴重な資料を見せていただいた。",
            options: ["きじゅう", "きちょう", "きっじゅう", "きっちょう"],
            answer: "きちょう",
            underlinedKeywords: ["貴重"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\nその話を聞いて、とても怪しいと思った。",
            options: ["むなしい", "くやしい", "おかしい", "あやしい"],
            answer: "あやしい",
            underlinedKeywords: ["怪しい"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n佐藤さんは容姿も性格もいい。",
            options: ["よし", "ようし", "ようす", "よす"],
            answer: "ようし",
            underlinedKeywords: ["容姿"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\nこれは危険を伴う実験だ。",
            options: ["はらう", "あつかう", "ともなう", "すくう"],
            answer: "ともなう",
            underlinedKeywords: ["伴う"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n以前は、海外で暮らしたいという願望が強かった。",
            options: ["がんぼう", "げんぼう", "がんぼ", "げんぼ"],
            answer: "がんぼう",
            underlinedKeywords: ["願望"]
        ),
        Question(
            question:"__の言葉を漢字で書くとき、最もよいものを一つ選びなさい。\n友人を家にまねいた。",
            options: ["伯いた", "招いた", "泊いた", "召いた"],
            answer: "招いた",
            underlinedKeywords: ["まねいた。"]
        ),
        Question(
            question:"__の言葉を漢字で書くとき、最もよいものを一つ選びなさい。\nこの商品は安全性がほしょうされている。",
            options: ["補証", "保正", "保証", "補正"],
            answer: "保証",
            underlinedKeywords: ["ほしょう"]
        ),
        Question(
            question:"__の言葉を漢字で書くとき、最もよいものを一つ選びなさい。\nこの企業では、さまざまなもよおしを行っている。",
            options: ["携し", "催し", "推し", "権し"],
            answer: "催し",
            underlinedKeywords: ["もよおし"]
        ),
        Question(
            question:"__の言葉を漢字で書くとき、最もよいものを一つ選びなさい。\n銀行に行って、お札をこうかに替えた。",
            options: ["硬貨", "固貨", "硬価", "固価"],
            answer: "硬貨",
            underlinedKeywords: ["こうか"]
        ),
        Question(
            question:"__の言葉を漢字で書くとき、最もよいものを一つ選びなさい。\nわが社の商品はここでせいぞうされている。",
            options: ["製増", "制増", "制造", "製造"],
            answer: "製造",
            underlinedKeywords: ["せいぞう"]
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n男女の結婚( )の違いについて調べた。",
            options: ["観", "識", "念", "察"],
            answer: "観"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\nここでは( )水準の医療が受けられる。",
            options: ["頂", "上", "高", "特"],
            answer: "高"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n今日は大学の講義で日本( )の経営について学んだ。",
            options: ["状", "類", "式", "則"],
            answer: "式"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n開封しても、( )使用の物は返品可能です。",
            options: ["外", "否", "前", "未"],
            answer: "前"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n受験生なので、勉強(   )の毎日だ。",
            options: ["漬け", "浸し", "溶け", "満ち"],
            answer: "漬け"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n今年の夏は暑さが厳しく、仕事から家に帰ると疲れて (   ) している。",
            options: ["選出", "提供", "指示", "寄付"],
            answer: "提供"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\nこの大学では一般向けの講座を開き、社会に学習の場を (   ) してしまう。",
            options: ["ぐったり", "しっかり", "すっきり", "ぎっしり"],
            answer: "ぐったり"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n学生時代の友人が私の名前を忘れていたので、とても (   ) だった。",
            options: ["アウト", "ダウン", "ショック", "エラー"],
            answer: "ショック"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n通路に荷物を置いたら、通る人の (   ) になりますよ。",
            options: ["面倒", "邪魔", "被害", "無理"],
            answer: "邪魔"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n少し長めの上り坂だったが (   ) ので、それほど疲れなかった。",
            options: ["おとなしかった", "ささやかだった", "なだらかだった", "よわよわしかった"],
            answer: "なだらかだった"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n出席者は皆会議に積極的に参加し、意見を (   ) 交換し合った。",
            options: ["活発に", "円満に", "機敏に", "濃厚に"],
            answer: "活発に"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n列に並んでいたら、私の前に強引に （ ）きた人がいて、嫌な気分になった。",
            options: ["当てはまって", "付け加えて", "行き着いて", "割り込んで"],
            answer: "割り込んで"
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n高橋さんはとても愉快な人だ。",
            options: ["面白い", "おしゃれな", "親切な", "かわいい"],
            answer: "面白い",
            underlinedKeywords: ["愉快"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\nそれは確かにやむをえないことだと思う。",
            options: ["もったいない", "なさけない", "つまらない", "しかたない"],
            answer: "しかたない",
            underlinedKeywords: ["やむをえない"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n少し息抜きしたほうがいいよ。",
            options: ["待った", "急いだ", "休んだ", "働いた"],
            answer: "休んだ",
            underlinedKeywords: ["息抜きした"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n今日はとてもついていた。",
            options: ["気分が悪かった", "運が悪かった", "気分がよかった", "運がよかった"],
            answer: "運がよかった",
            underlinedKeywords: ["ついていた"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n私はつねに言葉遣いに気をつけている。",
            options: ["当然", "いつも", "特に", "できるだけ"],
            answer: "いつも",
            underlinedKeywords: ["つねに"]
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n延長",
            options: ["悪天候で列車が運転をやめたため、旅行の出発が三日後に延長された。", "初めの設計では2階建てだったが、3階建ての家に延長することにした。", "予定の時間内に結論が出ず、会議が1時間延長されることになった。", "電車の中で居眠りをして、降りる駅を一駅延長してしまった。"],
            answer: "予定の時間内に結論が出ず、会議が1時間延長されることになった。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n目上",
            options: ["勉強会に参加した社員がすべて目上だったので、新人の私はとても緊張した。", "この店で一番値段が高く目上の商品は、店の奥にある棚に並べられていた。", "高校時代、鈴木さんはとても優秀で、成績はいつも学年で目上だった。", "あの若さで金賞を受賞した伊藤さんは、本当に目上の人だと思う。"],
            answer: "勉強会に参加した社員がすべて目上だったので、新人の私はとても緊張した。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\nさびる",
            options: ["暑いところに生ものをずっと置いておいたら、さびて臭くなった。", "昨夜は雨が相当降ったらしく、普段はきれいな川の水がさびて濁っている。", "鉢に植えた植物に水をやるのを忘れていたら、花がさびてしまった。", "この鉄の棒はずっと家の外に置いてあったので、さびて茶色くなっている。"],
            answer: "この鉄の棒はずっと家の外に置いてあったので、さびて茶色くなっている。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n大げさ",
            options: ["息子の誕生日に料理を作りすぎてしまい、大げさに余ってしまった。", "天気予報によると、明日は今日より大げさに気温が下がるらしい。", "努力した結果、試験の成績が大げさに伸びて、先生に褒められた。", "あの人は小さなことを大げさに言うので、そのまま信じないほうがいい。"],
            answer: "あの人は小さなことを大げさに言うので、そのまま信じないほうがいい。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n反省",
            options: ["発表の原稿を全部覚えたのに、緊張のせいでどんなに反省しても全く思い出せない。", "今回の企画では、私の準備不足で周りに迷惑をかけたことをとても反省しています。", "祖父はいつも若いころの思い出を懐かしそうに反省して私に話してくれる。", "この機械の使い方を忘れないように、もう一度最初から反省しておきましょう。"],
            answer: "今回の企画では、私の準備不足で周りに迷惑をかけたことをとても反省しています。"
        ),
    ]
    questions.shuffle()
    return questions
}

func JLPTN2GrammarloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n卒業論文がなかなか書けなくて、一時は (   ) かけたが、何とか今日無事に提出することができた。",
            options: ["あきらめ", "あきらめて", "あきらめる", "あきらめた"],
            answer: "あきらめ"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n子どものころ、母(   )作ったハンバーグが大好きで、よく作ってもらった。",
            options: ["の", "との", "によって", "にとって"],
            answer: "の"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n多様な情報があふれる現代社会( )、大切なのは、膨大な情報の中から、自分に必要な情報を選ぶ力である。",
            options: ["に加えて", "において", "を基にして", "を込めて"],
            answer: "において"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n作文が得意な友達に「どうやったらうまくなれるの?」と聞いたら、\n「たくさん書けば( )うまくなるよ。」と言われた。",
            options: ["必ずしも", "たとえ", "そのうち", "さっき"],
            answer: "そのうち"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n看護師の仕事は夜勤もあって大変だが、自分でこの仕事を選んだ( )、がん\nばって続けたいと思う。",
            options: ["以上", "とたん", "あげくに", "かのようで"],
            answer: "以上"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(内線電話で)\n山田「はい、山田です。」\n木村「受付の木村ですが、X社の中川様が (   )。」\n山田「わかりました。すぐ行きます。」",
            options: ["伺いました", "お目にかかりました", "ございました", "お越しになりました"],
            answer: "お越しになりました"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n人は一生のうちどのくらい寝ているのでしょうか。仮に一日8時間寝て、80歳まで\n生きる( ) 。すると 、 睡眠時間は約2336,00時間で 、約27年寝ている計算になります。",
            options: ["となりました", "とします", "とされていました", "と見られます"],
            answer: "とします"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n夢を語る( )誰でもできるが、実現させるのは簡単なことではない。",
            options: ["だけでは ", "だけなら ", "ためしか", "ためには"],
            answer: "だけなら"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(説明書で)\nエアコンを掃除するときは、安全上、必ずコンセントを( )してください。",
            options: ["抜いたことを", "抜いたことが", "抜いてからに", "抜いてからは"],
            answer: "抜いてからに"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n私はスピーチが苦手なのに、今度友達の結婚パーティーでスピーチを( )、困っている。",
            options: ["しにくくて", "してほしくて", "させてみたくて", "することになってしまって"],
            answer: "することになってしまって"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\nせっかく、夕日がきれいなことで有名なA海岸に来たのに、急に雨が降り出した。\nどうも夕日は( )。",
            options: ["見えてもしかたない", "見られないことだった", "見られそうにない", "見えないことがあった"],
            answer: "見られそうにない"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n山川「中村くん、毎日ジョギング ( )?」\n中村「うん、そうなんだよ。」\n山川「実は、ぼくもなんだよ。走るっていいよね。」",
            options: ["しない", "しててもいい", "しちゃえば", "してるんだって"],
            answer: "してるんだって"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n結婚生活を送る __ __ ★ __、相手への思いやりの気持ちを持つことだと思う。 ",
            options: ["うえで", "といえば", "大切か", "何が"],
            answer: "大切か"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n就職したときに __ __ ★ __ とうとう壊れたので、買い換えることにした。 ",
            options: ["ずっと", "買って以来", "かばんが", "使っていた"],
            answer: "使っていた"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n登山には不思議な魅力がある。登っているときはこんなに __ __ ★ __ なぜかまた登りたくなる。",
            options: ["思うのに", "二度としたくないと", "苦しいことは", "山を下りて何日かすると"],
            answer: "思うのに"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n彫刻家 川村たけるが作る動物の彫刻作品は、形はシンプル __ __ __ ★ 生命力にあふれている。",
            options: ["動き出し", "そうな", "ながら", "今にも"],
            answer: "そうな"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\nビジネスで成功できる人とできない人との違いは、どんなに大変な状況でもあきら めずに __ __ __ ★ と思う。",
            options: ["かどうか", "取り組める", "にある", "最後まで"],
            answer: "にある"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、50の中に入る最もよいものを、一つ選びなさい。",
            options: ["ご存じなわけだ", "ご存じだろうか", "ご存じのようだ", "ご存じだからだろう"],
            answer: "ご存じだろうか",
            imageName: "JLPTN2GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、51の中に入る最もよいものを、一つ選びなさい。",
            options: ["それに", "しかし", "または", "それどころか"],
            answer: "しかし",
            imageName: "JLPTN2GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、52の中に入る最もよいものを、一つ選びなさい。",
            options: ["作成者が理解したのは", "日本で考えられたのが", "ここに生み出したのは", "こうして生まれたのが"],
            answer: "こうして生まれたのが",
            imageName: "JLPTN2GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、53の中に入る最もよいものを、一つ選びなさい。",
            options: ["使用されている", "使用した点だ", "使用していける", "使用したいものだ"],
            answer: "使用されている",
            imageName: "JLPTN2GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、54の中に入る最もよいものを、一つ選びなさい。",
            options: ["結果として表れるかもしれない", "結果のはずだった", "結果に違いない", "結果でなければならなかった"],
            answer: "結果に違いない",
            imageName: "JLPTN2GrammarImage"
        ),
    ]
    return questions
}

func JLPTN2ReadingloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"筆者の考えに合うのはどれか。",
            options: ["ルールのないスポーツにも価値がある。", "ルールはスポーツで楽しむためのものだ。", "スポーツはルールを理解してから始めるべきだ。", "スポーツを通して、ルールの重要さが理解できる。"],
            answer: "ルールはスポーツで楽しむためのものだ。",
            imageName: "JLPTN2ReadingImage"
        ),
        Question(
            question:"この文書を書いた、一番の目的は何か。",
            options: ["暖房の使用を減らす工夫について意見を求める。", "暖房を使用せず、服装で調整することを求める。", "暖房を無駄に使用しないことを求める。", "暖房の温度を変更しないことを求める。"],
            answer: "暖房を無駄に使用しないことを求める。",
            imageName: "JLPTN2ReadingImage1"
        ),
        Question(
            question:"筆者の考えに合うのはどれか。",
            options: ["「やりたいことをやる」には、大きな目標を立てることが大切だ。", "「自分の望んでいること」を知れば、今何をすべきかがわかるようになる。", "「自分のやっていること」が「自分の望んでいること」だと気づくことが大切だ。", "「目の前のやりたいこと」を続ければ、それが「自分の望んでいること」になり得る。"],
            answer: "「目の前のやりたいこと」を続ければ、それが「自分の望んでいること」になり得る。",
            imageName: "JLPTN2ReadingImage2"
        ),
        Question(
            question:"このはがきで紹介されている割引サービスについて正しいものはどれか。",
            options: ["コーヒー豆を定期購入している人は、10月中だけ「冬の味わい」を10%割引で買う ことができる。", "「コーヒー豆を定期購入している人が10月中に「冬の味わい」を予約すれば、15%割引で買うことができる。", "「冬の味わい」を10月中に予約すれば、その他の商品をすべて15%割引で買うことができる。", "「冬の味わい」を買った人は、10月中だけその他の商品をすべて10%割引で買うことができる。"],
            answer: "「コーヒー豆を定期購入している人が10月中に「冬の味わい」を予約すれば、15%割引で買うことができる。",
            imageName: "JLPTN2ReadingImage3"
        ),
        Question(
            question:"筆者によると、日記を書き続けるとどうなるか。\nどういう日が「いい一日」であるかは人によって異なるだろうが、日記を書き続けること\nで、自分にとっての「いい一日」というものの構成要件がわかってくる。どうすれば「い\nい一日」になるかがわかってくるということだ。そうなれば「いい一日」がたまたま訪れ\nるのをただ待つのではなく、「今日」が「いい一日」になるように、「今日はいい一日\nだった」と日記に書けるように、主体的に行動するようになるだろう。",
            options: ["毎日を「いい一日」にしようとするようになる。", "毎日が「いい一日」だと思えるようになる。", "「いい一日」が訪れるのを楽しみにするようになる。", "「いい一日」をいつまでも忘れないようになる。"],
            answer: "毎日を「いい一日」にしようとするようになる。"
        ),
        Question(
            question:"日本人が使う「個性」という言葉について、筆者はどのように述べているか。",
            options: ["本来の意味とは違う使い方がされている。", "意味がないと思っている人が多い。", "主に若者に対して使われている。", "人によって使い方がさまざまだ。"],
            answer: "本来の意味とは違う使い方がされている。",
            imageName: "JLPTN2ReadingImage4"
        ),
        Question(
            question:"個性について、筆者の考えに合うものはどれか。",
            options: ["他人には理解できないものである。", "人より目立つことで発揮できるものである。", "人間なら誰でも持っているものである。", "ファッションを通して主張できるものである。"],
            answer: "人間なら誰でも持っているものである。",
            imageName: "JLPTN2ReadingImage4"
        ),
        Question(
            question:"筆者によると、本当の意味で「個性を磨く」とはどのようなことか。",
            options: ["自分の心に従って、関心があることを追い求めること", "自分が好きかどうかより、個性的に見られるかどうかを優先すること", "周囲の意見を参考に、無理なく自分の世界を広げること", "どんな物事にも、楽しさや面白さを見つける努力をすること"],
            answer: "自分の心に従って、関心があることを追い求めること",
            imageName: "JLPTN2ReadingImage4",
            underlinedKeywords: ["本当の意味で「個性を磨く」"]
        ),
        Question(
            question:"筆者によると、「話し言葉」の重要な特徴とは何か。",
            options: ["話し手と聞き手が声を使って情報を共有するところ", "話し手と聞き手の関係が多様であるところ", "話し手が聞き手との親しさによって表現を使い分けるところ", "話し手が聞き手と場面を共有するところ"],
            answer: "話し手が聞き手と場面を共有するところ",
            imageName: "JLPTN2ReadingImage5"
        ),
        Question(
            question:"誤解が生じてとあるが、どのような時に誤解が生じるのか。",
            options: ["読み手に必要な情報を十分に説明していない時", "読み手が理解していることを再び説明してしまった時", "自分のために書いたものを相手に送ってしまった時", "気を悪くした相手にきちんと謝らなかった時"],
            answer: "読み手に必要な情報を十分に説明していない時",
            imageName: "JLPTN2ReadingImage5",
            underlinedKeywords: ["誤解が生じて"]
        ),
        Question(
            question:"「書き言葉」について、筆者の考えに合うのはどれか。",
            options: ["相手がどのような情報を必要としているのかを調べることが大切だ。", "何をどのように書けば相手が理解できるかを考えることが大切だ。", "言い方や順序よりも文字と言葉の正確さを優先させたほうがいい。", "読み書きの知識よりも書く内容を重視したほうがいい。"],
            answer: "何をどのように書けば相手が理解できるかを考えることが大切だ。",
            imageName: "JLPTN2ReadingImage5"
        ),
        Question(
            question:"「筆者によると、これまでの旅はどのようなものだったか。",
            options: ["高くても遠い場所でのんびり過ごせればよかった。", "経験したことのないことができればよかった。", "気に入った場所に繰り返し行ければよかった。", "近くて安い場所に短期間行ければよかった。"],
            answer: "経験したことのないことができればよかった。",
            imageName: "JLPTN2ReadingImage6"
        ),
        Question(
            question:"「筆者によると、客は旅で何を重視するようになってきたか。",
            options: ["一回の旅行でさまざまな場所へ行けるかどうか", "観光するだけで満足できるかどうか", "行ってしたいことができるかどうか", "新しい場所へ行けるかどうか"],
            answer: "行ってしたいことができるかどうか",
            imageName: "JLPTN2ReadingImage6"
        ),
        Question(
            question:"「筆者によると、旅行会社が難しいと感じている点は何か。",
            options: ["個々のニーズに合った団体旅行を考え出すこと", "魅力を感じてもらえる場所を探し続けること", "旅行に行こうという気持ちにさせること", "価格を抑えた団体旅行を企画すること"],
            answer: "個々のニーズに合った団体旅行を考え出すこと",
            imageName: "JLPTN2ReadingImage6"
        ),
        Question(
            question:"「公立図書館が人気のある本を複数冊置くことについて、AとBはどのように述べているか。",
            options: ["AもBも、利用者の希望を重視しすぎていると述べている。", "AもBも、利用者へのサービス向上につながると述べている。", "Aは予算が足りなくなると述べ、Bは図書館の存在意義が失われると述べている。", "Aは利用者の満足度が高くなると述べ、Bは予算の使い方として適切でないと述べている。"],
            answer: "Aは利用者の満足度が高くなると述べ、Bは予算の使い方として適切でないと述べている。",
            imageName: "JLPTN2ReadingImage7"
        ),
        Question(
            question:"「公立図書館の役割について、AとBはどのように述べているか。",
            options: ["AもBも、利用者の教養を高めることだと述べている。", "AもBも、読書が好きな人を増やすことだと述べている。", "Aは利用者に読書に親しんでもらうことだと述べ、Bは貸し出す本の多様性を確保することだと述べている。", "Aは利用者が読書を楽しめる環境を作ることだと述べ、Bは書店よりも新しい本をそろえることだと述べている。"],
            answer: "Aは利用者に読書に親しんでもらうことだと述べ、Bは貸し出す本の多様性を確保することだと述べている。",
            imageName: "JLPTN2ReadingImage7"
        ),
        Question(
            question:"「感動したことを現代に持ち帰ってくるとは、どのようなことか。",
            options: ["感動したことを現代に持ち帰ってくるとは、どのようなことか。", "感動した記憶をデザインに生かす。", "過去に流行したデザインをコピーする。", "人が感動したことからデザインのヒントをもらう。"],
            answer: "感動した記憶をデザインに生かす。",
            imageName: "JLPTN2ReadingImage8",
            underlinedKeywords: ["感動したことを現代に持ち帰ってくる"]
        ),
        Question(
            question:"「感動について、筆者の考えに合うのはどれか。",
            options: ["感動は周囲の力でしかつくられない。", "感動したことは年を取るにつれて思い出せなくなる。", "周囲の力でつくられた感動は記憶に残りやすい。", "心の底から感動したことは鮮明な思い出となる。"],
            answer: "心の底から感動したことは鮮明な思い出となる。",
            imageName: "JLPTN2ReadingImage8"
        ),
        Question(
            question:"アイディアについて、筆者はどのように考えているか。",
            options: ["記憶力が強いほど、アイディアが生まれやすくなる。", "他人の力を上手に利用することで、アイディアが商品につながる。", "感動した思い出が豊富であるほど、多くのアイディアが生まれる。", "感動をヒト・コト・モノに分けて考えると、いいアイディアが生まれる。"],
            answer: "感動した思い出が豊富であるほど、多くのアイディアが生まれる。",
            imageName: "JLPTN2ReadingImage8"
        ),
        Question(
            question:"ユンさんは、来週ミハマホテルのビュッフェに行きたいと考えている。金曜か土曜の 12時から17時の間で、2時間いられるものがいい。ユンさんの希望に合うビュッフェはどれか。",
            options: ["「ベルン」のランチビュッフェ", "「ベルン」のデザートビュッフェ", "「ベルン」の夕食ビュッフェ", "「みよし」のランチビュッフェ"],
            answer: "「みよし」のランチビュッフェ",
            imageName: "JLPTN2ReadingImage9"
        ),
        Question(
            question:"エンリケさんは、今度の土曜日に妻と一緒にレストラン「ベルン」の夕食ビュッフェに行き、「窓際特別テーブル」を利用したい。エンリケさんは63歳、妻は6歳である。 エンリケさんたちの料金はどのようになるか。",
            options: ["エンリケさん6,000円、妻6,000円のみ", "エンリケさん6,000円、妻6,000円、テ ー ブル料金1,000円", "エンリケさん6,000円、妻5,500円、テ ー ブル料金1,000円", "エンリケさん5,500円、妻5,000円、テ ー ブル料金1,000円"],
            answer: "エンリケさん6,000円、妻5,500円、テ ー ブル料金1,000円",
            imageName: "JLPTN2ReadingImage9"
        ),
    ]
    return questions
}

let JLPTN2AUDIOTESTaudioQuestions: [AudioQuestion] = [
    AudioQuestion(options: ["先週の会議の記録を作成する", "調査結果を入力する", "林さんに電話をする", "プレゼンのしりょうを作成する"], answer: "先週の会議の記録を作成する", audioFile: "N2Q1", startTime: 0, endTime: 77),
    AudioQuestion(options: ["2000円", "1000円", "900円", "100円"], answer: "900円", audioFile: "N2Q2", startTime: 0, endTime: 84),
    AudioQuestion(options: ["ちゅうりんじょうで張り紙を見る", "大学でしんせいしょのじゅんびをする", "市役所にしんせいしょを取りに行く", "市役所でがくせいしょうをコピーする"], answer: "大学でしんせいしょのじゅんびをする", audioFile: "N2Q3", startTime: 0, endTime: 91),
    AudioQuestion(options: ["インターネットで店をさがす", "木村さんに道具を借りる", "アウトドア用品の店で道具を買う", "初心者向けのこうざに参加する"], answer: "大初心者向けのこうざに参加する", audioFile: "N2Q4", startTime: 0, endTime: 81),
    AudioQuestion(options: ["工場の かんりのじょうきょうを 調べる", "けいやくのうかに じょうきょうを聞く", "運送会社にじょうきょうを聞く", "そうこの ほぞんじょうきょうを 調べる"], answer: "大初心者向けのこうざに参加する", audioFile: "N2Q5", startTime: 0, endTime: 99),
    AudioQuestion(options: ["近所で起こった事件について調べるため", "さいがい時のひなん場所を知らせるため", "どこにだれが住んでいるのか知るため", "たんとうちいきの住民にあいさつするため"], answer: "どこにだれが住んでいるのか知るため", audioFile: "N2Q6", startTime: 0, endTime: 70),
    AudioQuestion(options: ["きんちょうして落ち着きがなかったこと", "話の進め方が適当でなかったこと", "声が小さくて聞き取りにくかったこと", "質問への対応がよくなかったこと"], answer: "話の進め方が適当でなかったこと", audioFile: "N2Q7", startTime: 0, endTime: 82),
    AudioQuestion(options: ["スタッフの数がそろっていないから", "店の工事が間に合わないから", "メニューが決まっていないから", "注文した食器がとどいていないから"], answer: "スタッフの数がそろっていないから", audioFile: "N2Q8", startTime: 0, endTime: 84),
    AudioQuestion(options: ["考え事をするため", "頭の中を整理するため", "のうを休めるため", "体をリラックスさせるため"], answer: "頭の中を整理するため", audioFile: "N2Q9", startTime: 0, endTime: 80),
    AudioQuestion(options: ["すぐに社会に役立つ研究が少ないこと", "産業界の協力が得られなくなること", "実用化までに時間がかかりすぎること", "きそ研究がじゅうしされなくなること"], answer: "きそ研究がじゅうしされなくなること", audioFile: "N2Q10", startTime: 0, endTime: 84),
    AudioQuestion(options: ["電気をつけておく時間が設定できる", "動くものに反応して電気がつく", "電気の明るさが細かくちょうせつできる", "外の明るさに応じて電気の明るさが変わる"], answer: "電気をつけておく時間が設定できる", audioFile: "N2Q11", startTime: 0, endTime: 90),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N2Q12", startTime: 0, endTime: 83),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "1", audioFile: "N2Q13", startTime: 0, endTime: 82),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N2Q14", startTime: 0, endTime: 80),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N2Q15", startTime: 0, endTime: 74),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N2Q16", startTime: 0, endTime: 86),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N2Q17", startTime: 0, endTime: 38),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N2Q18", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N2Q19", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N2Q20", startTime: 0, endTime: 25),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N2Q21", startTime: 0, endTime: 24),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N2Q22", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N2Q23", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N2Q24", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N2Q25", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N2Q26", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N2Q27", startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N2Q28", startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3","4"], answer: "3", audioFile: "N2Q29", startTime: 0, endTime: 142),
    AudioQuestion(options: ["1", "2", "3","4"], answer: "1", audioFile: "N2Q30", startTime: 0, endTime: 128),
    AudioQuestion(options: ["北中通り", "大川通り", "上田通り","山下通り"], answer: "上田通り", audioFile: "N2Q31", startTime: 0, endTime: 159,question:"質問1"),
    AudioQuestion(options: ["北中通り", "大川通り", "上田通り","山下通り"], answer: "北中通り",question:"質問2"),
]

func JLPTN1loadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n社会活動に参加することで、人脈を広げることができた。",
            options: ["じんみゃく", "じんまく", "にんみゃく", "にんまく"],
            answer: "じんみゃく",
            underlinedKeywords: ["人脈"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n鈴木さんは指摘がいつも的確で、本当に賢い人だと思う。",
            options: ["するどい", "かしこい", "すごい", "えらい"],
            answer: "かしこい",
            underlinedKeywords: ["賢い"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n文化の違いが食生活に顕著に現れている。",
            options: ["げんちょ", "けんしょ", "けんちょ", "げんしょ"],
            answer: "けんちょ",
            underlinedKeywords: ["顕著"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\n相談の内容は多岐にわたった。",
            options: ["たき", "たじ", "たぎ", "たし"],
            answer: "たき",
            underlinedKeywords: ["多岐"]
        ),
        Question(
            question:"__のことばの読み方として最もよいものを,一つえらびなさい。\nその風習は、今はもう廃れてしまった。",
            options: ["くずれて ", "かすれて", "つぶれて", "すたれて"],
            answer: "すたれて",
            underlinedKeywords: ["廃れて"]
        ),
        Question(
            question:"__の言葉を漢字で書くとき、最もよいものを一つ選びなさい。\n家賃の相場は地域によって違う。",
            options: ["あいば", "そうば", "あいじょう", "そうじょう"],
            answer: "そうば",
            underlinedKeywords: ["相場"]
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n私はこの土地で定職に就き、生活の( )を築いた。",
            options: ["根拠", "基盤", "根源", "基地"],
            answer: "基盤"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n議論は難航すると思ったが、すぐに意見がまとまり、( )結論が出た。",
            options: ["すんなり", "うっとり", "ふんわり", "こっそり"],
            answer: "すんなり"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\nさっき駅前で佐藤さんを( )んですが、今、海外にいるはずなのに変ですね。",
            options: ["見合わせた", "見過ごした", "見かけた", "見違えた"],
            answer: "見かけた"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n市長の責任ある行動が住民の不安を( )し、行政に対する期待が一気に高まった。",
            options: ["一掃", "追放", "削除", "排出"],
            answer: "一掃"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n十分に煮た野菜は味が(   )柔らかく、とてもおいしかった。",
            options: ["溶けて", "染みて", "潤って", "沈んで"],
            answer: "溶けて"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\nこのテーブルは私が子どものころから使っているので、 (   ) があって捨てられない。",
            options: ["心情", "好感", "熱意", "愛着"],
            answer: "愛着"
        ),
        Question(
            question:"( )に入れるのに最もよいものを、一つ選びなさい。\n現社長は創立者から経営の(   )を学んだ。",
            options: ["データベース", "ベテラン", "ライフワーク", "ノウハウ"],
            answer: "ノウハウ"
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n高橋さんにはかねがねお会いしたいと思っていました。",
            options: ["直接", "ぜひ", "早く", "以前から"],
            answer: "以前から",
            underlinedKeywords: ["かねがね"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n林さんはそれを故意に捨てたらしい。",
            options: ["わざと", "うっかり", "いやいや", "さっさと"],
            answer: "わざと",
            underlinedKeywords: ["故意に"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n昨日、鈴木さんにおわびした。",
            options: ["文句を言った", "お礼を言った", "断った", "謝った"],
            answer: "謝った",
            underlinedKeywords: ["おわびした。"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n中村さんの言葉からは強い意気込みが伝わってくる。",
            options: ["敬意", "自信", "意欲", "信頼"],
            answer: "意欲",
            underlinedKeywords: ["意気込み"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n妹は少しおびえているようだった。",
            options: ["焦って", "怖がって", "悩んで", "悔やんで"],
            answer: "怖がって",
            underlinedKeywords: ["おびえて"]
        ),
        Question(
            question:"__の言葉に意味が最も近いものを、一つ選びなさい。\n私はその一言に安堵した。",
            options: ["すっとした ", "はっとした ", "ほっとした", "かっとした"],
            answer: "ほっとした",
            underlinedKeywords: ["安堵した。"]
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n閑静",
            options: ["そのレストランは繁華街から外れた閑静な場所にある。", "今日は朝から具合が悪かったので、会社を休んで家で閑静にしていた。", "用事が早く済み、閑静な時間ができたので、映画を見に行くことにした。", "日中はにぎやかな公園だが、夜になると急に閑静になる。"],
            answer: "そのレストランは繁華街から外れた閑静な場所にある。そのレストランは繁華街から外れた閑静な場所にある。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\nたやすい",
            options: ["弟は寝坊したらしく、たやすい物だけ食べて、慌てて出かけていった。", "伊藤氏とは大学時代からの親友で、本音が言えるたやすい関係だ。", "せっかくの日曜日だから、ゆっくり休んでたやすく過ごそうと思う。", "この問題は想像以上に複雑で、たやすく解決できるものではなかった。"],
            answer: "この問題は想像以上に複雑で、たやすく解決できるものではなかった。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n察する",
            options: ["医師たちはチームを組み、意見を出し合って、最良の治療法を察した。", "気象予報士はテレビの天気予報で、来週の気温の変化を察し始めた。", "鈴木さんは、私が何も言わなくても、私の気持ちを察して慰めてくれた。", "外を歩いていたら急にいいアイディアを察したので、手帳にメモをした。"],
            answer: "鈴木さんは、私が何も言わなくても、私の気持ちを察して慰めてくれた。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n食い違う",
            options: ["この事件は、複数の目撃者の話がそれぞれ食い違っており、不明な点が多い。", "金庫を開けようと思ったが、どの鍵も食い違って開けられなかった。", "何だか歩きにくいと思ったら、サンダルの左右が食い違っていた。", "調味料を変えたのか、この料理はいつもと味が食い違っているように感じる。"],
            answer: "この事件は、複数の目撃者の話がそれぞれ食い違っており、不明な点が多い。"
        ),
        Question(
            question:"次の言葉の使い方として最もよいものを、一つ選びなさい。\n過密",
            options: ["雑誌で紹介されてから、この商品への過密な注文が続いているらしい。", "水質汚染に関して人々の抗議が過密になり、政府は対策を迫られている。", "今回の出張は過密なスケジュールで、ゆっくり食事する時間もなさそうだ。", "春になると、この池の周りには、色とりどりの花が過密に咲き乱れる。"],
            answer: "今回の出張は過密なスケジュールで、ゆっくり食事する時間もなさそうだ。"
        ),
    ]
    return questions
}

func JLPTN1GrammarloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n朝の満員電車。車内の混雑を (   ) 、私の目の前に座っている学生風の男は、平然とノートパソコンを広げて、作業に没頭していた。",
            options: ["含めて", "もとに", "除いて", "よそに"],
            answer: "よそに"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n私の父は、(   )もしないで漫画を批判するから、本当に嫌になる。",
            options: ["読まない", "読み", "読もう", "読んで"],
            answer: "読み"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(卒業生へのインタビューで)\n聞き手「学生時代にやったことで、今の仕事に役立っていることは何でしょうか。」\n田中 「ラグビー部での経験ですね。チームワークの大切さを痛感しました。( )、それは去年企画チームのリーダーになって初めて気づいたことですが。」",
            options: ["要するに", "あるいは", "もっとも", "ついては"],
            answer: "もっとも"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n村の郷土史をまとめるにあたり、今年90歳になる元村長の東山さんにお話を伺った。\n村に初めて汽車が走ったときのことを鮮明に覚えて( )、その記憶力に驚いた。",
            options: ["おいでになり", "差し上げ", "まいり", "申し上げ"],
            answer: "おいでになり"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(求人サイトの「よくある質問」で)\nQ : インテリアに関する知識がないのですが、働けますか。\nA : 研修があるので大丈夫です。知識はある( )が、それよりも人柄や仕事に取り組む姿勢を重視しています。",
            options: ["にすぎません", "ことは否めません", "に越したことはありません", "といっても過言ではありません"],
            answer: "に越したことはありません"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n(お知らせで)\n山田「はい、山田です。」\n水道管破裂による断水のため、8月12日まで市民プールの営業を休止します。復旧状況(   )、営業再開が遅れる可能性がありますので、ご了承ください。",
            options: ["次第には", "次第に", "次第では", "次第"],
            answer: "次第では"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\nクレジットカードの番号等、他人に( )困る情報は、電子メールには書かないほうがいいそうだ。",
            options: ["知っていても", "知っていなくても", "知らなくては", "知られては"],
            answer: "知られては"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n仕事は、決められた時間内に、いかに成果を上げるかが大切であり、単に時間をかけて( )と私は思う。",
            options: ["がんばることだといってもおかしくない ", "がんばればいいというものではない", "がんばることでしかない", "がんばりようがない"],
            answer: "がんばればいいというものではない"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n現在、潜水調査船を用いた調査研究が進展中であり、いずれ近いうちに海底のより詳細な地質構造が明らかに( )。",
            options: ["なるものと思われる", "するという思いがある", "なったかに思える", "するだろうと思う"],
            answer: "なるものと思われる"
        ),
        Question(
            question:"次の文の( )に入れるのに最もよいものを、一つ えらびなさい。\n山下「あのう、西村先輩。私、今日でこのサークルを( )。」\n西村「ええ? 辞める? 急にどうして?」",
            options: ["辞めてしまわれたのでしょうか", "辞めてしまったのかと思って", "辞めさせたらどうでしょうか", "辞めさせてもらおうかと思って"],
            answer: "辞めさせてもらおうかと思って"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n「アセビ」という、白い花を咲かせる樹木を漢字で「馬酔木」と書くのは、アセビには ★ __ __ __ そうです。 ",
            options: ["由来する", "有毒成分があり", "状態になることに", "馬が食べると酔ったような"],
            answer: "有毒成分があり"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n家族の時間を大切にする夫は、つい __ __ ★ __ ありがたい存在です。",
            options: ["本当に大切なものは何なのか", "私に", "仕事に夢中になりすぎる", "気づかせてくれる"],
            answer: "本当に大切なものは何なのか"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\nZ県知事の林和夫氏は、週刊誌で、脱税を行った __ __ ★ __ 異なり、名誉を傷つけられたとして、発行元のX社を相手取り訴訟を起こした。",
            options: ["事実とは全く", "疑いがあるなどと", "報じられた", "ことに対し"],
            answer: "ことに対し"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\nQ鉄道が10年ぶりに運賃値上げに踏み切った。安全対策や原油の高騰で支出が増え、経営努力だけでは対応しきれないと判断 __ __ ★ __ 。",
            options: ["という", "の", "ことだ", "して"],
            answer: "ことだ"
        ),
        Question(
            question:"次の文の ★ に入る最もよいものを、一つ選びなさい。\n世の中にはさまざまな資格があふれているが、資格を取った __ __ __ ★ 世間は甘くないらしい。",
            options: ["だけ", "ほど", "で", "希望の職につける"],
            answer: "ほど"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、41の中に入る最もよいものを、一つ選びなさい。",
            options: ["こちらにはいえないこともない", "こちらにいえるとは限らない", "こちらにもいえるとは思わなかった", "こちらにはいえないと思うのか"],
            answer: "こちらにいえるとは限らない",
            imageName: "JLPTN1GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、42の中に入る最もよいものを、一つ選びなさい。",
            options: ["そういう", "する", "あの", "やろうという"],
            answer: "そういう",
            imageName: "JLPTN1GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、43の中に入る最もよいものを、一つ選びなさい。",
            options: ["トイレのことだ", "トイレのことであるに違いない", "トイレだからである", "トイレだと聞いている"],
            answer: "トイレのことだ",
            imageName: "JLPTN1GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、44の中に入る最もよいものを、一つ選びなさい。",
            options: ["もっともである", "当然である", "ところがである", "例えばである"],
            answer: "ところがである",
            imageName: "JLPTN1GrammarImage"
        ),
        Question(
            question:"次の文章を読んで、文章全体の内容を考えて、45の中に入る最もよいものを、一つ選びなさい。",
            options: ["認識させられたことがある", "認識させられたおかげだ", "認識させられる話があった", "認識させられる出来事だった"],
            answer: "認識させられる出来事だった",
            imageName: "JLPTN1GrammarImage"
        ),
    ]
    return questions
}

func JLPTN1ReadingloadLocalData() -> [Question] {
    let questions = [
        Question(
            question:"筆者の考えに合うのはどれか。",
            options: ["教師と生徒が自由に発言し合うことも必要だ。", "教師は生徒の考えを想像するべきだ。", "教師は生徒の発言を待つことも必要だ。", "教師は生徒に沈黙の時間を与えないようにすべきだ。"],
            answer: "教師は生徒の発言を待つことも必要だ。",
            imageName: "JLPTN1ReadingQuestionImage"
        ),
        Question(
            question:"市民運動場の予約について、このお知らせは何を知らせているか。",
            options: ["管理事務所窓口での予約受付期間が変更になること", " 管理事務所窓口で利用者登録をすれば、インターネット上で予約ができるようになること", "インターネット上での予約受付時間がこれまでより長くなること", "インターネット上の予約システムの導入により、管理事務所窓口での予約ができなくなること"],
            answer: "管理事務所窓口で利用者登録をすれば、インターネット上で予約ができるようになること",
            imageName: "JLPTN1ReadingQuestionImage1"
        ),
        Question(
            question:"筆者によると、異文化間で対話を通して人間関係を築く上で最も大切なことは何か。",
            options: ["自己の価値観を理解してもらおうとする態度", "自己の価値観を保ちながら、他者の価値観を理解する態度", "他者と自己の共通の価値観を創り上げていく態度", "他者の価値観の中に自己の価値観との共通点を見つける態度"],
            answer: "他者と自己の共通の価値観を創り上げていく態度",
            imageName: "JLPTN1ReadingQuestionImage2"
        ),
        Question(
            question:"この文章で筆者が述べていることは何か。",
            options: ["「普通」という視点がないと、「特別なもの」は作れない。", "「普通の人」が普通のものを作ると、「特別なもの」になる。", "「変な人」が普通のものを作ると、「特別なもの」になる。", "「変な人」の視点でしか、「特別なもの」は作れない。"],
            answer: "「普通」という視点がないと、「特別なもの」は作れない。",
            imageName: "JLPTN1ReadingQuestionImage3"
        ),
        Question(
            question:"謎が多いとあるが、謎に合うのはどれか。",
            options: ["犬ではなくオオカミを飼おうとしたこと", "オオカミを肉食獣だと思わなかったこと", "恐ろしいオオカミを飼って利用しようと考えたこと", "狩りの邪魔になるのに恐ろしいオオカミを飼おうとしたこと"],
            answer: "恐ろしいオオカミを飼って利用しようと考えたこと",
            imageName: "JLPTN1ReadingQuestionImage4",
            underlinedKeywords: ["謎が多い"]
        ),
        Question(
            question:"筆者によると、どのようなオオカミが犬の祖先だと考えられるか。",
            options: ["人間から頼りにされたオオカミ", "狩りの上手なオオカミ", "群れから追い出されたオオカミ", "群れの中で下位のオオカミ"],
            answer: "群れの中で下位のオオカミ",
            imageName: "JLPTN1ReadingQuestionImage4"
        ),
        Question(
            question:"犬の祖先が人間と暮らすようになったきっかけについて、筆者はどのように考えているか。",
            options: ["人間を利用して仲間からの危険を避けようとした。", "人間に近づいて食糧を得ようとした。", "人間が狩りの手助けをさせた。", "人間がエサを与えた。"],
            answer: "人間に近づいて食糧を得ようとした。",
            imageName: "JLPTN1ReadingQuestionImage4"
        ),
        Question(
            question:"そんなふうにとあるが、子どもはどんなふうに大人を見ているのか。",
            options: ["早く大人になりたいと思っている。", "大人の姿から魅力的な部分を探している。", "自分が失敗したときどうするか考えている。", "あんな大人にはなりたくないと思っている。"],
            answer: "大人の姿から魅力的な部分を探している。",
            imageName: "JLPTN1ReadingQuestionImage5",
            underlinedKeywords: ["そんなふうに"]
        ),
        Question(
            question:"これほど子どもにとって不幸なことはないとあるが、何が不幸なのか。",
            options: ["大人を見ても未来の自分に希望が持てないこと", "大人を見てもすてきな大人になる自信が持てないこと", "大人を見ても今何をしておけばいいか分からないこと", "大人を見ても将来自分のしたいことが見つからないこと"],
            answer: "大人を見ても未来の自分に希望が持てないこと",
            imageName: "JLPTN1ReadingQuestionImage5",
            underlinedKeywords: ["これほど子どもにとって不幸なことはない"]
        ),
        Question(
            question:"筆者が大人に対して伝えたいことは何か。",
            options: ["人生の先輩らしく、いつもかっこいい大人でいよう。", "ベテランの子どもとして、子どもを幸福な将来へ導いてあげよう。", "子どもたちに、大人の魅力的な世界を教えよう。", "子どもたちに、ベテランの子どもとしての行いを示そう。"],
            answer: "子どもたちに、ベテランの子どもとしての行いを示そう。",
            imageName: "JLPTN1ReadingQuestionImage5"
        ),
        Question(
            question:"変われば変わるものだとあるが、科学者はどのように変わったのか。",
            options: ["以前は記者を世俗的だと見ていたが、現在はメディアを信頼するようになった。", "以前は記者と距離を置いていたが、現在は積極的にメディアとかかわるようになった。", "以前は同僚の目を気にしていたが、現在は記者の目をより気にするようになった。", "以前は自らメディア戦略を練っていたが、現在は記者の力を借りるようになった。"],
            answer: "以前は記者と距離を置いていたが、現在は積極的にメディアとかかわるようになった。",
            imageName: "JLPTN1ReadingQuestionImage6",
            underlinedKeywords: ["変われば変わるものだ"]
        ),
        Question(
            question:"科学者との関係で、今のジャーナリズムにはどのような問題があるか。",
            options: ["科学者が望む論文を記事にしていない。", "科学者が十分満足できる広報をしていない。", "科学者から提供された情報をそのまま伝えている。", "科学者から提供された情報を十分理解せずに報じている。"],
            answer: "科学者から提供された情報をそのまま伝えている。",
            imageName: "JLPTN1ReadingQuestionImage6"
        ),
        Question(
            question:"この文章で筆者が最も言いたいことは何か。",
            options: ["科学者は、科学ジャーナリズムの立場をもっと理解すべきである。", "科学者は、科学ジャーナリズムとの関係のあり方を改めて見直すべきである。", "科学ジャーナリズムは、報道内容の決定にあたって主体的であるべきだ。", "科学ジャーナリズムは、科学の価値を正しく認めてもらえるよう努めるべきだ。"],
            answer: "科学ジャーナリズムは、報道内容の決定にあたって主体的であるべきだ。",
            imageName: "JLPTN1ReadingQuestionImage6"
        ),
        Question(
            question:"雑談の良い点について、AとBはどのように述べているか。",
            options: ["Aはお互いの考えを認め合えると述べ、Bは相手の人間性が見えてくると述べている。", "Aは相手と意見交換ができると述べ、Bはバカらしい話をしても受け入れてもらえると述べている。", "Aは自分が気づいていなかったことに気づけると述べ、Bは相手の本音を知ることができると述べている。", "Aは誰もが自由に意見を発言できると述べ、Bは相手と自分との共通点を見つけることができると述べている。"],
            answer: "Aは自分が気づいていなかったことに気づけると述べ、Bは相手の本音を知ることができると述べている。",
            imageName: "JLPTN1ReadingQuestionImage7"
        ),
        Question(
            question:"雑談をするときの姿勢について、AとBはどのように述べているか。",
            options: ["AもBも、相手の話をよく聞くことが大切だと述べている。", "AもBも、相手と自分が同じぐらいの割合で話すようにしようと述べている。", "Aは相手の話を聞くことが大切だと述べ、Bは自分から話すようにしようと述べている。", "Aは相手の発言の意図を考えることが大切だと述べ、Bはまずは相手に話をさせることが大切だと述べている。"],
            answer: "Aは相手の話を聞くことが大切だと述べ、Bは自分から話すようにしようと述べている。",
            imageName: "JLPTN1ReadingQuestionImage7"
        ),
    ]
    return questions
}

let JLPTN1AUDIOTESTaudioQuestions: [AudioQuestion] = [
    AudioQuestion(options: ["商品を補充する", "さくら店に商品を送る", "ダイレクトメールの発送の準備をする", "店で使用するかざりを作る"], answer: "商品を補充する", audioFile: "N1Q1" ,startTime: 0, endTime: 70),
    AudioQuestion(options: ["体験者のビデオを見る", "先生にすいせんじょうを依頼する", "保険の加入手続きをする", "指定科目の成績をかくにんする"], answer: "指定科目の成績をかくにんする", audioFile: "N1Q2",startTime: 0, endTime: 87),
    AudioQuestion(options: ["見積もりの合計金額を見直す", "見積もり金額の内訳を詳しく書く", "バスが確保できたかかくにんする", "見積書の有効期限を書く"], answer: "見積もり金額の内訳を詳しく書く", audioFile: "N1Q3",startTime: 0, endTime: 86),
    AudioQuestion(options: ["企画書を修正する", "出張の資料を作成する", "店の予約をキャンセルする", "会食に使う店を探す"], answer: "企画書を修正する", audioFile: "N1Q4",startTime: 0, endTime: 88),
    AudioQuestion(options: ["研修期間を長くする", "店の経営理念を伝える", "時給を上げる", "業務のしゅうじゅくどを評価する"], answer: "店の経営理念を伝える", audioFile: "N1Q5",startTime: 0, endTime: 114),
    AudioQuestion(options: ["投書らんを設ける", "政策関連の記事に図を用いる", "イベント情報の記事を増やす", "子育て関連の記事を増やす"], answer: "政策関連の記事に図を用いる", audioFile: "N1Q6",startTime: 0, endTime: 105),
    AudioQuestion(options: ["料理が冷めにくいから", "丈夫で長持ちするから", "安くて見た目がはなやかだから", "いろいろな調理に使えるから"], answer: "丈夫で長持ちするから", audioFile: "N1Q7",startTime: 0, endTime: 117),
    AudioQuestion(options: ["上司が応募を 快く思わないこと", "新しい部署に採用される可能性が低いこと", "商品開発の仕事の経験がないこと", "不採用だったら今の部署にいづらくなること"], answer: "不採用だったら今の部署にいづらくなること", audioFile: "N1Q8",startTime: 0, endTime: 113),
    AudioQuestion(options: ["ほかの学校に転校したこと", "友達が迎えに来てくれたこと", "先生が相談に乗ってくれたこと", "同じ経験をもつ人と話せたこと"], answer: "友達が迎えに来てくれたこと", audioFile: "N1Q9",startTime: 0, endTime: 123),
    AudioQuestion(options: ["世界初のロボットの誕生", "ロボットの定義づけ", "ロボットの社会的使命", "ロボット製作に必要な情報処理"], answer: "世界初のロボットの誕生", audioFile: "N1Q10",startTime: 0, endTime: 94),
    AudioQuestion(options: ["集落のいせきとして国内最古のものであること", "国内のいせきの中で規模が最も大きいこと", "高度な技術で作った道具が見つかったこと", "食料として作物を育てていたことがわかったこと"], answer: "食料として作物を育てていたことがわかったこと", audioFile: "N1Q11",startTime: 0, endTime: 97),
    AudioQuestion(options: ["安全性を確保した通学路にすること", "防犯のために街灯の数を増やすこと", "住民が交流できる施設を建てること", "災害時の避難場所を作ること"], answer: "安全性を確保した通学路にすること", audioFile: "N1Q12",startTime: 0, endTime: 124),
    AudioQuestion(options: ["政治に関心をもたない人が増えたから", "候補者間の主張の違いが不明確だったから", "現職の知事の勝利が確実だったから", "投票の時期が年末で忙しい人が多かったから"], answer: "候補者間の主張の違いが不明確だったから", audioFile: "N1Q13",startTime: 0, endTime: 104),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N1Q14",startTime: 0, endTime: 86),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "4", audioFile: "N1Q15",startTime: 0, endTime: 85),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N1Q16",startTime: 0, endTime: 88),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "3", audioFile: "N1Q17",startTime: 0, endTime: 82),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "1", audioFile: "N1Q18",startTime: 0, endTime: 81),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N1Q19",startTime: 0, endTime: 89),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N1Q20",startTime: 0, endTime: 29),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N1Q21",startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N1Q22",startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N1Q23",startTime: 0, endTime: 25),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N1Q24",startTime: 0, endTime: 23),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N1Q25",startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N1Q26",startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N1Q27",startTime: 0, endTime: 24),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N1Q28",startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N1Q29",startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N1Q30",startTime: 0, endTime: 26),
    AudioQuestion(options: ["1", "2", "3"], answer: "1", audioFile: "N1Q31",startTime: 0, endTime: 28),
    AudioQuestion(options: ["1", "2", "3"], answer: "2", audioFile: "N1Q32",startTime: 0, endTime: 27),
    AudioQuestion(options: ["1", "2", "3"], answer: "3", audioFile: "N1Q33",startTime: 0, endTime: 31),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N1Q34",startTime: 0, endTime: 154),
    AudioQuestion(options: ["1", "2", "3", "4"], answer: "2", audioFile: "N1Q35",startTime: 0, endTime: 143),
    AudioQuestion(options: ["富田美術館","アーク美術館","秋山美術館","ポニー美術館"], answer: "富田美術館", audioFile: "N1Q36", startTime: 0, endTime: 186,question:"質問1"),
    AudioQuestion(options: ["富田美術館","アーク美術館","秋山美術館","ポニー美術館"], answer: "アーク美術館",question:"質問2"),
]
