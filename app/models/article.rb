class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end

# has_many :comments tells rails that one article can be associated with many comments in the db
# Form validation is defined in the Article class
# title and body attributes are defined by Active Record based on table columns, so not needed here