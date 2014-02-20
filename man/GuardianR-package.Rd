\name{GuardianR}
\alias{GuardianR-package}
\alias{GuardianR}
\docType{package}
\title{
The Guardian API Wrapper
}
\description{
Provides an interface to the Open Platform's Content API of the Guardian Media Group. It retrieves content from news outlets The Observer, The Guardian, and guardian.co.uk from 1999 to current day.
}
\details{
\tabular{ll}{
Package: \tab GuardianR\cr
Type: \tab Package\cr
Version: \tab 0.3\cr
Date: \tab 2014-02-20\cr
License: \tab GPL (>= 2)\cr
}
The results of keyword search include news articles that match the search terms and were published after 1999. Function get_guardian accepts date intervals with multiple keywords (format: "keyword1+keyword2") and returns a data frame. Rows refer to news articles and columns to the news item's data. The resulting data frame includes the following 27 columns:

id News article ID

sectionId API news section ID to the news article

sectionName Guardian news section ID to the news article

webPublicationDate News article online publication date

webTitle Online headline

webUrl News article URL

apiUrl News article API URL

newspaperPageNumber Page where the news article was featured in the printed newspaper

trailText Introductions to the news article

headline Print headline

showInRelatedContent Related content (logical)

lastModified Date the news article was last modified (POSIXct)

hasStoryPackage (logical)

score Score provided by the API relative to the query and importance of the result

standfirst Short summary to the news article

shortUrl Short URL to the news article

wordcount News article's word count

commentable Comments included (logical)

allowUgc Allows User Generated Content (logical)

isPremoderated Pre-moderated news articles (logical)

byline News article author

publication Source of the published news article (Oberserver, The Guardian, or guardian.co.uk) 

newspaperEditionDate Publication date of print news article (POSIXct)

shouldHideAdverts Hide ads (logical)

liveBloggingNow live blogging (logical)

commentCloseDate Date comments closed (POSIXct)

body News article full text

At the time of this writing, Microsoft Windows does not have integration between the OS default CA certificates and OpenSS. Because of that, the functions get_guardian and get_guardian_full will verify the operation system and when necessary download the SLL certificate "cacert.perm" to access https links.

To see how to citate the package, check citation("GuardianR").
}
\author{
Marco Toledo Bastos & Cornelius Puschmann

Maintainer: 
Marco Toledo Bastos <marco@toledobastos.com>
}
\references{
More information on Content API is available on Guardian Item Reference Guide (http://www.guardian.co.uk/open-platform/content-api-item-reference-guide)

See also Guardian Content Search Reference Guide (http://www.guardian.co.uk/open-platform/content-api-content-search-reference-guide)

And the Getting started guide (http://www.guardian.co.uk/open-platform/getting-started).
}

\examples{
results <- get_guardian(keywords="ireland", 
                        from.date="2013-04-09", 
                        to.date="2013-04-09")
}
