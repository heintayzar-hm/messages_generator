class Message < ApplicationRecord
  validates :content, presence: true
  validates :header, presence: true
end
