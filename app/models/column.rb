class Column < ApplicationRecord
  has_many :cards, dependent: :destroy
  belongs_to :project

  acts_as_list scope: :project

  validates :name, presence: true,
                   uniqueness: { scope: :project },
                   length: { maximum: 40 }
end
