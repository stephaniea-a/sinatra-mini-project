class Position
	attr_accessor :id, :title, :description, :rating

	def self.open_connection
		PG.connect( dbname: "fitness")
	end

	def self.hydrate position_data

		position = Position.new

		position.id = position_data['id']
		position.title = position_data['title']
		position.description = position_data['description']
		position.rating = position_data['rating']

		position

	end

	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM positions ORDER BY id"
		result = conn.exec(sql)

		position = result.map do |position|
			self.hydrate position
		end
		position


	end
end