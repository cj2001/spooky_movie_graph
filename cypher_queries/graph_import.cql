// Initialize Neosemantics
CALL n10s.graphconfig.init({handleVocabUris: "IGNORE"});

// Set constraints
CREATE CONSTRAINT resource IF NOT EXISTS ON (r:Resource) ASSERT r.uri IS UNIQUE;

// For the import of the smaller graph:
CALL n10s.rdf.import.fetch("https://raw.githubusercontent.com/cj2001/spooky_movie_graph/oct19/data/movies-small.nt","N-Triples");

// Populate supplemental information
LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/cj2001/spooky_movie_graph/main/data/curse_data_mined.csv' AS line
WITH line
WHERE
	line.SourceLabel is not null
    AND line.SourceID is not null
    AND line.TargetLabel is not null
    AND line.RelationLabel is not null
MERGE (source:Resource {name: line.SourceLabel})
MERGE (target:Resource {name:line.TargetLabel})
WITH source, target, line
CALL apoc.create.relationship(source, line.RelationLabel, {}, target) YIELD rel
RETURN source, rel, target