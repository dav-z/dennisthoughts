class InitializeDatabase < ActiveRecord::Migration[5.1]
  def change
    # users table
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password
      t.timestamps
    end
    # posts table
    create_table :posts do |t|
      # t.integer :user_id
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
  end
end
