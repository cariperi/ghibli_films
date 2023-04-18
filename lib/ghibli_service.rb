class GhibliService
  def films #gets data for films
    get_url("https://limitless-castle-00011.herokuapp.com/films")
  end

  def people #gets data for people
    get_url("https://limitless-castle-00011.herokuapp.com/people")
  end

  def get_url(url) #parses JSON
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
