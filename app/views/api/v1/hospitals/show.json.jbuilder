json.id @hospital.id
json.lonlat @hospital.lonlat
json.name @hospital.name
json.address @hospital.address
json.google_place_id @hospital.google_place_id

json.ratings @hospital.ratings do |rating|
    json.value rating.value
    json.opinion rating.opinion
    json.user_name rating.user_name
    json.date rating.created_at.strftime("%d/%m/%Y")
end

json.ratings_count @hospital.ratings.count
json.ratings_average @hospital.ratings_average
