class Binder < ActiveRecord::Base
  belongs_to :user
  has_many :pages, -> { order 'number ASC, title ASC'},
    dependent: :destroy
  accepts_nested_attributes_for :pages, reject_if: :all_blank, allow_destroy: true

  acts_as_taggable

  validates :title,
    presence: true
  validates :view_count,
    presence: true
  validates :user,
    presence: true
end
