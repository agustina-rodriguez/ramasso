class Talk < ApplicationRecord
  belongs_to :event
  has_many :talk_speakers
  paginates_per 10
end
