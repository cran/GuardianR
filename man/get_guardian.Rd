\name{get_guardian}
\alias{get_guardian}
\title{
Search Guardian's API for news articles that match the criteria
}
\description{
The function get_guardian() takes three variables and returns a data frame. The variables are: keyword(s), starting date, and end date.

Search takes a single keyword or multiple keywords concatenated with "+" (e.g. "keyword1+keyword2") and also accepts Boolean queries with and/or/not between words to refine searches. For exact phrases and matches encapsulate the keywords in "%22" (e.g "%22Death+of+Margaret+Thatcher%22".

Guardian's API only returns the full text when API-key is provided (see get_guardian_full).
}
\usage{
get_guardian(keywords, format = "json", from.date, to.date)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{keywords}{
Keyword to search Guardian API. Exemple: "Thatcher". For multiple keywords use "Margaret+Hilda+Thatcher".
}
  \item{format}{
Specifies format (JSON is default)
}
  \item{from.date}{
Start date of search
}
  \item{to.date}{
End date of search
}
}
\value{
Returns a data frame with 26 variables. Rows refer to news articles and columns to the news item's data.
}
\references{
Information about the Content API is available on Guardian's Item Reference Guide (http://www.guardian.co.uk/open-platform/content-api-item-reference-guide)
}
\author{
Marco Toledo Bastos & Cornelius Puschmann
}
\examples{
## Not run:
results <- get_guardian(keywords="thatcher", from.date="2013-04-09", to.date="2013-04-09")
## End(Not run)

## Not run:
keywords <- "margaret+thatcher+death"
results <- get_guardian(keywords=keywords, from.date="2013-04-09", to.date="2013-04-09")
## End(Not run)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ utilities }
