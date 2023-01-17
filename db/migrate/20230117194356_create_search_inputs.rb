class CreateSearchInputs < ActiveRecord::Migration[7.0]
  def change
    create_table :search_inputs do |t|
      t.string :input

      t.timestamps
    end
  end
end
