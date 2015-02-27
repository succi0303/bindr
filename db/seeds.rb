# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.first
  example_user = User.create(
    name: 'succi0303',
    email: 'succi0303@example.com',
    password: 'password',
    password_confirmation: 'password'
  )

  binder = Binder.create(
    title: 'Rails2.0の足回りと中級者への道',
    description: '本特集では，Rails2.0の基礎と，Rails2.0が提示する新しいアプリケーションの形について学んでいきます。',
    tag_list: 'Rails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0001',
    title: '第1回　Rails2.0の足回り'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0002',
    title: '第2回　Rails2.0で作るRESTfulアプリケーション（前編）'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0003',
    title: '第3回　Rails2.0で作るRESTfulアプリケーション（後編）'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0004',
    title: '第4回　Railsアプリケーションをもっと速く'
  )

  binder = Binder.create(
    title: 'Ruby on Railsで作られたプロジェクト管理ツールredMineを使ってみよう！',
    description: 'Ruby on Railsで作られたプロジェクト管理ツールredMineの，環境構築からセッティング，運用方法まで解説します。
    ※Redmineの新機能（0.6.3～0.7.1）や運用管理機能を紹介している連載「Redmineを運用するためのイロハを身につけよう」もご覧ください。',
    tag_list: 'Rails, Redmine',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/redmine/0001',
    title: '第1回　プロジェクト管理ツールの必要性／Tracとの違い／redMineがオススメな理由'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/redmine/0002',
    title: '第2回　環境構築／redMineのインストール・初期設定'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/redmine/0003',
    title: '第3回　redMineを使ったプロジェクト管理（その1）'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/redmine/0004',
    title: '第4回　redMineを使ったプロジェクト管理（その2）'
  )

  binder = Binder.create(
    title: 'Herokuで作るFacebookアプリ',
    description: '本連載では，Ruby on Railsのホスティング環境であるHerokuを活用して，Facebookアプリを開発する手順を解説します',
    tag_list: 'Rails, Heroku',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0001',
    title: '第1回　Herokuを使ってFacebookアプリを作ろう'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0002',
    title: '第2回　HerokuでRailsアプリを動かそう'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0003',
    title: '第3回　Facebookアプリを作ろう'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0004',
    title: '第4回　Facebookとの認証の連携'
  )
  binder.pages.create(
    number: 5,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0005',
    title: '第5回　Facebook APIを学ぼう'
  )
  binder.pages.create(
    number: 6,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0006',
    title: '第6回　Facebookに投稿してみよう'
  )
  binder.pages.create(
    number: 7,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0007',
    title: '第7回　Herokuをもっと活用しよう！'
  )
  binder.pages.create(
    number: 8,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0008',
    title: '第8回　Herokuのアドオンエコシステム'
  )
  binder.pages.create(
    number: 9,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0009',
    title: '第9回　Facebookの「いいね！」と連携しよう'
  )
  binder.pages.create(
    number: 10,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0010',
    title: '第10回　Herokuコマンドを拡張しよう'
  )
  binder.pages.create(
    number: 11,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0011',
    title: '第11回　Herokuでファイルアップロードを実装しよう'
  )
  binder.pages.create(
    number: 12,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0012',
    title: '第12回　Herokuで非同期処理を実装しよう'
  )
  binder.pages.create(
    number: 13,
    url: 'http://gihyo.jp/dev/serial/01/heroku/0013',
    title: '第13回　Herokuの今後の可能性'
  )

  binder = Binder.create(
    title: 'VPSでRuby開発をしよう',
    description: '本連載では，レンタルサーバ技術の1つであるVPS（Virtual Private Server）を使って，Ruby開発をするための手順，ノウハウについて紹介します。使用環境は，アット・ワイエムシーが提供するサービスを対象とします。',
    tag_list: 'Ruby',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/vps_ruby/0001',
    title: '第1回　言語に見るVPS活用最新動向'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/vps_ruby/0002',
    title: '第2回　最新Ruby & Ruby on Rails 環境構築'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/vps_ruby/0003',
    title: '第3回　MySQLを使った簡単Webアプリ構築（準備編）'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/vps_ruby/0004',
    title: '第4回　Railsでの開発は本当に簡単か?'
  )
  binder.pages.create(
    number: 5,
    url: 'http://gihyo.jp/dev/serial/01/vps_ruby/0005',
    title: '第5回　MySQLを使った簡単Webアプリ構築（完結編）'
  )

  binder = Binder.create(
    title: 'Railsコードリーディング～scaffoldのその先へ～',
    description: '優れたプログラマはコードを書くのと同じくらい、読みこなす。優れたコードを読むことで自身のスキルも上達するのだ',
    tag_list: 'Rails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/fcoding/articles/reading/01/reading01a.html',
    title: '第1回 コードリーディングを始めよう'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/fcoding/articles/reading/02/reading02a.html',
    title: '第2回 RSpecを使ったテストコードを読もう'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/fcoding/articles/reading/03/reading03a.html',
    title: '第3回 ActiveRecordを使ったソースコードを読もう'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/fcoding/articles/reading/04/reading04a.html',
    title: '第4回 ActionViewを使ったソースコードを読もう'
  )
  binder.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/fcoding/articles/reading/05/reading05a.html',
    title: '第5回 OpenIDを実装したソースコードを読もう'
  )
  binder.pages.create(
    number: 6,
    url: 'http://www.atmarkit.co.jp/fcoding/articles/reading/06/reading06a.html',
    title: '最終回 全文検索を実装したソースコードを読もう'
  )

  binder = Binder.create(
    title: 'Ruby on Rails3で学ぶWeb開発のキホン',
    description: 'Web開発フレームワークとして人気の高いRuby on Railsの最新版、バージョン3を使ってWebアプリ開発の基本を学ぼう',
    tag_list: 'Rails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/rails3/01/rails301a.html',
    title: '第1回 MVCとRailsの基本構成を学ぼう'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/rails3/02/rails302a.html',
    title: '第2回 Railsの全体像を知ろう'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/rails3/03/rails303a.html',
    title: '第3回 「ActiveRecord」の基本とデータの参照'
  )

  binder = Binder.create(
    title: 'Railsで目指せ、情熱エンジニア',
    description: 'ロンドン在住のRailsエンジニア、井上真氏が自身の体験を振り返りながら、初中級者向けにRails関連のエッセイ、技術トピックをお届けします。連載第1回目はRailsを始めるきっかけについてです',
    tag_list: 'Rails',
    complete: false,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/passionate/01/passionate01a.html',
    title: '第1回 Railsを始めたきっかけ'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/passionate/02/passionate02a.html',
    title: '第2回 Ruby on Railsの学び方'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/passionate/03/passionate03a.html',
    title: '第3回 DojoとKataでRubyを学ぼう'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/fcoding/rails/articles/passionate/04/passionate04a.html',
    title: '第4回 忘れやすい人のためのRailsリファレンスガイド'
  )
  binder.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1103/08/news096.html',
    title: '第5回 なぜリファクタリングは必要なのか？'
  )
  binder.pages.create(
    number: 6,
    url: 'http://www.atmarkit.co.jp/ait/articles/1103/11/news084.html',
    title: '第6回 Railsの人気テストフレームワーク6選！'
  )
  binder.pages.create(
    number: 7,
    url: 'http://www.atmarkit.co.jp/ait/articles/1105/26/news117.html',
    title: '第7回 実例アプリで学ぶ“Railsらしさ”の基礎'
  )
  binder.pages.create(
    number: 8,
    url: 'http://www.atmarkit.co.jp/ait/articles/1112/22/news132.html',
    title: '第8回 実例で学ぶRailsアプリのテスト方法'
  )
  binder.pages.create(
    number: 9,
    url: 'http://www.atmarkit.co.jp/ait/articles/1208/06/news119.html',
    title: '第9回 Railsのコントローラをテストする'
  )

  binder = Binder.create(
    title: '開発現場でちゃんと使えるRails 4入門',
    description: 'エンタープライズ領域での採用も増えてきたRuby on Railsを使ってWebアプリケーションを作るための入門連載。最新版の4に対応しています。',
    tag_list: 'Rails',
    complete: false,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1402/28/news047.html',
    title: '簡単インストールから始める初心者のためのRuby on Railsチュートリアル'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1403/28/news035.html',
    title: 'scaffoldの中身を理解するためにMVCコンポーネントと7つのアクションを個別で自作する'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/09/news038.html',
    title: '特定データに関するscaffoldアクションの実装＆基礎的なリファクタリング手法'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/16/news024.html',
    title: '現場で使えるか見極めたいRails 4.1の新機能8選'
  )
  binder.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/30/news036.html',
    title: 'ActiveRecordの基本機能とマイグレーション、バリデーション'
  )
  binder.pages.create(
    number: 6,
    url: 'http://www.atmarkit.co.jp/ait/articles/1406/30/news030.html',
    title: 'ActiveRecordにおけるモデルの「関連」とコールバックの使い方'
  )
  binder.pages.create(
    number: 7,
    url: 'http://www.atmarkit.co.jp/ait/articles/1407/30/news031.html',
    title: 'Rails開発を面白くするアクションコントローラーの5大機能とルーティングの基本'
  )
  binder.pages.create(
    number: 8,
    url: 'http://www.atmarkit.co.jp/ait/articles/1408/29/news032.html',
    title: 'RailsのテンプレートエンジンSlimの書き方とActionViewのヘルパーメソッド、レイアウトの使い方'
  )
  binder.pages.create(
    number: 9,
    url: 'http://www.atmarkit.co.jp/ait/articles/1409/30/news037.html',
    title: 'RailsテストフレームワークRSpecのインストールと基本的な使い方、基礎文法'
  )
  binder.pages.create(
    number: 10,
    url: 'http://www.atmarkit.co.jp/ait/articles/1411/04/news038.html',
    title: 'ActionMailerのSMTP設定、テンプレートで送信＆ActiveModelの基本的な使い方とバリデーション'
  )
  binder.pages.create(
    number: 11,
    url: 'http://www.atmarkit.co.jp/ait/articles/1411/28/news035.html',
    title: '「設定より規約」のRailsで必要なセッティングの基礎知識と国際化／多言語対応'
  )
  binder.pages.create(
    number: 12,
    url: 'http://www.atmarkit.co.jp/ait/articles/1501/07/news031.html',
    title: 'Railsアプリの設計をMVCごとに見直しリファクタリングして連載総まとめ'
  )

  binder = Binder.create(
    title: 'フレームワークで実践！ JavaScriptテスト入門',
    description: 'しっかりとJavaScriptをテストするために、今注目のJavaScript用のテストフレームワークをいくつか紹介し、その概要から実践的な使い方まで解説する連載',
    tag_list: 'JavaScript',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1210/04/news113.html',
    title: 'JavaScriptテストの基礎知識と使えるフレームワーク6選'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1210/10/news012.html',
    title: 'PhantomJSとJasmineで振る舞い駆動開発なJavaScriptテスト'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1211/29/news012.html',
    title: 'QUnit＋PhantomJSでJavaScriptのヘッドレスなテスト'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1301/21/news017.html',
    title: 'WebブラウザでJavaScriptをテストする「js-test-driver」とQUnit、Jasmineを連携してテストするには'
  )
  binder.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1302/20/news032.html',
    title: 'Capybara-Webkit＋Cucumber＋Sinon.JSでJavaScriptのテストはここまで変わる'
  )

  binder = Binder.create(
    title: 'DevOps時代の開発者のための構成管理入門',
    description: '「DevOps」という言葉にもあるように、ソフトウェア構成管理は、インフラ運用に取り入れられるなど、変わりつつある時代だ。本連載では、そのトレンドにフォーカスして、現在のソフトウェア開発に有効な構成管理のノウハウをお伝えする',
    tag_list: 'DevOps',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1211/21/news010.html',
    title: 'ソフトウェア開発で構成管理が重要になった5つの理由'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1301/30/news032.html',
    title: 'ITS／BTSによるプロジェクト運営、7つの勘所'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1305/20/news015.html',
    title: '知らないと現場で困るバージョン管理システムの基礎'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1309/04/news022.html',
    title: '膨大なビルド・テストで泣かないための継続的統合/CI'
  )
  binder.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1312/03/news033.html',
    title: '継続的デリバリ／デプロイを実現する手法・ツール'
  )

  binder = Binder.create(
    title: 'ASP.NET MVC入門',
    description: '@ITのASP.NET MVCの入門記事。',
    tag_list: 'ASP.NET MVC',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/0904/10/news113.html',
    title: '第1回　ASP.NET MVCフレームワーク 基本のキ'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/0905/22/news117.html',
    title: '第2回　スキャフォールディング機能で軽々DB連携アプリケーション'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/0907/10/news109.html',
    title: '第3回　ActionResultオブジェクトでアクション操作も自由自在'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/0908/14/news041.html',
    title: '第4回　フィルタ属性による認証／キャッシュ／セキュリティ対策の実装'
  )
end
