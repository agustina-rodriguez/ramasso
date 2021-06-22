class Event < ApplicationRecord
  has_many :talks
  has_many :speakers
  paginates_per 5
end
