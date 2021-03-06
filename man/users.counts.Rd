% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/users.counts.R
\name{users.counts}
\alias{users.counts}
\title{Return the followers counts,friends counts, and weibo counts of a batch of users.}
\usage{
users.counts(roauth, uids)
}
\arguments{
\item{roauth}{A OAuth object created by \code{\link{createOAuth}}.}

\item{uids}{The ID of the user to be returned.These should be separated by simeangle comma, and are limited by 100 ID per call.}

\item{...}{Other request parameters for this API.}
}
\value{
A list of: 
 \item{id}{Weibo ID}
 \item{followers_count}{Count of followers}
 \item{friends_count}{Count of friends}
 \item{statuses_count}{Count of Weibos}
}
\description{
Return the followers counts,friends counts, and weibo counts of a batch of users.
}
\examples{
\dontrun{

users.counts(roauth, uids = c("1318558807", "1869170057"))
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}
\references{
\url{http://open.weibo.com/wiki/2/users/counts}
}
\keyword{Users}

