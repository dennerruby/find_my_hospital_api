json.array! @hospitals do |hospital|
    json.id hospital.id
    json.lonlat hospital.lonlat
    json.name hospital.name
    json.address hospital.address
    json.google_place_id hospital.google_place_id

    json.ratings_count hospital.ratings.count
    json.ratings_average hospital.ratings_average
end