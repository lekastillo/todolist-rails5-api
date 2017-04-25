class Todo < ApplicationRecord
  # Model assocations
  has_many :items, dependent: :destroy

  # Validations
  validates :title, :created_by, presence: true
end

# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  created_by :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
