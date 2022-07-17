library(stringi)


cmnt_banner <- function(content, commentWidth = 76) {

  line1 <- paste(sep="", "#", strrep("*", commentWidth-1))
  line2 <- ""
  content <- stringi::stri_pad_both(content, width = 69, pad = " ")
  line2 <- paste(sep="", "#***", content, "***")
  line3 <- paste(sep="", "#", strrep("*", commentWidth-1))
  return(c(line1, line2, line3))
}

# write_comment <- function() {
#
# }

cmnt_rox <- function() {
  commentVec <- vector()
  commentVec <- c("#' @title")

  commentVec <- c(commentVec, "#' @encoding")
  commentVec <- c(commentVec, "#' @description")
  commentVec <- c(commentVec, "#' @details")
  commentVec <- c(commentVec, "#' @section")
  commentVec <- c(commentVec, "#' @param param1")
  commentVec <- c(commentVec, "#' @param param2")
  commentVec <- c(commentVec, "#' @return")
  commentVec <- c(commentVec, "#' @family")
  commentVec <- c(commentVec, "#' @seealso")
  commentVec <- c(commentVec, "#' @examples")
  commentVec <- c(commentVec, "#' #Example Here")
  commentVec <- c(commentVec, "#' @import")
  commentVec <- c(commentVec, "#' @export")
  return(commentVec)
}

cmnt_header <- function(commentWidth = 76) {

  nextLine <- paste(sep="", "#", strrep("*",commentWidth-1))
  commentVec <- vector()
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* NAME: "
  commentVec <- c(commentVec, nextLine)
  nextLine <- paste(sep="", "#", strrep("*",commentWidth-1))
  commentVec <- c(commentVec, nextLine)


  nextLine <- "#* VERSION: "
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* DESCRIPTION: "
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* AUTHOR: "
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* DATE: "
  commentVec <- c(commentVec, nextLine)

  nextLine <- paste(sep="", "#", strrep("*",commentWidth-1))
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* ASSUMPTIONS: "
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#*"
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* PARAMETERS:"
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#*"
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* INPUTS:"
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* - Datasets: "
  commentVec <- c(commentVec, nextLine)
  nextLine <- "#*"
  commentVec <- c(commentVec, nextLine)


  nextLine <- "#* OUTPUTS:"
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* - Datasets: "
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#*"
  commentVec <- c(commentVec, nextLine)

  nextLine <- "#* DEPENDENCIES:"
  commentVec <- c(commentVec, nextLine)

  return(commentVec)
}
