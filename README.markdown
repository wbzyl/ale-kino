# KATA: Ale Kino

Pomysł na tę aplikację pochodzi od Ryana Batesa.

**Uwaga:** Nowe pomysły testujemy na gałęziach/odgałęzieniach.

Strona główna…


## Seed data 

W wersji 2.3.4 w katalogu *db* pojawił się plik *ssed.rb*.
Do czego można go wykorzystać opisano na [ASCIIcasts] [seed data].

Dawno temu należało wejść na konsolę, wpisać i wykonać kilka poleceń:

    rake db:migrate
    script/console
    Kino.create(:name => 'Multikino (Silver Screen)')
    Kino.create(:name => 'Klub Filmowy')
    ...

Teraz wystarczy wpisać do pliku *seed.rb*:

    # Gdynia
    Kino.create(:name => 'Multikino (Silver Screen)')
    Kino.create(:name => 'Klub Filmowy')
    # Sopot
    Kino.create(:name => 'Multikino Sopot')
    Kino.create(:name => 'Kino Polonia')
    # Gdańsk
    Kino.create(:name => 'Żak')
    Kino.create(:name => 'Parakino Łaźnia')
    Kino.create(:name => 'Multikino')
    Kino.create(:name => 'Kino Neptun')
    Kino.create(:name => 'Kino Krewetka')
    Kino.create(:name => 'Kino Kameralne')
    Kino.create(:name => 'Kino Helikon')
    Kino.create(:name => 'Helios (dawny Kinoplex)')

i wykonać

    rake db:setup

albo

    rake db:migrate
    rake db:seed

## Zaczynamy…

Teraz wchodzimy na:

    http://localhost:3000  # dodajemy ze 2--3 filmy następnie przechodzimy
    http://localhost:3000/films/1


[seed data]: http://asciicasts.com/episodes/179-seed-data "Seed Data"