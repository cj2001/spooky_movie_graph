// Initialize Neosemantics
CALL n10s.graphconfig.init({handleVocabUris: "IGNORE"});

// Set constraints
CREATE CONSTRAINT resource IF NOT EXISTS ON (r:Resource) ASSERT r.uri IS UNIQUE;

// For the import of the smaller graph:
CALL n10s.rdf.import.fetch("https://raw.githubusercontent.com/cj2001/spooky_movie_graph/oct19/data/movies-small.nt","N-Triples");

