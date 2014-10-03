class CreateSlackResponses < ActiveRecord::Migration
  def change
    create_table :slack_responses do |t|
      t.string :team_id
      t.string :team_domain
      t.integer :service_id
      t.string :channel_id
      t.string :channel_name
      t.datetime :timestamp
      t.string :user_id
      t.string :user_name
      t.text :text

      t.timestamps
    end
    change_column :slack_responses, :service_id, :bigint
    add_index :slack_responses, :text
  end
end
