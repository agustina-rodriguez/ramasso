class CreateTalkSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :talk_speakers do |t|
      t.references :talk, null: false, foreign_key: true
      t.references :speaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
