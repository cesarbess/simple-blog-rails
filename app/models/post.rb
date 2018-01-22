class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5}


  def self.search(term)
    where("title LIKE ?", "%#{term}%")
  end
end
