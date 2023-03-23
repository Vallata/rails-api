json.array! @missions do |restaurant|
  json.extract! mission, :id, :listing_id, :start_date, :end_date
end
