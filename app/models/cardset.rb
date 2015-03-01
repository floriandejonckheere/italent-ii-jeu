class Cardset < ActiveRecord::Base
  has_many :cards, :dependent => :destroy

  validates :title, presence: true
end
