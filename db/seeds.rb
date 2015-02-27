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

  binder1 = Binder.create(
    title: 'Rails2.0の足回りと中級者への道',
    description: '本特集では，Rails2.0の基礎と，Rails2.0が提示する新しいアプリケーションの形について学んでいきます。',
    tag_list: 'Rails, Ruby',
    user_id: example_user.id
  )

  binder1.pages.create(
    number: 1,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0001',
    title: '第1回　Rails2.0の足回り'
  )
  binder1.pages.create(
    number: 2,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0002',
    title: '第2回　Rails2.0で作るRESTfulアプリケーション（前編）'
  )
  binder1.pages.create(
    number: 3,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0003',
    title: '第3回　Rails2.0で作るRESTfulアプリケーション（後編）'
  )
  binder1.pages.create(
    number: 4,
    url: 'http://gihyo.jp/dev/feature/01/rails2/0004',
    title: '第4回　Railsアプリケーションをもっと速く'
  )

  binder2 = Binder.create(
    title: '開発現場でちゃんと使えるRails 4入門',
    description: 'エンタープライズ領域での採用も増えてきたRuby on Railsを使ってWebアプリケーションを作るための入門連載。最新版の4に対応しています。',
    tag_list: 'Rails, Ruby',
    user_id: example_user.id
  )
  binder2.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1402/28/news047.html',
    title: '簡単インストールから始める初心者のためのRuby on Railsチュートリアル'
  )
  binder2.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1403/28/news035.html',
    title: 'scaffoldの中身を理解するためにMVCコンポーネントと7つのアクションを個別で自作する'
  )
  binder2.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/09/news038.html',
    title: '特定データに関するscaffoldアクションの実装＆基礎的なリファクタリング手法'
  )
  binder2.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1405/16/news024.html',
    title: '現場で使えるか見極めたいRails 4.1の新機能8選'
  )

  binder3 = Binder.create(
    title: 'フレームワークで実践！ JavaScriptテスト入門',
    description: 'しっかりとJavaScriptをテストするために、今注目のJavaScript用のテストフレームワークをいくつか紹介し、その概要から実践的な使い方まで解説する連載',
    tag_list: 'JavaScript',
    user_id: example_user.id
  )
  binder3.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1210/04/news113.html',
    title: 'JavaScriptテストの基礎知識と使えるフレームワーク6選'
  )
  binder3.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1210/10/news012.html',
    title: 'PhantomJSとJasmineで振る舞い駆動開発なJavaScriptテスト'
  )
  binder3.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1211/29/news012.html',
    title: 'QUnit＋PhantomJSでJavaScriptのヘッドレスなテスト'
  )
  binder3.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1301/21/news017.html',
    title: 'WebブラウザでJavaScriptをテストする「js-test-driver」とQUnit、Jasmineを連携してテストするには'
  )
  binder3.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1302/20/news032.html',
    title: 'Capybara-Webkit＋Cucumber＋Sinon.JSでJavaScriptのテストはここまで変わる'
  )

  binder4 = Binder.create(
    title: 'DevOps時代の開発者のための構成管理入門',
    description: '「DevOps」という言葉にもあるように、ソフトウェア構成管理は、インフラ運用に取り入れられるなど、変わりつつある時代だ。本連載では、そのトレンドにフォーカスして、現在のソフトウェア開発に有効な構成管理のノウハウをお伝えする',
    tag_list: 'DevOps',
    user_id: example_user.id
  )
  binder4.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/1211/21/news010.html',
    title: 'ソフトウェア開発で構成管理が重要になった5つの理由'
  )
  binder4.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/1301/30/news032.html',
    title: 'ITS／BTSによるプロジェクト運営、7つの勘所'
  )
  binder4.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/1305/20/news015.html',
    title: '知らないと現場で困るバージョン管理システムの基礎'
  )
  binder4.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/1309/04/news022.html',
    title: '膨大なビルド・テストで泣かないための継続的統合/CI'
  )
  binder4.pages.create(
    number: 5,
    url: 'http://www.atmarkit.co.jp/ait/articles/1312/03/news033.html',
    title: '継続的デリバリ／デプロイを実現する手法・ツール'
  )

  binder5 = Binder.create(
    title: 'ASP.NET MVC入門',
    description: '@ITのASP.NET MVCの入門記事。',
    tag_list: 'ASP.NET MVC',
    user_id: example_user.id
  )
  binder5.pages.create(
    number: 1,
    url: 'http://www.atmarkit.co.jp/ait/articles/0904/10/news113.html',
    title: '第1回　ASP.NET MVCフレームワーク 基本のキ'
  )
  binder5.pages.create(
    number: 2,
    url: 'http://www.atmarkit.co.jp/ait/articles/0905/22/news117.html',
    title: '第2回　スキャフォールディング機能で軽々DB連携アプリケーション'
  )
  binder5.pages.create(
    number: 3,
    url: 'http://www.atmarkit.co.jp/ait/articles/0907/10/news109.html',
    title: '第3回　ActionResultオブジェクトでアクション操作も自由自在'
  )
  binder5.pages.create(
    number: 4,
    url: 'http://www.atmarkit.co.jp/ait/articles/0908/14/news041.html',
    title: '第4回　フィルタ属性による認証／キャッシュ／セキュリティ対策の実装'
  )
end
