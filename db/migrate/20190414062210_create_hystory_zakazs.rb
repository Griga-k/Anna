class CreateHystoryZakazs < ActiveRecord::Migration[5.2]
  def change
    create_table :hystory_zakazs do |t|
      t.datetime :date_time
      t.string :email
      t.text :body_mail

      t.timestamps
    end
  end
end
