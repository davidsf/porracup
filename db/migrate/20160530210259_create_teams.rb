class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :group_id
      t.string :flag

      t.timestamps null: false
    end

		group = Group.where("name='A'").first
		group.teams.create(:name=>'Francia', :flag => 'francia.png')
		group.teams.create(:name=>'Rumania', :flag => 'rumania.png')
		group.teams.create(:name=>'Albania', :flag => 'albania.png')
		group.teams.create(:name=>'Suiza', :flag => 'suiza.png')

		group = Group.where("name='B'").first
		group.teams.create(:name=>'Inglaterra', :flag => 'inglaterra.png')
		group.teams.create(:name=>'Rusia', :flag => 'rusia.png')
		group.teams.create(:name=>'Gales', :flag => 'gales.png')
		group.teams.create(:name=>'Eslovaquia', :flag => 'eslovaquia.png')

		group = Group.where("name='C'").first
		group.teams.create(:name=>'Alemania', :flag => 'alemania.png')
		group.teams.create(:name=>'Polonia', :flag => 'polonia.png')
		group.teams.create(:name=>'Ucrania', :flag => 'ucrania.png')
		group.teams.create(:name=>'Irlanda del Norte', :flag => 'irlandan.png')

		group = Group.where("name='D'").first
		group.teams.create(:name=>'España', :flag => 'spain.png')
		group.teams.create(:name=>'R. Checa', :flag => 'checa.png')
		group.teams.create(:name=>'Turquia', :flag => 'turquia.png')
		group.teams.create(:name=>'Croacia', :flag => 'croacia.png')

		group = Group.where("name='E'").first
		group.teams.create(:name=>'Belgica', :flag => 'belgica.png')
		group.teams.create(:name=>'Italia', :flag => 'italia.png')
		group.teams.create(:name=>'Irlanda', :flag => 'irlanda.png')
		group.teams.create(:name=>'Suecia', :flag => 'suecia.png')

		group = Group.where("name='F'").first
		group.teams.create(:name=>'Portugal', :flag => 'portugal.png')
		group.teams.create(:name=>'Islandia', :flag => 'islandia.png')
		group.teams.create(:name=>'Austria', :flag => 'austria.png')
		group.teams.create(:name=>'Hungria', :flag => 'hungria.png')

  end
end
