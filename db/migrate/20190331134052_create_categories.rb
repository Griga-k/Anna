class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :email
      t.text :body_mail
      t.text :body_mail_end

      t.timestamps
    end
  end
end
