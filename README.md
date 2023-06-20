# アプリケーション名
Closet Curation

  
# アプリケーション概要
持っている服を管理したり、毎日の服装を記録することができる。


# URL
https://closetcuration.onrender.com
# テスト用アカウント

# 利用方法
## アイテム投稿
1. トップページのサイドバーのMenuからユーザーの新規登録を行う
2. アカウントの登録（例.自分、子供①、子供②）
2. 「post ITEM」ボタンからアイテムの内容を入力し投稿する
3. 「post OOTD」ボタンから今日の服装の組み合わせを投稿する

# アプリケーションを作成した背景
- 毎日の服装の組み合わせに悩む人
- 小さい子供がいる人
- クローゼットの中身を確認したい人

# 洗い出した要件
https://docs.google.com/spreadsheets/d/13ZZzcU2aa5nknpbithHA-t3CBU_1TlNqjyEZ5lhLuHk/edit?usp=sharing

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
% cd xxxxxx  
% bundle install  
% yarn install  

# 工夫したポイント
- ビューの実装にBootStrapを導入した
- 一人のユーザーに対してアカウントを複数持てるように設定した
- JavaScriptを活用し、コーディネートの投稿するときには指定したアカウントが持っているアイテムのみが表示されるように設定した