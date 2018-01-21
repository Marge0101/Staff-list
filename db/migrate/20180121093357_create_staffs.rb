class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.date :birthday
      t.integer :age
      t.string :job
      t.string :region
      t.text :memo

      t.timestamps
    end
  end
end
