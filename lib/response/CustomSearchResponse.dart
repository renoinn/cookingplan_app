import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'CustomSearchResponse.freezed.dart';
part 'CustomSearchResponse.g.dart';

@freezed
abstract class CustomSearchResponse with _$CustomSearchResponse {

  factory CustomSearchResponse({
    String kind,
    Map<String, dynamic> url,
    CustomSearchQueries queries,
    Map<String, dynamic> context,
    Map<String, dynamic> searchInformation,
    List<CustomSearchItem> items,
  }) = _CustomSearchResponse;

  factory CustomSearchResponse.fromJson(Map<String, dynamic> json) => _$CustomSearchResponseFromJson(json);
}

@freezed
abstract class CustomSearchQueries with _$CustomSearchQueries {

  factory CustomSearchQueries({
    List<CustomSearchRequest> request,
    List<CustomSearchNextPage> nextPage,
  }) = _CustomSearchQueries;

  factory CustomSearchQueries.fromJson(Map<String, dynamic> json) => _$CustomSearchQueriesFromJson(json);
}

@freezed
abstract class CustomSearchRequest with _$CustomSearchRequest {

  factory CustomSearchRequest({
    String title,
    String totalResults,
    String searchTerms,
    int count,
    int startIndex,
    String inputEncoding,
    String outputEncoding,
    String safe,
    String cx,
  }) = _CustomSearchRequest;

  factory CustomSearchRequest.fromJson(Map<String, dynamic> json) => _$CustomSearchRequestFromJson(json);
}

@freezed
abstract class CustomSearchNextPage with _$CustomSearchNextPage {

  factory CustomSearchNextPage({
    String title,
    String totalResults,
    String searchTerms,
    int count,
    int startIndex,
    String inputEncoding,
    String outputEncoding,
    String safe,
    String cx,
  }) = _CustomSearchNextPage;

  factory CustomSearchNextPage.fromJson(Map<String, dynamic> json) => _$CustomSearchNextPageFromJson(json);
}

@freezed
abstract class CustomSearchItem with _$CustomSearchItem {

  factory CustomSearchItem({
    String kind,
    String title,
    String htmlTitle,
    String link,
    String displayLink,
    String snippet,
    String htmlSnippet,
    String cacheId,
    String formattedUrl,
    String htmlFormattedUrl,
    @JsonKey(name: 'pagemap')
    CustomSearchPageMap pageMap,
  }) = _CustomSearchItem;

  factory CustomSearchItem.fromJson(Map<String, dynamic> json) => _$CustomSearchItemFromJson(json);
}

@freezed
abstract class CustomSearchPageMap with _$CustomSearchPageMap {

  factory CustomSearchPageMap({
    List<Map<String, dynamic>> thumbnail,
    @JsonKey(name: 'cse_thumbnail')
    List<Map<String, dynamic>> cseThumbnail,
    @JsonKey(name: 'metatags')
    List<Map<String, dynamic>> metaTags,
    @JsonKey(name: 'cse_image')
    List<Map<String, dynamic>> cseImage,
  }) = _CustomSearchPageMap;

