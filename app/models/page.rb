class Page < ActiveRecord::Base
  belongs_to :binder

  validates :number,
    numericality: { only_integer: true }
  validates :url,
    presence: true,
    url: { message: 'URLの形式が正しくありません' }
  validates :title,
    presence: true
  validates :binder,
    presence: true
end
