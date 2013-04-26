\name{get_guardian_full}
\alias{get_guardian_full}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Search Guardian's API for news articles that match the criteria
}
\description{
The function get_guardian_full() takes four variables and returns a data frame with 27 columns. The last column includes the full text of the article. The variables are: keyword(s), starting date, end date, and API-key (mandatory).

Search takes a single keyword or multiple keywords concatenated with "+" (e.g. "keyword1+keyword2") and also accepts Boolean queries with and/or/not between words to refine searches. For exact phrases and matches encapsulate the keywords in "%22" (e.g "%22Death+of+Margaret+Thatcher%22".

The function get_guardian_full() returns the full text of articles and requires a Guardian API-key. Searching with API-key also returns data relevant to the access level assigned to your key.

Guardian API-key can be obtained by registering at <http://guardian.mashery.com/>.
}
\usage{
get_guardian_full(keywords, format = "json", from.date, to.date, api.key)
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
  \item{api.key}{
A Guardian API-key is necessery to retrieve the full text of news articles. A Guardian API-key can be obtained by registering at <http://guardian.mashery.com/>
}
}
\value{
Returns a data frame with 27 variables. Rows refer to news articles and columns to the news item's data.
}
\references{
Information about the Content API is available on Guardian's Item Reference Guide (http://www.guardian.co.uk/open-platform/content-api-item-reference-guide)
}
\author{
Marco Toledo Bastos & Cornelius Puschmann
}
\examples{
## Not run:
results <- get_guardian_full(keywords="germany", from.date="2013-04-11", to.date="2013-04-11", api.key="93nwec4ve35ag87ev7y6rxqf")
## End(Not run)

## Not run:
keywords <- "margaret+thatcher+death"
results <- get_guardian_full(keywords=keywords, from.date="2013-04-09", to.date="2013-04-09", api.key="93nwec4ve35ag87ev7y6rxqf")
## End(Not run)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ utilities }
