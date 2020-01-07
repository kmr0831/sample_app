class Task < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  validates :title, :content, presence: true

  def toggle_status!
    if draft?
      published!
    else
      draft!
    end
  end
end
