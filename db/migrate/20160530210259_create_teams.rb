class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :group_id
      t.string :flag

      t.timestamps null: false
    end

		group = Group.where("name='A'").first
		group.teams.create(:name=>'Rusia', :flag => 'rusia.png')
		group.teams.create(:name=>'Arabia Saudi', :flag => 'arabia.png')
		group.teams.create(:name=>'Egipto', :flag => 'egipto.png')
		group.teams.create(:name=>'Uruguay', :flag => 'uriguay.png')

		group = Group.where("name='B'").first
		group.teams.create(:name=>'España', :flag => 'spain.png')
		group.teams.create(:name=>'Portugal', :flag => 'portugal.png')
		group.teams.create(:name=>'Marruecos', :flag => 'marruecos.png')
		group.teams.create(:name=>'Irán', :flag => 'iran.png')

		group = Group.where("name='C'").first
		group.teams.create(:name=>'Francia', :flag => 'francia.png')
		group.teams.create(:name=>'Australia', :flag => 'australia.png')
		group.teams.create(:name=>'Perú', :flag => 'peru.png')
		group.teams.create(:name=>'Dinamarca', :flag => 'dinamarca.png')

		group = Group.where("name='D'").first
		group.teams.create(:name=>'Argentina', :flag => 'argentina.png')
		group.teams.create(:name=>'Islandia', :flag => 'islandia.png')
		group.teams.create(:name=>'Croacia', :flag => 'croacia.png')
		group.teams.create(:name=>'Nigeria', :flag => 'nigeria.png')

		group = Group.where("name='E'").first
		group.teams.create(:name=>'Brasil', :flag => 'brasil.png')
		group.teams.create(:name=>'Suiza', :flag => 'suiza.png')
		group.teams.create(:name=>'Costa Rica', :flag => 'costa_rica.png')
		group.teams.create(:name=>'Serbia', :flag => 'serbia.png')

		group = Group.where("name='F'").first
		group.teams.create(:name=>'Alemania', :flag => 'alemania.png')
		group.teams.create(:name=>'México', :flag => 'mexico.png')
		group.teams.create(:name=>'Suecia', :flag => 'suecia.png')
		group.teams.create(:name=>'Corea', :flag => 'Corea.png')

		group = Group.where("name='G'").first
		group.teams.create(:name=>'Bélgica', :flag => 'belgica.png')
		group.teams.create(:name=>'Panamá', :flag => 'panama.png')
		group.teams.create(:name=>'Túnez', :flag => 'tunez.png')
		group.teams.create(:name=>'Inglaterra', :flag => 'inglaterra.png')

		group = Group.where("name='H'").first
		group.teams.create(:name=>'Polonia', :flag => 'polonia.png')
		group.teams.create(:name=>'Senegal', :flag => 'senegal.png')
		group.teams.create(:name=>'Colombia', :flag => 'colombia.png')
		group.teams.create(:name=>'Japón', :flag => 'japon.png')

  end
end
