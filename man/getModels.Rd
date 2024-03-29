% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphfns.R
\name{getModels}
\alias{getModels}
\title{Deriving consensus graphs}
\usage{
getModels(bnres, p)
}
\arguments{
\item{bnres}{object of class 'bnclustOmics'}

\item{p}{posterior probability threshold}
}
\value{
a list of adjacency matrices corresponding to consensus graphs representing discovered clusters
}
\description{
When the parameter 'epmatrix' is set to TRUE, the object of class 'bnclustOmics' includes postrior probabilitis of all edges in the discovered graphs.
This function can be used to derive a consensus graph representing discovered clusters according to a specified posterior probability threshold. Only edges with posteriors above the threshold will be included
in the resulting consensus models.
}
\examples{
MAPmod<-dags(bnres3)
CONSmod1<-getModels(bnres3,p=0.5)
CONSmod2<-getModels(bnres3,p=0.9)
library(BiDAG)
compareDAGs(MAPmod[[1]],simdags[[1]])
compareDAGs(CONSmod1[[1]],simdags[[1]])
compareDAGs(CONSmod2[[1]],simdags[[1]])
}
\author{
Polina Suter
}
