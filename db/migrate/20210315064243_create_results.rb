class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :max_width
      t.string :new_line
      t.string :delimeter
      t.string :input_string
      t.string :input_hash
      t.string :output_string

      t.timestamps
    end
  end
end
