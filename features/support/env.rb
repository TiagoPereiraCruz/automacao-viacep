require "httparty"

class ViacepAPI
  include HTTParty
  base_uri "https://viacep.com.br"

  def consulta_cep(cep)
    @consulta = self.class.get(
      "/ws/#{cep}/json/"
    )
  end
end
