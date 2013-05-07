\name{get_json}
\alias{get_json}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Request json at Guardian API
}
\description{
The function get_json() makes a call at Guardian API to retrieve articles that match the criteria. The function is called by get_guardian and should not be used standalone.
}
\usage{
get_json(keywords, format = "json", from.date, to.date, api.key)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{keywords}{
Keyword to search Guardian API. Exemple: "Thatcher". For multiple keywords use c("Margaret", "Hilda", "Thatcher")
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
Guardian API-key
}
}
\author{
Marco Toledo Bastos & Cornelius Puschmann
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ utilities }
