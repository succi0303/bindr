class Binder < ActiveRecord::Base
  belongs_to :user

  acts_as_taggable

  validates :title,
    presence: true
  validates :view_count,
    presence: true
  validates :user,
    presence: true
end
