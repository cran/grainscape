## ----setup, include=FALSE-----------------------------------------------------
library(knitr)

opts_chunk$set(
  cache = TRUE,
  echo = TRUE,
  eval = TRUE,
  fig.align = "left",
  fig.height = 6,
  fig.width = 6,
  message = FALSE,
  out.extra = "",
  results = "hold",
  warning = FALSE
)

not_cran = !identical(Sys.getenv("NOT_CRAN"), "") && !identical(Sys.getenv("CI"), "true")

## ----call_graph_engine_initialize, echo = FALSE, eval = not_cran, fig.cap = "Call diagram for Engine::initialize()"----
DiagrammeR::grViz("
  digraph initialize {
    graph [overlap = true, fontsize = 10]
    
    # nodes
    node [fillcolor = navy, fontcolor = white,
          fontname = Courier,
          shape = oval, style = filled]
    
    initialize
    
    node [fillcolor = grey50, fontcolor = white,
          fontname = Courier,
          shape = box, style = filled]
    
    cellIsZero; combinePatches; findPatches; getIndexFromList;
    outOfBounds; updateOutputMap; writeErrorMessage;
    
    # edges
    initialize->cellIsZero
    initialize->findPatches
    initialize->updateOutputMap
    initialize->writeErrorMessage
    cellIsZero->outOfBounds
    findPatches->combinePatches
    findPatches->getIndexFromList
    findPatches->outOfBounds
  }
")

## ----call_graph_engine_start, echo = FALSE, eval = not_cran, fig.cap = "Call diagram for Engine::start()"----
DiagrammeR::grViz("
  digraph start {
    graph [overlap = true, fontsize = 10]
    
    # nodes
    node [fillcolor = navy, fontcolor = white,
          fontname = Courier,
          shape = oval, style = filled]
    
    start
    
    node [fillcolor = grey50, fontcolor = white,
          fontname = Courier,
          shape = box, style = filled]
    
    activeCellSpreadChecker; calcDistance; cellsEqual; connectCell; createActiveCell;
    findPath; lookForIndirectPath;
    outOfBounds; parseMap; prunePaths;
    updateOutputMap; writeErrorMessage;
    
    # edges
    start->activeCellSpreadChecker
    start->createActiveCell
    start->updateOutputMap
    start->writeErrorMessage
    createActiveCell->calcDistance
    createActiveCell->connectCell
    createActiveCell->findPath
    createActiveCell->outOfBounds
    findPath->lookForIndirectPath
    findPath->parseMap
    findPath->prunePaths
    parseMap->cellsEqual
  }
")

