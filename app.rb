require "sinatra"
require "sinatra/reloader"




get("/") do
erb(:home)
end

get("/rock") do
  @var = ["Rock", "Paper", "Scissors"].sample

  if @var == "Rock"
  @outcome = "We tied!"
  elsif @var == "Scissors"
  @outcome = "We won!"
  elsif @var == "Paper"
  @outcome = "We lost!"
  end
  erb(:rock)

end


get("/paper") do
@var = ["Rock", "Paper", "Scissors"].sample

  if @var == "Rock"
  @outcome = "We won!"
  elsif @var == "Scissors"
  @outcome = "We lost!"
  elsif @var == "Paper"
  @outcome = "We tied!"
  end
  erb(:paper)

end


get("/scissors") do
  @var = ["Rock", "Paper", "Scissors"].sample

  if @var == "Rock"
  @outcome = "We lost!"
  elsif @var == "Scissors"
  @outcome = "We tied!"
  elsif @var == "Paper"
  @outcome = "We won!"
  end
  erb(:scissors)

end
