# Kaggle Challenge: Is a Movie Really Cursed???

This repository is in support of the Kaggle Cursed Movie challenge.  The goal of this challenge is to try and predict whether a movie is cursed or not based on a variety of graph features within Neo4j. 

### Contact Info
#### Name: Clair J. Sullivan, Data Science Advocate at Neo4j
#### Email: clair.sullivan@neo4j.com
#### Twitter: @CJLovesData1

## Contents

- `./cypher_queries/`
  - `create_rdf_data.cql`: Cypher query to create the RDF data used in this challenge.  You will not actually need to run this since the data is already provided (see below).  This script just shows how the data file was created.
  - `graph_import.cql`: You will be creating one graph database populated with two different datasets (see below).  The first 3 queries are used to pull in the RDF data.  The final query is used to pull in the CSV data.

- `./data/`
  - `movies-small.nt`: This is the data file, in N-Triples format, of the starting movie list as collected from Wikidata and put into RDF format.
  - `curse_data_mined.csv`: This is supplemental information about the above movies that was hand collected.

## References

- [Neo4j](http://neo4j.com/): The main page
- [Neo4j Sandbox Creation](https://dev.neo4j.com/sandbox): Create your own free database instance
- [Graph Algorithms Book](https://dev.neo4j.com/graph_algorithms_book): Free book on all things graph data science
- [Cypher Query Language](https://neo4j.com/docs/cypher-manual/current/): Docs on Cypher, the query language for Neo4j
- [Graph Data Science Library](https://dev.neo4j.com/graph_data_science): Docs on how to use the GDS library within Neo4j
- [Neosematics](https://neo4j.com/labs/neosemantics/): Neo4j tool for working with RDF data
- [Bite-Sized Neo4j for Data Scientists](https://dev.neo4j.com/bite_sized_playlist): YouTube playlist of short (~5 minutes) videos on a variety of topics to get data scientists up and running with Neo4j
- [Neo4j Discord Server](https://discord.gg/neo4j): Come chat about this challenge in the #hackathon channel!

#### _Please create an issue in this repo if you find any errors!_