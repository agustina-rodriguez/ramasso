class Speaker < ApplicationRecord
  belongs_to :event
  has_many :talk_speakers
  paginates_per 10

  def full_name
    first_name + ' ' + last_name
  end
end
