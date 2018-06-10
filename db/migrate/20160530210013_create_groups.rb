class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps null: false
    end
		Group.create(:name=>'A')
    Group.create(:name=>'B')
    Group.create(:name=>'C')
    Group.create(:name=>'D')
		Group.create(:name=>'E')
		Group.create(:name=>'F')
		Group.create(:name=>'G')
		Group.create(:name=>'H')
  end
end
