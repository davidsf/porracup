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
		francia = Team.find_by_name('Francia')
		rumania = Team.find_by_name('Rumania')
		albania = Team.find_by_name('Albania')
		suiza = Team.find_by_name('Suiza')

		Match.create(:match_date => '2016-06-10 21:00:00', :team_one_id => francia.id, :team_two_id => rumania.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-11 15:00:00', :team_one_id => albania.id, :team_two_id => suiza.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-15 18:00:00', :team_one_id => rumania.id, :team_two_id => suiza.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-15 21:00:00', :team_one_id => francia.id, :team_two_id => albania.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-19 21:00:00', :team_one_id => rumania.id, :team_two_id => albania.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-19 21:00:00', :team_one_id => suiza.id, :team_two_id => francia.id, :group_id => group.id)

		group = Group.find_by_name('B')
		ing = Team.find_by_name('Inglaterra')
		rus = Team.find_by_name('Rusia')
		gales = Team.find_by_name('Gales')
		esl = Team.find_by_name('Eslovaquia')

		Match.create(:match_date => '2016-06-11 18:00:00', :team_one_id => gales.id, :team_two_id => esl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-11 21:00:00', :team_one_id => ing.id, :team_two_id => rus.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-15 15:00:00', :team_one_id => rus.id, :team_two_id => esl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-16 15:00:00', :team_one_id => ing.id, :team_two_id => gales.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-20 21:00:00', :team_one_id => rus.id, :team_two_id => gales.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-20 21:00:00', :team_one_id => esl.id, :team_two_id => ing.id, :group_id => group.id)

		group = Group.find_by_name('C')
		ale = Team.find_by_name('Alemania')
		pol = Team.find_by_name('Polonia')
		ucr = Team.find_by_name('Ucrania')
		irl = Team.find_by_name('Irlanda del Norte')

		Match.create(:match_date => '2016-06-12 18:00:00', :team_one_id => pol.id, :team_two_id => irl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-12 21:00:00', :team_one_id => ale.id, :team_two_id => ucr.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-16 18:00:00', :team_one_id => ucr.id, :team_two_id => irl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-16 21:00:00', :team_one_id => ale.id, :team_two_id => pol.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-21 18:00:00', :team_one_id => ucr.id, :team_two_id => pol.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-21 18:00:00', :team_one_id => irl.id, :team_two_id => ale.id, :group_id => group.id)

		group = Group.find_by_name('D')
		spa = Team.find_by_name('España')
		che = Team.find_by_name('R. Checa')
		tur = Team.find_by_name('Turquia')
		cro = Team.find_by_name('Croacia')

		Match.create(:match_date => '2016-06-12 15:00:00', :team_one_id => tur.id, :team_two_id => cro.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-13 15:00:00', :team_one_id => spa.id, :team_two_id => che.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-17 18:00:00', :team_one_id => che.id, :team_two_id => cro.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-17 21:00:00', :team_one_id => spa.id, :team_two_id => tur.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-21 21:00:00', :team_one_id => che.id, :team_two_id => tur.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-21 21:00:00', :team_one_id => cro.id, :team_two_id => spa.id, :group_id => group.id)

		group = Group.find_by_name('E')
		bel = Team.find_by_name('Belgica')
		ita = Team.find_by_name('Italia')
		irl = Team.find_by_name('Irlanda')
		sue = Team.find_by_name('Suecia')

		Match.create(:match_date => '2016-06-13 18:00:00', :team_one_id => irl.id, :team_two_id => sue.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-13 21:00:00', :team_one_id => bel.id, :team_two_id => ita.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-17 15:00:00', :team_one_id => ita.id, :team_two_id => sue.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-18 15:00:00', :team_one_id => bel.id, :team_two_id => irl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-22 21:00:00', :team_one_id => ita.id, :team_two_id => irl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-22 21:00:00', :team_one_id => sue.id, :team_two_id => bel.id, :group_id => group.id)

		group = Group.find_by_name('F')
		por = Team.find_by_name('Portugal')
		isl = Team.find_by_name('Islandia')
		aus = Team.find_by_name('Austria')
		hun = Team.find_by_name('Hungria')

		Match.create(:match_date => '2016-06-14 18:00:00', :team_one_id => aus.id, :team_two_id => hun.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-14 21:00:00', :team_one_id => por.id, :team_two_id => isl.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-18 15:00:00', :team_one_id => isl.id, :team_two_id => hun.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-18 15:00:00', :team_one_id => por.id, :team_two_id => aus.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-22 21:00:00', :team_one_id => isl.id, :team_two_id => aus.id, :group_id => group.id)
		Match.create(:match_date => '2016-06-22 21:00:00', :team_one_id => hun.id, :team_two_id => por.id, :group_id => group.id)


  end
end
