// Create an in-memory graph of the Game of Thrones graph
// This graph looks at character - character interactions across all 5 seasons
CALL gds.graph.create(
  'interactions',                    
  'Person',                             
  {INTERACTS: {orientation: 'UNDIRECTED'}}  
)

// Run betweenness centrality on the above graph
CALL gds.betweenness.stream('interactions')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).name AS name, score
ORDER BY score DESC

// Run local clustering coefficient
CALL gds.localClusteringCoefficient.stream('interactions')
YIELD nodeId, localClusteringCoefficient
RETURN gds.util.asNode(nodeId).name AS name, localClusteringCoefficient
ORDER BY localClusteringCoefficient DESC