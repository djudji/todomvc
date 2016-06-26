class Todo < ApplicationRecord
  after_initialize :setup

  private

  def setup
    self.status = 1
  end
end
