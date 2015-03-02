# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.first
  example_user = User.create(
    name: 'bindr',
    email: 'bindr@bindr.com',
    password: 'password',
    password_confirmation: 'password'
  )

  binder = Binder.create(
    title: 'BootstrapでレスポンシブなWebサイト制作',
    description: '本連載では，HTML5やCSSの基礎を理解している方へ向けて，Bootstrapの特徴や実際の使い方を解説していきます。',
    tag_list: 'Bootstrap',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/design/serial/01/bootstrap3/0001',
    title: '第1回　今どきのWebサイト制作にはBootstrapがおすすめ！'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/design/serial/01/bootstrap3/0002',
    title: '第2回　グリッドシステムとブレイクポイントを理解する'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/design/serial/01/bootstrap3/0003',
    title: '第3回　Bootstrapの基本スタイルを覚えよう'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/design/serial/01/bootstrap3/0004',
    title: '第4回　デザインパーツを使おう'
  )

  binder = Binder.create(
    title: 'なでしこを使って，日本語でバッチを書こう！',
    description: '日本語プログラミング言語「なでしこ」を使って，わかりやすく高機能なバッチを書いてみませんか？　日本語だから修正も簡単，実行ファイル形式で作成できるからWindowsならば環境を選びません。最速で作成できて活用できる，いろいろな場面をご紹介します。',
    tag_list: 'なでしこ',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/nadesico/0001',
    title: '第1回　なでしこのインストールとバッチの作り方'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/nadesico/0002',
    title: '第2回　文字列を操作してバッチを作ろう！'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/nadesico/0003',
    title: '第3回　なでしこでバッチ「条件分岐編」'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/nadesico/0004',
    title: '第4回　なでしこでバッチ「繰り返し編」'
  )
  binder.pages.create(
    number: 5,
    url: 'http://gihyo.jp/dev/serial/01/nadesico/0005',
    title: '第5回　なでしこでバッチ「変数の定義」'
  )

  binder = Binder.create(
    title: 'Redmineを運用するためのイロハを身につけよう',
    description: '今話題のプロジェクト管理ツールであるRedmineの新機能の紹介から，使いやすくするためのカスタマイズ方法，さらにパフォーマンス向上やJavaプラットフォーム上での稼動をテーマとした運用方法を解説します。',
    tag_list: 'Redmine',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0001',
    title: '第1回　新機能の紹介と最新版が利用できるまで'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0002',
    title: '第2回　新機能の詳細と使い方の紹介'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0003',
    title: '第3回　運用管理者向けの機能紹介とTips'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0004',
    title: '第4回　Redmineを活用する上でのTIPS，プラグインの紹介'
  )
  binder.pages.create(
    number: 5,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0005',
    title: '第5回　新バージョン0.7の紹介とコード修正による利便性の向上'
  )
  binder.pages.create(
    number: 6,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0006',
    title: '第6回　よりよいパフォーマンスを求めて ～WEBrickからlighttpdへ～'
  )
  binder.pages.create(
    number: 7,
    url: 'http://gihyo.jp/dev/serial/01/redmine-use/0007',
    title: '第7回　Javaプラットフォームでの運用'
  )

  binder = Binder.create(
    title: '基礎から学ぶNode.js',
    description: '本連載では，注目を集めるNode.jsを使って，Webアプリケーションを様々なクラウド環境で動かすことを最終目的にしています。',
    tag_list: 'Node.js',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0001',
    title: '第1回　Node.jsとは'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0002',
    title: '第2回　パッケージ管理npmとアプリケーションの永続化'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0003',
    title: '第3回　Express.jsを使ったWebアプリケーションを構築'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0004',
    title: '第4回　Node.jsアプリケーションとMongoDBの連携'
  )
  binder.pages.create(
    number: 5,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0005',
    title: '第5回　Node.jsアプリケーションをHerokuで動かす'
  )
  binder.pages.create(
    number: 6,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0006',
    title: '第6回　Node.jsアプリケーションをCloud9で開発する'
  )
  binder.pages.create(
    number: 7,
    url: 'http://gihyo.jp/dev/serial/01/nodejs/0007',
    title: '第7回　Node.jsアプリケーションをWindow Azureで動かす'
  )

  binder = Binder.create(
    title: 'インフラ構成管理ツールを使いこなす！コードではじめるサーバ構築',
    description: '本連載は、IT業界に入ったばかりの新米業務アプリケーション開発者や、IT業界を目指す学生さんを対象とした、インフラ構成管理ツールを使ってコードでインフラを構築するための講座です。また、インフラエンジニア／システムオペレータで、物理環境でのインフラ構築／運用管理は経験があるけど、プログラミングが苦手という方にも読み進めていただけるように、文法などの解説を入れながら説明します。本連載では、Vagrant／Chef／Dockerをつかって簡単なインフラを構築していきます。',
    tag_list: 'Chef, Vagrant, Docker',
    complete: false,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/8255',
    title: 'コードによるインフラ構成管理はなぜ必要？ 今さら聞けない「Infrastructure as Code」'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/8362',
    title: 'Vagrantでアプリケーション開発環境をローカルPCに作ってみよう'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/8416',
    title: 'Chefで3分クッキング！ Webサーバ構築のレシピをRubyで書いてみよう'
  )

  binder = Binder.create(
    title: 'AngularJSではじめるJavaScriptフレームワーク開発スタイ',
    description: 'JavaScript MVCフレームワークというものを知っているでしょうか？ 実際に使ったことがなくても、言葉だけは聞いたことがある方が増えてきているのではないかと思います。最近はJavaScriptにもMVCフレームワークを使った開発スタイルが普及しつつあり、ちょっと勉強したいと思った方や、どうしてそのようなものを使う必要があるのか疑問に思っている方などに、MVCフレームワークを使った開発スタイルのメリットを伝えられればと思います。',
    tag_list: 'JavaScript, AngularJS',
    complete: false,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/8149',
    title: 'はじめてのJavaScriptフレームワーク選び'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/8207',
    title: 'AngularJSでMVCプログラミングをはじめよう'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/8311',
    title: 'AngularJSの強力なデータバインディングの肝となる！ スコープを理解して、独特な開発スタイルを自分のものにしよう'
  )
  binder.pages.create(
    number: 4,
    url: 'http://codezine.jp/article/detail/8377',
    title: 'ビジネスロジック記述の必須知識、AngularJSの「サービス機能」を理解しよう'
  )
  binder.pages.create(
    number: 5,
    url: 'http://codezine.jp/article/detail/8424',
    title: 'AngularJSのサービス開発とユニットテスト ～テストの流れを把握して保守性の高いコードにしよう'
  )

  binder = Binder.create(
    title: 'Herokuでスタート！ はじめてのPaaSアプリケーション開発',
    description: 'この連載では、まだPaaS（Platform as a Service）でアプリケーションを作成したことのない方に向け、米Salesforceが提供しているPaaS環境「Heroku」を使ってPaaSアプリケーション開発を学んでいきます。Heroku環境を整え、実用的なアプリケーションを作れるようになることを目標に、Heroku上で実際に動作するサンプルプログラムを交えて解説します。',
    tag_list: 'Heroku',
    complete: false,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/8051',
    title: 'PaaSの基礎知識とHerokuで開発を始める準備'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/8187',
    title: '仕組みもわかる 初めてのHerokuアプリケーションづくり！ Gitでのデプロイもさらりとこなす'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/8279',
    title: 'コマンド1つでDBをアプリに追加できるのもPaaSの魅力！ Heroku Postgresの使い方'
  )
  binder.pages.create(
    number: 4,
    url: 'http://codezine.jp/article/detail/8344',
    title: '構築・運用の必須知識！ Herokuアプリケーションの実行プラットフォーム「Dyno」を徹底的に理解する'
  )
  binder.pages.create(
    number: 5,
    url: 'http://codezine.jp/article/detail/8489',
    title: 'これで作業がサクサク進む！ 開発・運用でよく使うherokuコマンドリファレンス'
  )

  binder = Binder.create(
    title: 'iPhone＋Ruby on Rails連携テクニック',
    description: 'Ruby on Railsで構築したサーバーと連携するiPhoneアプリを作成します。RoR編のMac上でRoR環境を構築し、いったんWeb版アプリを作ったのち、iPhoneアプリと連携します。',
    tag_list: 'Rails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/5127',
    title: 'iPhone とRuby on Railsを超簡単に連携する ObjectiveResource　- Ruby on Rails編'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/5126',
    title: 'iPhoneとRuby on Railsを超簡単に連携する ObjectiveResource　- iPhone編'
  )
  
  binder = Binder.create(
    title: 'Ruby on Rails + Curl',
    description: 'この連載では、Ruby on RailsにCurlを組み合わせ、簡単にRIAを構築する方法を説明していきます。',
    tag_list: 'Rails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/3945',
    title: 'Ruby on Rails + Curl　Railsの表示にCurlを使ってRIAを構築する'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/4112',
    title: 'Ruby on Rails + Curl　リッチクライアントCRUDアプリを作成する'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/4167',
    title: 'Ruby on Rails + Curl　Curl用Scaffoldを自作する'
  )
  binder.pages.create(
    number: 4,
    url: 'http://codezine.jp/article/detail/4307',
    title: 'Curl＋JRuby＋Google App EngineでTwitter風アプリを作る　～ローカル環境構築編～'
  )
  binder.pages.create(
    number: 5,
    url: 'http://codezine.jp/article/detail/4434',
    title: 'Curl＋JRuby＋Google App EngineでTwitter風アプリを作る　～GAE編～'
  )

  binder = Binder.create(
    title: 'Groovy+GrailsでRailsなWeb開発',
    description: 'この連載ではJavaプログラマを対象に、Groovyというスクリプト言語を使ってRuby on Railsライクな開発を行えるWebアプリケーションフレームワーク「Grails」を紹介します。今回は、Grails用のプラグイン「Authentication」を使い、アプリケーションに認証機能を組み込む方法について説明します。',
    tag_list: 'Groovy, Grails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/3757',
    title: 'Groovyってどんな言語？　JavaプログラマのためのGroovy入門'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/3809',
    title: 'Grailsの基本を知ろう'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/3868',
    title: 'Grailsでデータベースを利用しよう'
  )
  binder.pages.create(
    number: 4,
    url: 'http://codezine.jp/article/detail/3916',
    title: 'Grailsのバリデーションとリレーションシップ'
  )
  binder.pages.create(
    number: 5,
    url: 'http://codezine.jp/article/detail/4106',
    title: 'GrailsのAuthenticationプラグインによる認証'
  )
  binder.pages.create(
    number: 6,
    url: 'http://codezine.jp/article/detail/4192',
    title: 'GroovyとGoogle App Engineでアプリ開発（前編）　～GroovyでWeb開発を行うための基本'
  )
  binder.pages.create(
    number: 7,
    url: 'http://codezine.jp/article/detail/4193',
    title: 'GroovyとGoogle App Engineでアプリ開発（後編）　～Googleのサービスを利用する方法'
  )
  binder.pages.create(
    number: 8,
    url: 'http://codezine.jp/article/detail/4400',
    title: 'GroovyとGoogle App Engineでアプリ開発（番外編）　～GAEで利用できるさまざまなサービス'
  )

  binder = Binder.create(
    title: 'Ruby/Perl/PHPユーザーのためのMVCフレームワーク入門',
    description: 'この連載ではMVCフレームワークの効率的な利用の仕方について考察し、プログラマにとって理想的な構築手法を模索していきます。',
    tag_list: 'Ruby, Perl, PHP',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/3234',
    title: '効率的なWebアプリ開発の定石 ～Perl/Ruby/PHPユーザーのためのMVCフレームワーク入門～'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/3341',
    title: '言語別フレームワークの比較　～Perl/Ruby/PHPユーザーのためのMVCフレームワーク入門～'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/3573',
    title: 'Webサービスの開発にフレームワークが必要な理由 ～Perl/Ruby/PHPユーザーのためのMVCフレームワーク入門～ '
  )
  binder.pages.create(
    number: 4,
    url: 'http://codezine.jp/article/detail/3639',
    title: 'フレームワーク導入に備え身に着けておきたい4つの習慣　～Ruby/Perl/PHPユーザーのためのMVCフレームワーク入門～'
  )

  binder = Binder.create(
    title: 'RailsとAIRで作成する画像のRevolver表示',
    description: 'Ruby on Railsにて作成したアクションウェブサービスで野球選手マスタの情報を公開し、AIRからそれを呼び出して画像と共に選手の説明を表示するアプリケーションを作成します。本稿を通じて、Ruby on Railsによるアクションウェブサービスの作成方法、AIRからアクションウェブサービスを呼び出す方法、AIRで画像を表示する方法を学ぶことができます。前篇ではRails部分を作成します。',
    tag_list: 'Rails',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/2658',
    title: 'RailsとAIRで作成する画像のRevolver表示（前篇）'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/2737',
    title: 'RailsとAIRで作成する画像のRevolver表示（後篇）'
  )

  binder = Binder.create(
    title: '作って覚えるRuby再入門',
    description: 'Rubyの入門書は読んだけど次はどうやって勉強しようかなと考えていたりしませんか？　この連載では、そんな方々のために、Railsを使わずに動作する少し大きめの例題を用意しました。この例題を作っていくことで、Rubyへの親近感と勘所を養ってもらえたらうれしいです。',
    tag_list: 'Ruby',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://codezine.jp/article/detail/2086',
    title: 'RubyのCursesを使ってコンソールを制御する'
  )
  binder.pages.create(
    number: 2,
    url: 'http://codezine.jp/article/detail/2180',
    title: 'RubyとCursesを使ったコンソールテキストエディタ'
  )
  binder.pages.create(
    number: 3,
    url: 'http://codezine.jp/article/detail/2365',
    title: 'RubyとCursesを使ったテキストエディタに編集と保存機能を追加する'
  )

  binder = Binder.create(
    title: 'AP4R，Rubyで非同期メッセージング',
    description: 'AP4Rは軽量さと堅牢さを兼ね備えたRubyによる非同期メッセージングライブラリです。メッセージングによるアプリケーションの疎結合化は，ユーザーへのレスポンス時間の短縮やシステム拡張時のスケールアウトの容易性につながります。
    本連載では，AP4RとRailsによる簡単な非同期アプリケーションの作成を通じて，そのAPIや設定方法，またメッセージングにおける堅牢さの重要性を説明します。さらに，負荷分散パターンやリカバリといった運用時の対応についてもご紹介します。',
    tag_list: 'Ruby',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/feature/01/ap4r/0001',
    title: '第1回　軽量さと堅牢さを兼ね備えたメッセージング'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/feature/01/ap4r/0002',
    title: '第2回　AP4RとRailsでつくる非同期アプリケーション'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/feature/01/ap4r/0003',
    title: '第3回　SAF機能とテストサポートによる安心非同期'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/feature/01/ap4r/0004',
    title: '第4回　システムは稼働してからがはじまり'
  )

  binder = Binder.create(
    title: '若手エンジニア／初心者のためのRuby 2.1入門',
    description: 'オープンソースのオブジェクト指向プログラミング言語「Ruby」の文法を一から学ぶための入門連載。最新版の2.1に対応しています。',
    tag_list: 'Ruby',
    complete: false,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1402/27/news042.html',
    title: 'Rubyプログラミングを始めるための基礎知識とインストール'
  )
  binder.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1403/26/news030.html',
    title: 'Ruby 2.1の基本構文／基本文法まとめ＆Pryの使い方'
  )
  binder.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/08/news038.html',
    title: 'Rubyの配列、ハッシュテーブルを表現するArray、Hashクラスの使い方'
  )
  binder.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/27/news032.html',
    title: 'RubyのRangeクラスと範囲オブジェクト、範囲演算子、イテレーターの使い方'
  )
  binder.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1406/25/news166.html',
    title: 'RubyのString／Regexpクラスによる強力な文字列操作／正規表現'
  )
  binder.pages.create(
    number: 6,
    url: 'http://www.atmarkit.co.jp/ait/articles/1407/29/news030.html',
    title: 'RubyのNumericとTimeで数値と時間をさまざまな操作・演算・判定'
  )
  binder.pages.create(
    number: 7,
    url: 'http://www.atmarkit.co.jp/ait/articles/1408/28/news035.html',
    title: 'Rubyのオブジェクト指向におけるクラスとモジュール、継承、Mixin、アクセス制御の使い方'
  )
  binder.pages.create(
    number: 8,
    url: 'http://www.atmarkit.co.jp/ait/articles/1409/29/news035.html',
    title: 'Rubyの面白さを理解するためのメソッド、ブロック、Proc、lambda、クロージャの基本'
  )
  binder.pages.create(
    number: 9,
    url: 'http://www.atmarkit.co.jp/ait/articles/1410/30/news048.html',
    title: 'Rubyの例外とその捕捉――基本のbegin～rescue～endからensure、else、retry、後置rescueまで'
  )
  binder.pages.create(
    number: 10,
    url: 'http://www.atmarkit.co.jp/ait/articles/1411/27/news050.html',
    title: 'RubyのFile／IOクラスで入力と出力、ファイルの読み取りと書き込み、フィルター作成'
  )
  binder.pages.create(
    number: 11,
    url: 'http://www.atmarkit.co.jp/ait/articles/1412/12/news037.html',
    title: 'RubyのThread、Fiber、Kernel、forkで並列処理やプロセスの深淵へ'
  )
  binder.pages.create(
    number: 12,
    url: 'http://www.atmarkit.co.jp/ait/articles/1501/06/news028.html',
    title: '難しいが強力！ Rubyのメタプログラミング、self、特異クラス／メソッド、オープンクラスとモンキーパッチ'
  )
  binder.pages.create(
    number: 13,
    url: 'http://www.atmarkit.co.jp/ait/articles/1502/05/news041.html',
    title: 'Rubyで逆ポーランド変換機を作りgem作成＆コマンドの使い方'
  )

  binder = Binder.create(
    title: 'Ruby Freaks Lounge',
    description: 'Rubyに関わる，執筆者自身の旬なテーマを扱った，リレー形式の連載です。執筆者お一人の方につき，2回前後，隔週間隔でご執筆いただいております。ただし，2ラインでリレーしているので，連載としては毎週更新となる予定です。お楽しみに！',
    tag_list: 'Ruby',
    complete: true,
    user_id: example_user.id
  )
  binder.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0001',
    title: '第1回　Ruby1.9の新機能ひとめぐり（前編）：YARV，Fiber，配列処理の強化'
  )
  binder.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0002',
    title: '第2回　Ruby M17N 事始め：入門編'
  )
  binder.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0003',
    title: '第3回　Ruby1.9の新機能ひとめぐり（中編）：洗練された文法と意味論'
  )
  binder.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0004',
    title: '第4回　Ruby M17N 事始め：文字コード編'
  )
  binder.pages.create(
    number: 5,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0005',
    title: '第5回　Ruby 1.9 の新機能ひとめぐり（後編）: 知っておくとお得な機能'
  )
  binder.pages.create(
    number: 6,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0006',
    title: '第6回　Ruby M17N 事始め：正規表現編'
  )
  binder.pages.create(
    number: 7,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0007',
    title: '第7回　小規模Webアプリのためのフレームワーク，Sinatra'
  )
  binder.pages.create(
    number: 8,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0008',
    title: '第8回　Windows版Ruby 1.9で培う危機回避スキル（前編）'
  )
  binder.pages.create(
    number: 9,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0009',
    title: '第9回　SinatraとSequel・Hamlで掲示板アプリを作る'
  )
  binder.pages.create(
    number: 10,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0010',
    title: '第10回　Windows版Ruby 1.9で培う危機回避スキル（後編）'
  )
  binder.pages.create(
    number: 11,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0011',
    title: '第11回　自由なWebフレームワーク，Ramaze'
  )
  binder.pages.create(
    number: 12,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0012',
    title: '第12回　Ramazeを使って120行で作る単語帳アプリ'
  )
  binder.pages.create(
    number: 13,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0013',
    title: '第13回　モジュラーなWebアプリケーションフレームワーク，Merb'
  )
  binder.pages.create(
    number: 14,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0014',
    title: '第14回　DataMapperの使い方'
  )
  binder.pages.create(
    number: 15,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0015',
    title: '第15回　Railsユーザーから見たGoogle App Engine'
  )
  binder.pages.create(
    number: 16,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0016',
    title: '第16回　Google App Engine上でRailsを動かす'
  )
  binder.pages.create(
    number: 17,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0017',
    title: '第17回　Ruby on Railsで開発するSilverlightアプリケーション'
  )
  binder.pages.create(
    number: 18,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0018',
    title: '第18回　Ruby on Railsで開発するSilverlightアプリケーション'
  )
  binder.pages.create(
    number: 19,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0019',
    title: '第19回　Ruby/Railsの地域コミュニティ'
  )
  binder.pages.create(
    number: 20,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0020',
    title: '第20回　Mitaka.rbの作り方'
  )
  binder.pages.create(
    number: 21,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0021',
    title: '第21回　Railsアプリの受け入れテストをCucumberで書こう'
  )
  binder.pages.create(
    number: 22,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0022',
    title: '第22回　Railsアプリの受け入れテストをCucumberで書こう'
  )
  binder.pages.create(
    number: 23,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0023',
    title: '第23回　Rackとは何か（1）Rackの生まれた背景'
  )
  binder.pages.create(
    number: 24,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0024',
    title: '第24回　Rackとは何か（2）Rackの使い方'
  )
  binder.pages.create(
    number: 25,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0025',
    title: '第25回　Rackとは何か（3）ミドルウェアのすすめ'
  )
  binder.pages.create(
    number: 26,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0026',
    title: '第26回　RMagickを用いた画像処理（1）リサイズ'
  )
  binder.pages.create(
    number: 27,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0027',
    title: '第27回　RMagickを用いた画像処理：アニメGIF'
  )
  binder.pages.create(
    number: 28,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0028',
    title: '第28回　RubyとHadoopで分散処理　Hadoop Streamingの仕組み'
  )
  binder.pages.create(
    number: 29,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0030',
    title: '第29回　Reactorで非同期処理をやってみよう（1）'
  )
  binder.pages.create(
    number: 30,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0029',
    title: '第30回　RubyとHadoopで分散処理　Hadoop Streamingで外部データを読み込む'
  )
  binder.pages.create(
    number: 31,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0031',
    title: '第31回　RubyistのためのMongoDB入門（1）'
  )
  binder.pages.create(
    number: 32,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0032',
    title: '第32回　Reactorで非同期処理をやってみよう（2）'
  )
  binder.pages.create(
    number: 33,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0033',
    title: '第33回　RubyistのためのMongoDB入門（2）'
  )
  binder.pages.create(
    number: 34,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0034',
    title: '第34回　Redmineプラグイン開発（1）'
  )
  binder.pages.create(
    number: 35,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0035',
    title: '第35回　実用的なダミーサーバ ww(double-web)（1）'
  )
  binder.pages.create(
    number: 36,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0036',
    title: '第36回　Redmineプラグイン開発（2）'
  )
  binder.pages.create(
    number: 37,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0037',
    title: '第37回　実用的なダミーサーバ ww(double-web)（2）'
  )
  binder.pages.create(
    number: 38,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0038',
    title: '第38回　Redmineプラグイン開発（3）'
  )
  binder.pages.create(
    number: 39,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0039',
    title: '第39回　RVM（Ruby Version Manager）による環境構築'
  )
  binder.pages.create(
    number: 40,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0040',
    title: '第40回　RVM（Ruby Version Manager）による環境構築（2）'
  )
  binder.pages.create(
    number: 41,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0041',
    title: '第41回　Sinatra 1.0の世界にようこそ'
  )
  binder.pages.create(
    number: 42,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0042',
    title: '第42回　実世界のSinatra'
  )
  binder.pages.create(
    number: 43,
    url: 'http://gihyo.jp/dev/serial/01/ruby/0043',
    title: '第43回　Rails 3を支える名脇役たち その1 - Arel -'
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
