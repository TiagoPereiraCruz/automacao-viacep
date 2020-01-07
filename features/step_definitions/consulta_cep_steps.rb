cep_api = ViacepAPI.new

Quando("consulto o CEP {string}") do |cep|
  @result = cep_api.consulta_cep(cep)
end

Então("vejo o status {string}") do |status_code|
  expect(@result.response.code).to eql status_code
end

Então("vejo o código IBGE do endereço") do
  @codigo_ibge = @result.parsed_response["ibge"]
  puts "Código IBGE do endereço: #{@codigo_ibge}"
end

Quando("consulto um {string} inválido") do |cep|
  @result = cep_api.consulta_cep(cep)
end
