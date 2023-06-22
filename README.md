# アプリケーション名
Closet Curation

# アプリケーション概要
持っている服を管理したり、毎日の服装を記録することができる。

# URL
[clcosetcuration](https://closetcuration.onrender.com)
# テスト用アカウント
- Basic認証パスワード：1102
- Basic認証ID：mylrella
- メールアドレス：test@jp
- パスワード：qqq111

# 利用方法
## アカウント登録
1. トップページのサイドバーのAccountの「AccountNEW」からアカウントの新規登録をする
2. プロフィール写真、名前、生年月日を登録する
3. サイドバーのAccountでアカウント一覧を参照することができる
## アイテム投稿
1. 「post ITEM」ボタンからアイテムの内容を入力し投稿する
2. アイテムの持ち主（アカウントから選択）、画像、名前、カテゴリー、色、季節、メモを登録する
3. サイドバーのItemからアイテム一覧を参照することができる
## コーディネート投稿
1. 「post OOTD」ボタンから今日の服装の組み合わせを投稿する
2. アカウント、日付、アイテム、天気、最高気温、最低気温、メモを登録できる
3. トップページからコーディネート一覧を参照することができる
## カレンダー機能
1. サイドバーのCalendarからカレンダーを表示する
1. コーディネート投稿した日がカレンダー上に表示される

# アプリケーションを作成した背景
## 
- 毎日の服装の組み合わせに悩む人
- 小さい子供がいる人
- クローゼットの中身を確認したい人

# 洗い出した要件
[要件定義書](https://docs.google.com/spreadsheets/d/13ZZzcU2aa5nknpbithHA-t3CBU_1TlNqjyEZ5lhLuHk/edit?usp=sharing)

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
- 検索機能
- いいね機能
- フォロー機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/9a8e25203991ddddde8296c6c3e0c127.png)](https://gyazo.com/9a8e25203991ddddde8296c6c3e0c127)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/f245215aaff93cee50b053aaca552f7a.png)](https://gyazo.com/f245215aaff93cee50b053aaca552f7a)

# 開発環境
- HTML&CSS
- Ruby
- Ruby on Rails
- JavaScript
- MySQL
- render
- Visual Studio Code
- GitHub

# ローカルでの動作方法
以下のコマンドを順に実行。  
% git clone https://github.com/mylrella1102/closetcuration  
% cd closetcuration  
% bundle install  
% yarn install  

# 工夫したポイント
- ビューの実装にBootStrapを導入した
- 一人のユーザーに対してアカウントを複数持てるように設定した
- JavaScriptを活用し、コーディネートの投稿するときには指定したアカウントが持っているアイテムのみが表示されるように設定した