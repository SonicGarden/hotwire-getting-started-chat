class Message < ApplicationRecord
  validates :content, presence: true

  after_create_commit -> { broadcast_append_to('messages', target: 'messages', partial: 'messages/message', locals: { message: self }) }
end
