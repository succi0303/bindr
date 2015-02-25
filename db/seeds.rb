# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {
    id: 1,
    name: 'example user',
    email: 'example@example.com',
    password: 'password',
    password_confirmation: 'password'
  }
]

User.create(users)

binders = [
  {
    id: 1,
    title: 'Ruby on Rails 4 入門',
    description: 'Ruby on Railsの入門記事です。',
    complete: false,
    user_id: 1,
    tag_list: 'Rails'
  },
  {
    id: 2,
    title: 'Vagrant & Chef solo 入門',
    description: 'VagrantとChef soloの入門記事です。',
    complete: true,
    user_id: 1,
    tag_list: 'Vagrant, Chef'
  }
]

Binder.create(binders)
