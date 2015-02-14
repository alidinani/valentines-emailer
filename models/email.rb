class Email < ActiveRecord::Base
  scope :future, -> { where('emails.send_at > ?', Date.today.to_s(:db)) }
  scope :today, -> { where('emails.send_at = ?', Date.today.to_s(:db)) }
end
