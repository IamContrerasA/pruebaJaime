class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.date :publication_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
