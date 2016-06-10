desc 'calculate points'
task :calculate => :environment do
	Porra.all.each do |porra|
		porra.calculate_points
		porra.save
	end
end