  factory CustomSearchPageMap.fromJson(Map<String, dynamic> json) => _$CustomSearchPageMapFromJson(json);
}
/*
{
  "items": [
    {
      "kind": "customsearch#result",
      "title": "調味料は全て3 基本のほっこり肉じゃが by RINATY（りなてぃ ...",
      "htmlTitle": "調味料は全て3  基本のほっこり肉じゃが   by RINATY（りなてぃ ...",
      "link": "https://oceans-nadia.com/user/236306/recipe/382662",
      "displayLink": "oceans-nadia.com",
      "snippet": "2019年11月20日 ... にんじん…乱切りにする。 たまねぎ…くし切りにする。 牛肉…たべやすい大きさに切る。 \nしらたき…水でよく洗い3㎝ほどに切る。 絹さや…筋を取っておく。 フライパンにサラダ油\nを熱し、じゃがいも、にんじん、たまねぎを炒める。 ※玉ねぎが透明 ...",
      "htmlSnippet": "2019年11月20日 <b>...</b> <b>にんじん</b>…乱切りにする。 <b>たまねぎ</b>…くし切りにする。 牛肉…たべやすい大きさに切る。 <br>\nしらたき…水でよく洗い3㎝ほどに切る。 絹さや…筋を取っておく。 フライパンにサラダ油<br>\nを熱し、<b>じゃがいも</b>、<b>にんじん</b>、<b>たまねぎ</b>を炒める。 ※<b>玉ねぎ</b>が透明&nbsp;...",
      "cacheId": "L18oHnA3yLQJ",
      "formattedUrl": "https://oceans-nadia.com/user/236306/recipe/382662",
      "htmlFormattedUrl": "https://oceans-nadia.com/user/236306/recipe/382662",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQOQOM7VWPB3gQy3T33Cax351fl-h33ruCPSlbxppn1tVtZabbzqFry-54",
            "width": "194",
            "height": "259"
          }
        ],
        "metatags": [
          {
            "og:image": "https://cdn.oceans-nadia.com/upload/save_image/c7/c7545f1d65f9914ead2a555fea650c1b.jpg",
            "og:type": "website",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "調味料は全て３☆基本のほっこり肉じゃが♩ by RINATY（りなてぃ） / 【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "og:url": "https://oceans-nadia.com/user/236306/recipe/382662",
            "og:description": "和食の定番"
          }
        ],
        "cse_image": [
          {
            "src": "https://cdn.oceans-nadia.com/upload/save_image/c7/c7545f1d65f9914ead2a555fea650c1b.jpg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "じゃがいも×にんじん×玉ねぎの人気料理・レシピランキング 239品 | Nadia ...",
      "htmlTitle": "<b>じゃがいも</b>×<b>にんじん</b>×<b>玉ねぎ</b>の人気料理・レシピランキング 239品 | Nadia ...",
      "link": "https://oceans-nadia.com/recipe/tag/%E3%81%98%E3%82%83%E3%81%8C%E3%81%84%E3%82%82%C3%97%E3%81%AB%E3%82%93%E3%81%98%E3%82%93%C3%97%E7%8E%89%E3%81%AD%E3%81%8E",
      "displayLink": "oceans-nadia.com",
      "snippet": "選び抜かれたNadia Artistたちが作ったじゃがいも×にんじん×玉ねぎの料理・レシピを\n人気ランキング形式で紹介。 65657レシピの中からら料理家、料理教室の先生、フード\nコーディネーター、料理インスタグラマー、料理ブロガーなどによる、つくりやすくて\nおいしい ...",
      "htmlSnippet": "選び抜かれたNadia Artistたちが作った<b>じゃがいも</b>×<b>にんじん</b>×<b>玉ねぎ</b>の料理・レシピを<br>\n人気ランキング形式で紹介。 65657レシピの中からら料理家、料理教室の先生、フード<br>\nコーディネーター、料理インスタグラマー、料理ブロガーなどによる、つくりやすくて<br>\nおいしい&nbsp;...",
      "cacheId": "pRxCqbHEh54J",
      "formattedUrl": "https://oceans-nadia.com/recipe/tag/じゃがいも×にんじん×玉ねぎ",
      "htmlFormattedUrl": "https://oceans-nadia.com/recipe/tag/<b>じゃがいも</b>×<b>にんじん</b>×<b>玉ねぎ</b>",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSwJHKuaCUt6guNeihjYJMKyZZovg4jcdBT6Ag8tlWfz9q6fgpOFEcQPu8",
            "width": "225",
            "height": "225"
          }
        ],
        "metatags": [
          {
            "og:image": "https://asset.oceans-nadia.com/images/user_data/nadia_ogp.jpg",
            "og:type": "website",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "じゃがいも×にんじん×玉ねぎの人気料理・レシピランキング 239品",
            "og:url": "https://oceans-nadia.com/recipe/tag/%E3%81%98%E3%82%83%E3%81%8C%E3%81%84%E3%82%82%C3%97%E3%81%AB%E3%82%93%E3%81%98%E3%82%93%C3%97%E7%8E%89%E3%81%AD%E3%81%8E",
            "og:description": "つくりやすくておいしいレシピが満載。料理家、料理教室の先生、フードコーディネーター、料理インスタグラマー、料理ブロガーなど、選び抜かれたNadia Artistたちのとっておきレシピや料理コラムを毎日お届けしています。\n時短・簡単・節約レシピから、お弁当や作り置きおかず、おもてなしパーティー料理まで。あらゆるシーンで、失敗しない、作りたいレシピを見つけることができます。"
          }
        ],
        "cse_image": [
          {
            "src": "https://asset.oceans-nadia.com/images/user_data/nadia_ogp.jpg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "じゃがいも にんじんの人気レシピ・作り方 276件| 【味の素パーク】の料理 ...",
      "htmlTitle": "<b>じゃがいも にんじん</b>の人気レシピ・作り方 276件| 【味の素パーク】の料理 ...",
      "link": "https://park.ajinomoto.co.jp/recipe/search/?search_word=%E3%81%98%E3%82%83%E3%81%8C%E3%81%84%E3%82%82+%E3%81%AB%E3%82%93%E3%81%98%E3%82%93",
      "displayLink": "park.ajinomoto.co.jp",
      "snippet": "材料：卵,合いびき肉,新玉ねぎ,春キャベツ,新じゃがいも,にんじん,Ａ「ピュアセレクト \nマヨネーズ」,Ａ牛乳,Ａしょうゆ,Ａ砂糖,Ｂ水,Ｂ片栗粉,Ｂ酢,Ｂ砂糖,Ｂしょうゆ,Ｂ「丸鶏がら\nスープ」,「AJINOMOTO オリーブオイル」,小ねぎの小口切り. 簡単！サラダチキンの ...",
      "htmlSnippet": "材料：卵,合いびき肉,新<b>玉ねぎ</b>,春キャベツ,新<b>じゃがいも</b>,<b>にんじん</b>,Ａ「ピュアセレクト <br>\nマヨネーズ」,Ａ牛乳,Ａしょうゆ,Ａ砂糖,Ｂ水,Ｂ片栗粉,Ｂ酢,Ｂ砂糖,Ｂしょうゆ,Ｂ「丸鶏がら<br>\nスープ」,「AJINOMOTO オリーブオイル」,小ねぎの小口切り. 簡単！サラダチキンの&nbsp;...",
      "cacheId": "4QR8p5m65o8J",
      "formattedUrl": "https://park.ajinomoto.co.jp/recipe/search/?search...じゃがいも+にんじん",
      "htmlFormattedUrl": "https://park.ajinomoto.co.jp/recipe/search/?search...<b>じゃがいも</b>+<b>にんじん</b>",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcStYO3ZksKGYjtwIcay6Z7H9ZRSWhv3JmqbmYvi5pAz7r9FzvwrJv9q9yw",
            "width": "275",
            "height": "183"
          }
        ],
        "metatags": [
          {
            "viewport": "width=device-width,initial-scale=1.0,user-scalable=no",
            "format-detection": "telephone=no"
          }
        ],
        "cse_image": [
          {
            "src": "https://park.ajinomoto.co.jp/wp-content/uploads/2018/03/701794-768x512.jpeg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "じゃがいものスープのレシピ・作り方 ｜ 【味の素パーク】の料理・レシピ ...",
      "htmlTitle": "<b>じゃがいも</b>のスープのレシピ・作り方 ｜ 【味の素パーク】の料理・レシピ ...",
      "link": "https://park.ajinomoto.co.jp/recipe/card/706040/",
      "displayLink": "park.ajinomoto.co.jp",
      "snippet": "玉ねぎは１ｃｍ角に切り、にんじんは薄いいちょう切りにする。 2. 鍋に（１）のじゃがいも・\n玉ねぎ・にんじん、水、「コンソメ」を入れて中火にかけ沸騰 ...",
      "htmlSnippet": "<b>玉ねぎ</b>は１ｃｍ角に切り、<b>にんじん</b>は薄いいちょう切りにする。 2. 鍋に（１）の<b>じゃがいも</b>・<br>\n<b>玉ねぎ</b>・<b>にんじん</b>、水、「コンソメ」を入れて中火にかけ沸騰&nbsp;...",
      "cacheId": "GfK0h68N1fgJ",
      "formattedUrl": "https://park.ajinomoto.co.jp/recipe/card/706040/",
      "htmlFormattedUrl": "https://park.ajinomoto.co.jp/recipe/card/706040/",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSURHY5qEsEYd1JVfNigOdHL57e4TS5Ym-MQ-0KeIOQzox9iZfREUPzkNX",
            "width": "275",
            "height": "183"
          }
        ],
        "metatags": [
          {
            "og:image": "https://park.ajinomoto.co.jp/wp-content/uploads/2018/03/706040.jpeg",
            "og:type": "website",
            "og:site_name": "AJINOMOTO PARK",
            "viewport": "width=device-width,initial-scale=1.0,user-scalable=no",
            "og:title": "じゃがいものスープのレシピ・作り方 ｜ 【味の素パーク】の料理・レシピサイト‐レシピ大百科 : じゃがいもや玉ねぎを使った料理",
            "og:url": "https://park.ajinomoto.co.jp/recipe/card/706040/",
            "og:description": "じゃがいもや玉ねぎを使った人気の汁物レシピです。【味の素パーク】は身近にある「味の素」調味料で毎日簡単に作れる人気＆失敗しないレシピや献立がたくさん！食のプロが作る、おいしさ保証付きのレシピを11711件掲載！",
            "format-detection": "telephone=no"
          }
        ],
        "cse_image": [
          {
            "src": "https://park.ajinomoto.co.jp/wp-content/uploads/2018/03/706040.jpeg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "定番レシピたっぷり野菜のミネストローネの人気レシピ・作り方・献立 ...",
      "htmlTitle": "定番レシピたっぷり野菜のミネストローネの人気レシピ・作り方・献立 ...",
      "link": "https://park.ajinomoto.co.jp/recipe/card/701794/",
      "displayLink": "park.ajinomoto.co.jp",
      "snippet": "じゃがいも、にんじん、玉ねぎ、キャベツは１ｃｍ角に切る。 たっぷり野菜のミネストローネ\nの作り方_0_1. 2. 鍋ににんにく、オリーブオイルを入れて熱し、香りが ...",
      "htmlSnippet": "<b>じゃがいも</b>、<b>にんじん</b>、<b>玉ねぎ</b>、キャベツは１ｃｍ角に切る。 たっぷり野菜のミネストローネ<br>\nの作り方_0_1. 2. 鍋ににんにく、オリーブオイルを入れて熱し、香りが&nbsp;...",
      "cacheId": "Y43pvKsxhbMJ",
      "formattedUrl": "https://park.ajinomoto.co.jp/recipe/card/701794/",
      "htmlFormattedUrl": "https://park.ajinomoto.co.jp/recipe/card/701794/",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqaDbDYeOr8i8bI4J-wbQUBFN119q8iod6-GShR7s0Spdrl9pXXGisFxxu",
            "width": "275",
            "height": "183"
          }
        ],
        "metatags": [
          {
            "og:image": "https://park.ajinomoto.co.jp/wp-content/uploads/2018/03/701794.jpeg",
            "og:type": "website",
            "og:site_name": "AJINOMOTO PARK",
            "viewport": "width=device-width,initial-scale=1.0,user-scalable=no",
            "og:title": "定番レシピたっぷり野菜のミネストローネの人気レシピ・作り方・献立 ｜ 【味の素パーク】の料理・レシピサイト‐レシピ大百科 : じゃがいもやホールトマト缶を使った料理",
            "og:url": "https://park.ajinomoto.co.jp/recipe/card/701794/",
            "og:description": "「コンソメ」でコトコト煮込んで♪野菜の甘みがしみ込んだ具だくさんの満足スープです☆【味の素パーク】は身近にある「味の素」調味料で毎日簡単に作れる人気＆失敗しないレシピや献立がたくさん！食のプロが作る、おいしさ保証付きのレシピを11711件掲載！",
            "format-detection": "telephone=no"
          }
        ],
        "cse_image": [
          {
            "src": "https://park.ajinomoto.co.jp/wp-content/uploads/2018/03/701794.jpeg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "『たっぷり野菜のほっこり 豆乳味噌スープ』 by Yuu | 【Nadia | ナディア ...",
      "htmlTitle": "『たっぷり野菜のほっこり  豆乳味噌スープ』 by Yuu | 【Nadia | ナディア ...",
      "link": "https://oceans-nadia.com/user/22780/recipe/228665",
      "displayLink": "oceans-nadia.com",
      "snippet": "2018年1月11日 ... じゃがいも, 2個（180gぐらい）. にんじん, 1/3本（50g）. 玉ねぎ, 1/4個（50g）. しめじ, 1/2\n袋. ウインナー, 2本. （あれば）茹でブロッコリー, 適量. A. 水, 1cup. A. 鶏ガラスープの素, \n小さじ2. B. 豆乳（または牛乳）, 1cup. B. 味噌, 大さじ1. バター, 15g.",
      "htmlSnippet": "2018年1月11日 <b>...</b> <b>じゃがいも</b>, 2個（180gぐらい）. <b>にんじん</b>, 1/3本（50g）. <b>玉ねぎ</b>, 1/4個（50g）. しめじ, 1/2<br>\n袋. ウインナー, 2本. （あれば）茹でブロッコリー, 適量. A. 水, 1cup. A. 鶏ガラスープの素, <br>\n小さじ2. B. 豆乳（または牛乳）, 1cup. B. 味噌, 大さじ1. バター, 15g.",
      "cacheId": "gBeyFrvjL3UJ",
      "formattedUrl": "https://oceans-nadia.com/user/22780/recipe/228665",
      "htmlFormattedUrl": "https://oceans-nadia.com/user/22780/recipe/228665",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSkzMoSorBfq6_wmQMXVhP2oAMt33HdZpAG-CqnmIkIHC0CoHu9pS9LvgCS",
            "width": "191",
            "height": "264"
          }
        ],
        "metatags": [
          {
            "og:image": "https://cdn.oceans-nadia.com/upload/save_image/55/55dd7c7a148a.JPG",
            "og:type": "website",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "『たっぷり野菜のほっこり♡豆乳味噌スープ』 by Ｙｕｕ / 【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "og:url": "https://oceans-nadia.com/user/22780/recipe/228665",
            "og:description": "寒さが厳しい時期にぴったりの\r\n具沢山ほっこりスープ♡\r\n\r\n使う食材は、定番食材の\r\nじゃが・玉・にんじんと\r\nストック食材のウインナー。\r\n\r\nこれらをお鍋で煮るだけなので\r\nとーっても簡単♪\r\n\r\nちなみにスープのベースは\r\n鶏ガラスープの素なので\r\nご飯にもパンにも合わせやすい。\r\n\r\n味噌入りでポカポカ\r\n豆乳入りでお腹も大満足の一品です♡"
          }
        ],
        "cse_image": [
          {
            "src": "https://cdn.oceans-nadia.com/upload/save_image/55/55dd7c7a148a.JPG"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "角切り具沢山 『ごちそうコンソメスープ』 by RINATY（りなてぃ） | 【Nadia ...",
      "htmlTitle": "角切り具沢山  『ごちそうコンソメスープ』 by RINATY（りなてぃ） | 【Nadia ...",
      "link": "https://oceans-nadia.com/user/236306/recipe/386319",
      "displayLink": "oceans-nadia.com",
      "snippet": "2020年2月16日 ... ベーコンブロック、じゃがいも、人参、玉ねぎを1㎝角ほどの角切りにする。 鍋にオリーブ\nオイルを熱し、食材を炒める。 玉ねぎがしんなりとしたら、A. 水 600ml、コンソメキューブ \n2個. を加え沸騰後弱火～中火で10分煮る。 塩胡椒をふり、味を ...",
      "htmlSnippet": "2020年2月16日 <b>...</b> ベーコンブロック、<b>じゃがいも</b>、<b>人参</b>、<b>玉ねぎ</b>を1㎝角ほどの角切りにする。 鍋にオリーブ<br>\nオイルを熱し、食材を炒める。 <b>玉ねぎ</b>がしんなりとしたら、A. 水 600ml、コンソメキューブ <br>\n2個. を加え沸騰後弱火～中火で10分煮る。 塩胡椒をふり、味を&nbsp;...",
      "cacheId": "DDYexdBtn8UJ",
      "formattedUrl": "https://oceans-nadia.com/user/236306/recipe/386319",
      "htmlFormattedUrl": "https://oceans-nadia.com/user/236306/recipe/386319",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdAhsJdBT61wtFHBMNv40QmHPlbsUhIB1GpkRSPLPqM7NSf00vi9p0H7p6",
            "width": "194",
            "height": "259"
          }
        ],
        "metatags": [
          {
            "og:image": "https://cdn.oceans-nadia.com/upload/save_image/98/986884811f9ca4aa44bb46637fbfadc0.jpeg",
            "og:type": "website",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "角切り具沢山♡『ごちそうコンソメスープ』 by RINATY（りなてぃ） / 【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "og:url": "https://oceans-nadia.com/user/236306/recipe/386319",
            "og:description": "シンプルなコンソメスープですが、角切りにした具沢山な食材のおかげでなんだか気分の上がるコンソメスープに♡食材の旨味が溶け出したホッと温まるスープです(^^)"
          }
        ],
        "cse_image": [
          {
            "src": "https://cdn.oceans-nadia.com/upload/save_image/98/986884811f9ca4aa44bb46637fbfadc0.jpeg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "定番ストック野菜「じゃがいも・にんじん・玉ねぎ」で作る！絶品レシピ15 ...",
      "htmlTitle": "定番ストック野菜「<b>じゃがいも</b>・<b>にんじん</b>・<b>玉ねぎ</b>」で作る！絶品レシピ15 ...",
      "link": "https://oceans-nadia.com/user/10022/article/2693",
      "displayLink": "oceans-nadia.com",
      "snippet": "2020年1月13日 ... 寒い時期に美味しくなる、じゃがいも・にんじん・玉ねぎ。どの野菜もおうちにストックが\nある方も多いはず。それぞれ袋で買ったりするとついつい余りがちになりますよね。\nじゃがいも・にんじん・玉ねぎを使ったレシピと言えばカレーばかり…なんて方 ...",
      "htmlSnippet": "2020年1月13日 <b>...</b> 寒い時期に美味しくなる、<b>じゃがいも</b>・<b>にんじん</b>・<b>玉ねぎ</b>。どの野菜もおうちにストックが<br>\nある方も多いはず。それぞれ袋で買ったりするとついつい余りがちになりますよね。<br>\n<b>じゃがいも</b>・<b>にんじん</b>・<b>玉ねぎ</b>を使ったレシピと言えばカレーばかり…なんて方&nbsp;...",
      "cacheId": "Lla_zUJLBTMJ",
      "formattedUrl": "https://oceans-nadia.com/user/10022/article/2693",
      "htmlFormattedUrl": "https://oceans-nadia.com/user/10022/article/2693",
      "pagemap": {
        "thumbnail": [
          {
            "src": "https://asset.oceans-nadia.com/upload/save_image/3c/3c9c742f618b5f55504e116f233b4809_20200107170602.jpg?impolicy=insidewm&w=1200&h=1200"
          }
        ],
        "metatags": [
          {
            "og:image": "https://asset.oceans-nadia.com/upload/save_image/3c/3c9c742f618b5f55504e116f233b4809_20200107170602.jpg?impolicy=insidewm&w=1200&h=1200",
            "og:type": "website",
            "thumbnail": "https://asset.oceans-nadia.com/upload/save_image/3c/3c9c742f618b5f55504e116f233b4809_20200107170602.jpg?impolicy=insidewm&w=1200&h=1200",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "定番ストック野菜「じゃがいも・にんじん・玉ねぎ」で作る！絶品レシピ15\t / 【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "og:url": "https://oceans-nadia.com/user/10022/article/2693",
            "og:description": "寒い時期に美味しくなる、じゃがいも・にんじん・玉ねぎ。どの野菜もおうちにストックがある方も多いはず。それぞれ袋で買ったりするとついつい余りがちになりますよね。じゃがいも・にんじん・玉ねぎを使ったレシピと言えばカレーばかり…なんて方もいるかもしれません。そこで今回は、この3つの野菜をすべて使ったレシピのバリエーションをご紹介！　煮物から炒め料理、スープにサラダまで15レシピを集めました。調理方法によってさまざまな食感や味を楽しめる3つの野菜たち。その魅力を存分に味わってください♪"
          }
        ],
        "cse_image": [
          {
            "src": "https://asset.oceans-nadia.com/upload/save_image/3c/3c9c742f618b5f55504e116f233b4809_20200107170602.jpg?impolicy=insidewm&w=1200&h=1200",
            "width": "194",
            "type": "1",
            "height": "259"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "ピリッと美味しい！豚バラで作る『韓国風肉じゃが』 by RINATY（りなてぃ ...",
      "htmlTitle": "ピリッと美味しい！豚バラで作る『韓国風肉じゃが』 by RINATY（りなてぃ ...",
      "link": "https://oceans-nadia.com/user/236306/recipe/384486",
      "displayLink": "oceans-nadia.com",
      "snippet": "2020年1月7日 ... 豚バラスライス, 200ｇ. じゃがいも, ２～３個(200ｇ). 人参, 1/2本. 玉ねぎ, 1/4個. 白滝, \n100ｇ. キムチ, 100ｇ. ごま油（炒め用）, 大さじ１. 塩胡椒, 適量. 豆板醤, 小さじ１. 水, \n300ml. A. 鶏がらスープの素, 小さじ2. A. 醤油, 大さじ１. A. 砂糖, 大さじ１.",
      "htmlSnippet": "2020年1月7日 <b>...</b> 豚バラスライス, 200ｇ. <b>じゃがいも</b>, ２～３個(200ｇ). <b>人参</b>, 1/2本. <b>玉ねぎ</b>, 1/4個. 白滝, <br>\n100ｇ. キムチ, 100ｇ. ごま油（炒め用）, 大さじ１. 塩胡椒, 適量. 豆板醤, 小さじ１. 水, <br>\n300ml. A. 鶏がらスープの素, 小さじ2. A. 醤油, 大さじ１. A. 砂糖, 大さじ１.",
      "cacheId": "EnxnKw_vdKoJ",
      "formattedUrl": "https://oceans-nadia.com/user/236306/recipe/384486",
      "htmlFormattedUrl": "https://oceans-nadia.com/user/236306/recipe/384486",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRQTxkY0aiS7YjOjZ-RNRmMbbbP6Jd5_uQA3PNeAPB4D3oQR8XvrcPdQOG2",
            "width": "194",
            "height": "259"
          }
        ],
        "metatags": [
          {
            "og:image": "https://cdn.oceans-nadia.com/upload/save_image/51/514c640ad517f5c8aa5e2104302d6289.jpeg",
            "og:type": "website",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "ピリッと美味しい！豚バラで作る『韓国風肉じゃが』 by RINATY（りなてぃ） / 【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "og:url": "https://oceans-nadia.com/user/236306/recipe/384486",
            "og:description": "ごはんによく合うピリ辛な韓国風肉じゃがです♪豚バラ肉を使うことで全体のおいしさのバランスが取れます♡仕上げのごま油とのりで風味を一気に上げます↑↑女性の方にも男性の方にもおすすめの1品です☆"
          }
        ],
        "cse_image": [
          {
            "src": "https://cdn.oceans-nadia.com/upload/save_image/51/514c640ad517f5c8aa5e2104302d6289.jpeg"
          }
        ]
      }
    },
    {
      "kind": "customsearch#result",
      "title": "節約・時短の魚料理。鮭とじゃがいもの優しいコンソメ煮 by 河埜 玲子 ...",
      "htmlTitle": "節約・時短の魚料理。鮭と<b>じゃがいも</b>の優しいコンソメ煮 by 河埜 玲子 ...",
      "link": "https://oceans-nadia.com/user/10649/recipe/123184",
      "displayLink": "oceans-nadia.com",
      "snippet": "2015年1月13日 ... じゃがいもやにんじんは薄切りにして時短。 ほんのりにんにくの風味をきかせることで、\n一味違います。 冷蔵庫で２〜3日保存可能。 玉ねぎ、にんじん、にんにくは薄切りに、\nじゃがいもは皮をむいて7〜8mm厚さのいちょう切りにする。 塩鮭はひと ...",
      "htmlSnippet": "2015年1月13日 <b>...</b> <b>じゃがいも</b>や<b>にんじん</b>は薄切りにして時短。 ほんのりにんにくの風味をきかせることで、<br>\n一味違います。 冷蔵庫で２〜3日保存可能。 <b>玉ねぎ</b>、<b>にんじん</b>、にんにくは薄切りに、<br>\n<b>じゃがいも</b>は皮をむいて7〜8mm厚さのいちょう切りにする。 塩鮭はひと&nbsp;...",
      "cacheId": "HLIpOC7HbV4J",
      "formattedUrl": "https://oceans-nadia.com/user/10649/recipe/123184",
      "htmlFormattedUrl": "https://oceans-nadia.com/user/10649/recipe/123184",
      "pagemap": {
        "cse_thumbnail": [
          {
            "src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVhfO7EPKFVDXlwrhKKoHEkpudXA2pNjX0MlpHiynR9kK6ja0SvsmffoE",
            "width": "194",
            "height": "259"
          }
        ],
        "metatags": [
          {
            "og:image": "https://cdn.oceans-nadia.com/upload/save_image/54/544a03ee904f.jpg",
            "og:type": "website",
            "og:site_name": "【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "viewport": "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,shrink-to-fit=no",
            "og:title": "節約・時短の魚料理。鮭とじゃがいもの優しいコンソメ煮 by 河埜 玲子 / 【Nadia | ナディア】レシピサイト - おいしいあの人のレシピ",
            "og:url": "https://oceans-nadia.com/user/10649/recipe/123184",
            "og:description": "週に1度は食べたい魚料理を手軽に。\r\nリーズナブルな塩鮭と３つの定番野菜が、ちょっとおしゃれな味のお料理に変身！\r\nほんのりガーリック風味のコンソメ味が、優しい味わいです。"
          }
        ],
        "cse_image": [
          {
            "src": "https://cdn.oceans-nadia.com/upload/save_image/54/544a03ee904f.jpg"
          }
        ]
      }
    }
  ]
}
 */