class Cities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :cityname

      t.timestamps
    end
  end
end