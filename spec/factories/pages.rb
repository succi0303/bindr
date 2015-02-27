FactoryGirl.define do
  factory :page do
    number 1
    url { Faker::Internet.url }
    title "Scaffoldによる基本的なアプリケーションの作成"

    association :binder
  end

end
