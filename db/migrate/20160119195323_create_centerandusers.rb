class CreateCenterandusers < ActiveRecord::Migration
  def change
    create_table :centerandusers, id: false do |t|
      t.belongs_to :center, index: true
      t.belongs_to :user, index: true
    end
  end
end
