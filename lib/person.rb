class Person
  attr_reader :name,
              :films

  def initialize(data)
  	@name = data[:name]
	  @films = data[:films]
  end

  def find_film_ids
    @films.map do |film|
      film.gsub("films/", "")
    end
  end
end