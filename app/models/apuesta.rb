class Apuesta < ActiveRecord::Base
	belongs_to :match
  belongs_to :porra
  self.table_name = 'apuestas'

	def acierto?
    Match.find(self.match).result==self.apuesta
  end
end
