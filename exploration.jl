using EzXML
using GraphIO
using LightGraphs
using SimpleWeightedGraphs
using NetworkLayout
using Plots
using GraphPlot


n1696 = loadgraph("/Users/emmanuelchateau/Documents/experts/na-dah/networks/xprCollaborations1696.graphml", GraphMLFormat())

n1706 = loadgraph("/Users/emmanuelchateau/Documents/experts/na-dah/networks/xprCollaborations1706.graphml", GraphMLFormat())

n1756 = loadgraph("/Users/emmanuelchateau/Documents/experts/na-dah/networks/xprCollaborations1756.graphml", GraphMLFormat())

n1766 = loadgraph("/Users/emmanuelchateau/Documents/experts/na-dah/networks/xprCollaborations1766.graphml", GraphMLFormat())

# vertices number
nv(n1696)
nv(n1706)
nv(n1756)
nv(n1766)

# edges number
ne(n1696)
ne(n1706)
ne(n1756)
ne(n1766)

collect(vertices(n1696))
collect(edges(n1696))

# density
# Density is defined as the ratio of the number of actual edges to the number of possible edge. Density is given on a scale of 0 to 1.
density1696 = LightGraphs.density(n1696)
density1706 = LightGraphs.density(n1706)
density1756 = LightGraphs.density(n1756)
density1766 = LightGraphs.density(n1766)

# We don’t have a very dense network, which is consistent with the datavisualisation. However, it should be noted that the density increase in the 2nd part of the century.
# We should keep in mind this is the density of the whole network, including non-connected components. The density of only the largest component should be higher.

# shortest path
# calculates the shortest possible series of nodes and edges that stand between any two nodes

connected_components(n1696)
connected_components(n1706)
connected_components(n1756)
connected_components(n1766)

degree_histogram(n1696)

# is the graph connected ?
is_connected(n1696)
# get the list of connected components
connected_components(n1696)

# get the largest component
# @rmq can’t figure out why minimum works but not maximum
largest_component = minimum(connected_components(n1696))

# create a subgraph of just the largest component
subgraph1696 = ''

diameter(subgraph1696)
