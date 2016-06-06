class Match < ActiveRecord::Base
	belongs_to :team_one, :class_name=>"Team" , :foreign_key =>"team_one_id"
	belongs_to :team_two, :class_name=>"Team" , :foreign_key =>"team_two_id"
	has_many :apuestas

	scope :done, -> { where("result is not NULL") }
	scope :today, -> { where(['match_date::text like ?', DateTime.now.strftime("%Y-%m-%d")+'%']).order(:match_date) }

	def self.next
		date = DateTime.now
		self.where("match_date>?", date).order("match_date").first
	end

	def pronostico
    apuestas = self.apuestas
    unos = apuestas.where("apuesta='1'").size
    equis = apuestas.where("apuesta='X'").size
    dos = apuestas.where("apuesta='2'").size
    [unos, equis, dos]
  end
end
