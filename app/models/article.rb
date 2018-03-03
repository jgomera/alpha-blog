class Article <ApplicationRecord
  #Para asegurar que el articulo que se creara, deba contener un titulo antes de
  #actualizar o conectarse a la base de datos.
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
