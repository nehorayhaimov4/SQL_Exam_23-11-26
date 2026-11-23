# START

#1
from db import run_query_select, run_update_query

movies = run_query_select("SELECT * FROM movies")

for movie in movies:
    print(movie)

#2
movie_name = input("Enter movie name: ")

movies = run_query_select(
    "SELECT * FROM movies WHERE movie_name LIKE ?",
    (f"%{movie_name}%",)
)

for movie in movies:
    print(movie)

#3
movie_name = input("Enter movie name: ")
genre = input("Enter genre: ")
country = input("Enter country: ")
language = input("Enter language: ")
year = int(input("Enter year: "))
revenue = float(input("Enter revenue: "))

run_update_query("""
INSERT INTO movies (movie_name, genre, country, language, year, revenue)
VALUES (?, ?, ?, ?, ?, ?)
""", (movie_name, genre, country, language, year, revenue))

print("Movie added successfully!")