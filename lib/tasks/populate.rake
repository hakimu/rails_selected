namespace :db do
	desc "Erase and fill the database"
	task :populate => :environment do
		require 'populator'
		require 'faker'
		[Contact].each(&:delete_all)
		Contact.populate 500 do |contact|
			contact.first_name = Faker::Name.first_name
			contact.last_name = Faker::Name.last_name
			contact.business_name = Faker::Company.name
			contact.email = Faker::Internet.email
			contact.occupation = Faker::Name.title
			contact.alma_mater = Faker::University.name
			contact.cell_phone = Faker::PhoneNumber.cell_phone
			contact.home_phone = Faker::PhoneNumber.phone_number
			contact.business_phone = Faker::PhoneNumber.phone_number
			contact.address = Faker::Address.street_address
			contact.city = Faker::Address.city
			contact.state = Faker::Address.state
			contact.zip = Faker::Address.zip
		end
	end
end

