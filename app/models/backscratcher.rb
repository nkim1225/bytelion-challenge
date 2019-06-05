class Backscratcher < ApplicationRecord
  validates :item_name, presence: true
  validates :item_description, presence: true
  validates :item_size, presence: true
  validates :item_cost, presence: true
end