json.array!(@gastos) do |gasto|
  json.extract! gasto, :id, :valor, :contribuinte_id
  json.url gasto_url(gasto, format: :json)
end
