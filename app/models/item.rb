class Item < ApplicationRecord
  # Model associations
  belongs_to :todo

  # Validations
  validates_presence_of :name
end

# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  done       :boolean          default("f")
#  todo_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_items_on_todo_id  (todo_id)
#
