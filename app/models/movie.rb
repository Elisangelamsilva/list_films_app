class Movie < ApplicationRecord
  belongs_to :profile

  enum status: [:to_watch, :watched]

  validates :title, :api_id, presence: true
end

# quais são os valores que poderá receber de forma nomeada, por baixo dos panos ele utiliza o indice como referencia para o valor que será salvo no banco. Ele cria um método
# https://api.rubyonrails.org/v5.2.3/classes/ActiveRecord/Enum.html