#language: pt

@consulta_cep
Funcionalidade: Consulta CEP

Para que eu possa obter os dados de um endereço
Sendo um usuário que deseja consultar o CEP
Posso acessar a lista de dados do CEP fornecido

    @cep_valido
    Cenário: CEP válido
        Quando consulto o CEP "01001000"
        Então vejo o status "200"
        E vejo o código IBGE do endereço

    @cep_invalido    
    Esquema do Cenário: CEP inválido
        Quando consulto um <CEP> inválido
        Então vejo o status "400"
            Exemplos:
            | CEP         |
            | "950100100" |
            | "95010A10"  |