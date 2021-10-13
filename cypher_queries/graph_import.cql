// Initialize Neosemantics
CALL n10s.graphconfig.init({handleVocabUris: "IGNORE"});

// Set constraints
CREATE CONSTRAINT resource IF NOT EXISTS ON (r:Resource) ASSERT r.uri IS UNIQUE;


// Populate the graph from an existing RDF data file
CALL n10s.rdf.import.fetch("https://github.com/jbarrasa/datasets/raw/master/wikidata_movies/movies-wikidata.ttl","Turtle");
