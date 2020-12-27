class Story < ApplicationRecord
  validates :name, length: {minimum: 2}, allow_blank: false
end
