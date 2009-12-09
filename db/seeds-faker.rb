require 'faker'
require 'open-uri'
require 'rss/2.0'

Kino.delete_all
Film.delete_all
Recenzja.delete_all
Seans.delete_all

# Gdynia
Kino.create(:name => 'Multikino (Silver Screen)')
Kino.create(:name => 'Klub Filmowy')
# Sopot
Kino.create(:name => 'Multikino Sopot')
Kino.create(:name => 'Kino Polonia')

rss_content = ""
open("http://www.multikino.pl/rss,gdansk,repertuar.html") do |f|
  rss_content = f.read
end

movies = []
rss = RSS::Parser.parse(rss_content,false)
rss.items.reverse.each do |item|
  movies << item.title
end

movies.uniq.each do |m|
  Film.create(
    :name => m,
    :minutes => 80 + rand(70)    
  )
end

Film.all.each do |f|
  rand(5).times do
    f.recenzje.create(
      :author_name => Faker::Name::name,
      :content => Faker::Lorem::paragraphs[0]
  )
  end
end

100.times do
  Seans.create(
    :kino_id => Kino.all[rand(Kino.all.size)].id,
    :film_id => Film.all[rand(Film.all.size)].id,
    :starts_on => 3.days.ago - rand(10).days,
    :ends_on => 3.days.ago + rand(10).days
  )
end
