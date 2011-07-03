def find_place(p)
  place = p.split(",")
  {:address => "#{place[0]}, #{place[1]}", :neighborhood => place[2], :city => place[3], :state => place[4] }
end

namespace :db do
  desc "Bootstraps the database with demo data"
  task :bootstrap => %w(db:setup) do
    I18n.locale = :en
    places = <<ADDRESS
Av. Francisco Matarazzo, 734,Perdizes,Sao Paulo,SP
R Funchal, 129,Vila Olímpia,Sao Paulo,SP
R Min. Jesuino Cardoso, 473,Vila Olimpia,Sao Paulo,SP
R Augusta Hernandes, 91,Bela Vista,Sao Paulo,SP
Av. Sapopemba, 3498,Vila Regente Feijó,Sao Paulo,SP
Av. Casa Verde, 2272 ,Casa Verde,São Paulo,SP
Av Trancredo Neves 80, 600,Sacoma,Sao Paulo,SP
Rua Visconde de Castro, 531,Campo Belo,Sao Paulo,SP
R Ramos Batista, 491 ,Itaim Bibi,Sao Paulo,SP
Av. Brig. Luís Antônio, 683,Bela Vista,São Paulo,SP
R. Cdor. Afonso Kherlakian, 79,Centro,Sao Paulo,SP
R. Galvão Bueno, 782,Liberdade,São Paulo,SP
R. Artur de Azevedo, 1659,Pinheiros,São Paulo,SP
R Pequetita, 179 ,Itaim Bibi,Sao Paulo,SP
Av Cruzeiro do Sul, 1100,Santana,Sao Paulo,SP
R Sapetuba, 243,Butanta,Sao Paulo,SP
R. Félix Guilhem, 37,Lapa de Baixo,Sao Paulo,SP
Rua Joaquim Floriano, 163,Itaim Bibi,São Paulo,SP
R. Henri Dunant, 500 ,Santo Amaro,Sao Paulo,SP
R Sapetuba, 243 ,Butantã,Sao Paulo,SP
R Haddock Lobo, 74,Cerqueira César,São Paulo,SP
R. Alto Paraguai, 701, Jardim Brasil,São Paulo,SP
R. Vinte e Quatro de Maio, 62 ,República,Sao Paulo,SP
R. Bra , de Bela Vista, 800,Vila Congonhas,Sao Paulo,SP
ADDRESS

    places.split("\n").each do |place|
      current_place = find_place(place)
      Occurrence.create! :name => Faker::Name.first_name, :address =>  current_place[:address], :neighborhood => current_place[:neighborhood], :city =>  current_place[:city], :state => current_place[:state], :location => Faker::Lorem.words[0], :ref_point => Faker::Lorem.words[0], :phone => Faker::Base.numerify('########'), :category => Category.all.shuffle.first
    end
  end
end


