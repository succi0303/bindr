FactoryGirl.define do
  factory :binder do
    title "Ruby on Rails 4入門"
    description "Ruby on Rails 4の入門記事です。"
    view_count 1
    complete false
    
    association :user
  end

end
