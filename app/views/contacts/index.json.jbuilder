json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :business_name, :email, :occupation, :alma_mater, :cell_phone, :home_phone, :business_phone, :address, :city, :state, :zip
  json.url contact_url(contact, format: :json)
end
