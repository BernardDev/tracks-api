class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :username
      t.string :password
    end
  end
end
