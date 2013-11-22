json.array!(@corresponsales) do |corresponsal|
  json.extract! corresponsal, :usuario, :nombres, :apellidos, :correo, :telefono_fijo, :telefono_movil
  json.url corresponsal_url(corresponsal, format: :json)
end
