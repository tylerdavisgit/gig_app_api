json.extract! gig, :id, :title, :client, :client_contact, :location, :date, :price, :created_at, :updated_at
json.url gig_url(gig, format: :json)
