class Message < ApplicationRecord
  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end

  belongs_to :user
  belongs_to :channel
end
