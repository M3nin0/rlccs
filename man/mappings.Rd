% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mappings.R
\name{mappings}
\alias{mappings}
\title{Endpoint functions}
\usage{
mappings(q, system_id_source, system_id_target = NULL, params_list = list())
}
\arguments{
\item{q}{a \code{RLCCSQuery} object expressing a LCCS query
criteria.}

\item{system_id_source}{A \code{integer} containing the ID of the classification
system to which you want to check the associated mappings. This parameter is
mandatory, and its use allows retrieving only the mappings associated with a
classification system.}

\item{system_id_target}{an \code{integer} representing the ID of the target
classification system that you want to check for mappings. This parameter is
optional and can be done when there is a need to check the mapping
relationship between two classification systems. This parameter enables the
use of all management routes (HTTP verbs POST, PUT, DELETE) of the mappings
between two rating systems.}

\item{params_list}{HTTP Body Parameter List. The elements entered
in this list may vary depending on the method being used. See the
specification for the usage details for each of the operations.
(https://github.com/brazil-data-cube/lccs-ws-spec)}
}
\value{
A \code{RLCCSQuery} object with the subclass \code{mappings_id_source} for
 \code{/mappings/system_id_source/} endpoint, or
 a\code{mappings_id_source_and_target} subclass for
 \code{/mappings/system_id_source/system_id_target} endpoint containing
 operations results.

 These operations' results are all represented in JSON
 format, with the content varying according to the HTTP method
 that was performed. For the retrieval, addition, or update of classes
 linked to a Classification System, the result summarizes what was
 retrieved/added. In the case of deletions, only the confirmation
 of the operation is presented.
}
\description{
The \code{mappings} implements operations to access and manipulate LCCS-WS
mappings of Classification Systems endpoints (LCCS-WS-SPEC 0.6)
}
\examples{
\donttest{
lccs("https://brazildatacube.dpi.inpe.br/dev/lccs/") \%>\%
  mappings(system_id_source = 3) \%>\%
  get_request()

lccs("https://brazildatacube.dpi.inpe.br/dev/lccs/") \%>\%
  mappings(system_id_source = 3, system_id_target = 5) \%>\%
  get_request()
}
}
\seealso{
\code{\link{get_request}}, \code{\link{post_request}},
 \code{\link{put_request}}, \code{\link{delete_request}}
}
