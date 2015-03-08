# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'yaml'
require 'time'

class Page < ActiveRecord::Base
  belongs_to :binder, touch: false
end

unless User.first
  example_user = User.create(
    name: 'bindr',
    email: 'bindr@bindr.com',
    password: 'password',
    password_confirmation: 'password'
  )
end

gihyo_serials = YAML.load_file('db/gihyo.serials.yml')
codezine_serials = YAML.load_file('db/codezine.serials.yml')
html5experts_serials = YAML.load_file('db/html5experts.serials.yml')
serials = gihyo_serials[0...250] + codezine_serials[0...225] + html5experts_serials[0...25]

serials.each do |serial|
  if serial[:articles][0][:date] == ""
    date = Time.parse('2000-01-01')
  else
    date = Time.strptime(serial[:articles][0][:date], "%Y年%m月%d日")
  end
  binder = Binder.new(
    title: (serial[:title] == "" ? serial[:url] : serial[:title]),
    description: serial[:description],
    tag_list: serial[:tag],
    complete: (date >= Time.parse('2015-01-01') ? false : true),
    user_id: example_user.id,
    updated_at: date,
    created_at: date
  )

  binder.save!

  articles = serial[:articles].reverse
  articles.each.with_index(1) do |article, i|
    binder.pages.create(
      number: i,
      title: article[:title],
      url: article[:url],
      updated_at: article[:date] == "" ? Time.parse('2000-01-01') : Time.strptime(article[:date], "%Y年%m月%d日"),
      created_at: article[:date] == "" ? Time.parse('2000-01-01') : Time.strptime(article[:date], "%Y年%m月%d日")
    )
  end

  puts "create! #{binder.title}"
end
