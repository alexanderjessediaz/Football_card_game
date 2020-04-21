class CreatePlayerCards < ActiveRecord::Migration[6.0]
  def change
    create_table :player_cards do |t|
      t.string :name
      t.string :team
      t.string :position
      t.string :position_rating

      t.timestamps
    end
  end
end
