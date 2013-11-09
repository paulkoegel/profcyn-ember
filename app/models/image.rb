class Image < ActiveRecord::Base
  belongs_to :gallery
  validates :gallery_id, presence: true

  def vertical?
    self.height > self.width
  end

end
