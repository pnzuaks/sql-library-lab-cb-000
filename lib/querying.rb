def select_books_titles_and_years_in_first_series_order_by_year
"SELECT books.title, books.year
FROM books
INNER JOIN series
ON books.series_id = series.id
WHERE series_id = 1
GROUP BY(books.year);
"
end

def select_name_and_motto_of_char_with_longest_motto
"SELECT characters.name, characters.motto
FROM characters
ORDER BY motto LIMIT 1;
"
end


def select_value_and_count_of_most_prolific_species
" SELECT characters.species, SUM(characters.species)
FROM characters
ORDER BY MAX(species) LIMIT 1;
"
end

def select_name_and_series_subgenres_of_authors
"SELECT authors.name, subgenres.name
FROM authors
INNER JOIN series
ON authors.id = series.author_id
INNER JOIN subgenres
ON series.subgenre_id = subgenres.id;
"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
"SELECT characters.name, SUM(books.id)
FROM characters
INNER JOIN character_books
ON characters.id = character_books.character_id
INNER JOIN books
ON character_books.book_id = books.id;
"

# "SELECT characters.name, books.id
# FROM characters
# INNER JOIN character_books
# ON characters.id = character_books.character_id
# INNER JOIN books
# ON character_books.book_id = books.id
# ORDER BY books.id DESC;
# "
end
