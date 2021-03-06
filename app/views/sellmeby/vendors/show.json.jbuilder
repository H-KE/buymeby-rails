json.vendor do
  json.(current_vendor, :id, :name, :description, :longitude, :latitude, :place_id, :address, :accepting_orders, :description, :logo_url, :setup_complete, :status)
end
json.items do
  json.array! current_vendor.items, partial: 'items/item', as: :item
end
json.hours do
  json.array! current_vendor.operational_hours, partial: 'operational_hours', as: :day
end
