require "./lib/ghibli_service"

class FilmSearch

  def film_information
    service.films.map do |data|
      Film.new(data)
    end

    # response = HTTParty.get("https://limitless-castle-00011.herokuapp.com/films")
    # parsed_films = JSON.parse(response, symbolize_names: true)
    # parsed_films.map do |data|
    #   Film.new(data)
    # end
  end

  def service  #returns a new instance of GhibliService
    service = GhibliService.new
  end
end