class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :user, :null => false
      t.string  :title
      t.text    :description

      t.timestamps
    end

    add_index :blogs, :user_id

    execute <<-SQL
      ALTER TABLE blogs
        ADD CONSTRAINT blogs_fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
    SQL

  end
end