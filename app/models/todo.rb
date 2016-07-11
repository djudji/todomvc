class Todo < ApplicationRecord
  after_initialize :setup
  validates :description, presence: true,
                          length: { minimum: 4 }

  scope :active, -> { where(is_completed: false) }
  scope :completed, -> { where(is_completed: true) }

  private

  def setup
    self.is_completed = false if new_record?
    self.is_archived = false if new_record?
  end
end
