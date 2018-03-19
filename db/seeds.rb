# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reclamo.destroy_all
Empresa.destroy_all
User.destroy_all


20.times do
	Empresa.create(name: Faker::Company.name)
end	

30.times do
	User.create(email: Faker::Internet.email,
			password: '123456'
		)
end	

250.times do
	Reclamo.create(user_id: User.order("RANDOM()").id,
			empresa_id: Empresa.order("RANDOM()").id,
			content: Faker::Lorem.sentences
			)
end	