class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

#Migration = making a change to an application's database via bin/rails db:migrate
#Above sets the database schema.
#primary ID is auto-incrementing starting at 1 