class Notification < ApplicationRecord
  scope :success, -> {where(success: true)}
  scope :recently_added, -> {where("created_at > ?", 30.minutes.ago)}

  def self.active?
    success.recently_added.exists? 
  end
end
