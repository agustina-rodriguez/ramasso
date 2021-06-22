class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography
      t.date :birth_date
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
