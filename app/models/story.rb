class Story < ApplicationRecord
  validates :name, length: {minimum: 5}, allow_blank: false
end
