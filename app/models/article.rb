class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end

# Form validation is defined in the Article class
# title and body attributes are defined by Active Record based on table columns, so not needed here