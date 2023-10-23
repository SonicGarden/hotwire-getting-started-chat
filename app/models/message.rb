class Message < ApplicationRecord
  validates :content, presence: true
  validates :evaluation, numericality: { only_integer: true, allow_blank: true }

  after_create_commit -> { broadcast_append_to('messages', target: 'messages', partial: 'messages/message', locals: { message: self, broadcast: true }) }
  after_update_commit -> { broadcast_replace_to("messages", target: self, partial: 'messages/message', locals: { message: self }) }
  after_destroy_commit -> { broadcast_remove_to("messages", target: self) }
end
