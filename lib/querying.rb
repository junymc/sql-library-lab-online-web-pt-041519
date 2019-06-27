def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE books.series_id = 1 ORDER BY books.year;"
  #"SELECT books.title, books.year FROM books ORDER BY books.year ASC LIMIT 3;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;"
  #"SELECT characters.name, characters.motto FROM characters ORDER BY characters.name DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species)
  FROM characters
  GROUP BY species
  ORDER BY count(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  JOIN authors
  ON series.author_id = authors.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters ON characters.series_id = series.id
  GROUP BY series.title
  HAVING characters.species = 'human';"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name)
  FROM character_books
  JOIN characters ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY COUNT(name) DESC;"
end
