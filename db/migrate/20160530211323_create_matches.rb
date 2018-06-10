class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :match_date
      t.integer :team_one_id
      t.integer :team_two_id
      t.string :result
      t.integer :group_id

      t.timestamps null: false
    end

		group = Group.find_by_name('A')
		rusia = Team.find_by_name('Rusia')
		arabia = Team.find_by_name('Arabia Saudi')
		egipto = Team.find_by_name('Egipto')
		uruguay = Team.find_by_name('Uruguay')

		Match.create(:match_date => '2018-06-14 17:00:00', :team_one_id => rusia.id, :team_two_id => arabia.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-15 14:00:00', :team_one_id => egipto.id, :team_two_id => uruguay.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-19 20:00:00', :team_one_id => rusia.id, :team_two_id => egipto.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-20 17:00:00', :team_one_id => uruguay.id, :team_two_id => arabia.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-25 16:00:00', :team_one_id => uruguay.id, :team_two_id => rusia.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-25 16:00:00', :team_one_id => arabia.id, :team_two_id => egipto.id, :group_id => group.id)

		group = Group.find_by_name('B')
		marr = Team.find_by_name('Marruecos')
		iran = Team.find_by_name('Irán')
		spa = Team.find_by_name('España')
		port = Team.find_by_name('Portugal')

		Match.create(:match_date => '2018-06-15 17:00:00', :team_one_id => marr.id, :team_two_id => iran.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-15 20:00:00', :team_one_id => port.id, :team_two_id => spa.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-20 14:00:00', :team_one_id => port.id, :team_two_id => marr.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-20 20:00:00', :team_one_id => iran.id, :team_two_id => spa.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-25 20:00:00', :team_one_id => iran.id, :team_two_id => port.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-25 20:00:00', :team_one_id => spa.id, :team_two_id => marr.id, :group_id => group.id)

		group = Group.find_by_name('C')
		fra = Team.find_by_name('Francia')
		aus = Team.find_by_name('Australia')
		peru = Team.find_by_name('Perú')
		din = Team.find_by_name('Dinamarca')

		Match.create(:match_date => '2018-06-16 12:00:00', :team_one_id => fra.id, :team_two_id => aus.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-16 18:00:00', :team_one_id => peru.id, :team_two_id => din.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-21 14:00:00', :team_one_id => din.id, :team_two_id => aus.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-21 17:00:00', :team_one_id => fra.id, :team_two_id => peru.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-26 16:00:00', :team_one_id => din.id, :team_two_id => fra.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-26 16:00:00', :team_one_id => aus.id, :team_two_id => peru.id, :group_id => group.id)

		group = Group.find_by_name('D')
		arg = Team.find_by_name('Argentina')
		isl = Team.find_by_name('Islandia')
		cro = Team.find_by_name('Croacia')
		nig = Team.find_by_name('Nigeria')

		Match.create(:match_date => '2018-06-16 15:00:00', :team_one_id => arg.id, :team_two_id => isl.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-16 21:00:00', :team_one_id => cro.id, :team_two_id => nig.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-21 20:00:00', :team_one_id => arg.id, :team_two_id => cro.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-22 17:00:00', :team_one_id => nig.id, :team_two_id => isl.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-26 20:00:00', :team_one_id => isl.id, :team_two_id => cro.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-26 20:00:00', :team_one_id => nig.id, :team_two_id => arg.id, :group_id => group.id)

		group = Group.find_by_name('E')
		cos = Team.find_by_name('Costa Rica')
		bra = Team.find_by_name('Brasil')
		ser = Team.find_by_name('Serbia')
		sui = Team.find_by_name('Suiza')

		Match.create(:match_date => '2018-06-17 14:00:00', :team_one_id => cos.id, :team_two_id => ser.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-17 20:00:00', :team_one_id => bra.id, :team_two_id => sui.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-22 14:00:00', :team_one_id => bra.id, :team_two_id => cos.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-22 20:00:00', :team_one_id => ser.id, :team_two_id => sui.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-27 20:00:00', :team_one_id => ser.id, :team_two_id => bra.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-27 20:00:00', :team_one_id => sui.id, :team_two_id => cos.id, :group_id => group.id)

		group = Group.find_by_name('F')
		ale = Team.find_by_name('Alemania')
		mex = Team.find_by_name('México')
		sue = Team.find_by_name('Suecia')
		cor = Team.find_by_name('Corea')

		Match.create(:match_date => '2018-06-17 17:00:00', :team_one_id => ale.id, :team_two_id => mex.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-18 14:00:00', :team_one_id => sue.id, :team_two_id => cor.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-23 17:00:00', :team_one_id => cor.id, :team_two_id => mex.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-23 20:00:00', :team_one_id => ale.id, :team_two_id => sue.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-27 16:00:00', :team_one_id => cor.id, :team_two_id => ale.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-27 16:00:00', :team_one_id => mex.id, :team_two_id => sue.id, :group_id => group.id)

    group = Group.find_by_name('G')
		bel = Team.find_by_name('Bélgica')
		pan = Team.find_by_name('Panamá')
    ing = Team.find_by_name('Inglaterra')
		tun = Team.find_by_name('Túnez')

		Match.create(:match_date => '2018-06-18 17:00:00', :team_one_id => bel.id, :team_two_id => pan.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-18 20:00:00', :team_one_id => tun.id, :team_two_id => ing.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-23 14:00:00', :team_one_id => bel.id, :team_two_id => tun.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-24 14:00:00', :team_one_id => ing.id, :team_two_id => pan.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-28 20:00:00', :team_one_id => ing.id, :team_two_id => bel.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-28 20:00:00', :team_one_id => pan.id, :team_two_id => tun.id, :group_id => group.id)

    group = Group.find_by_name('H')
		col = Team.find_by_name('Colombia')
		jap = Team.find_by_name('Japón')
    pol = Team.find_by_name('Polonia')
		sen = Team.find_by_name('Senegal')

		Match.create(:match_date => '2018-06-19 14:00:00', :team_one_id => col.id, :team_two_id => jap.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-19 17:00:00', :team_one_id => pol.id, :team_two_id => sen.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-24 17:00:00', :team_one_id => jap.id, :team_two_id => sen.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-24 20:00:00', :team_one_id => pol.id, :team_two_id => col.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-28 16:00:00', :team_one_id => jap.id, :team_two_id => pol.id, :group_id => group.id)
		Match.create(:match_date => '2018-06-28 16:00:00', :team_one_id => sen.id, :team_two_id => col.id, :group_id => group.id)


  end
end
