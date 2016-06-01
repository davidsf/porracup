class Porra < ActiveRecord::Base
	belongs_to :user
	has_many :apuestas

	def calculate_points
    points = 0
    Match.done.each do |match|
      apuesta = self.apuestas.where(:match_id=>match.id).first
      if apuesta.apuesta == match.result
        points = points + 3
      end
    end
    self.points = points
  end
  

end
