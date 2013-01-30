class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :tagline
      t.datetime :date
      t.text :content

      t.timestamps
    end
  end
end
