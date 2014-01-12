json.array!(@contribuintes) do |contribuinte|
  json.extract! contribuinte, :id, :nome
  json.url contribuinte_url(contribuinte, format: :json)
end
