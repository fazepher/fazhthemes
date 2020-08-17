
#' Lucified ggplot2 themes
#'
#' These functions "lucify" (inside joke for modifying) a core {ggplot2} theme,
#' as described in (\code{\link[ggplot2]{ggtheme}}).
#' The basics of lucified themes are Century Gothic fonts, bigger sizes of text elements and margins,
#' as well as slightly different colors and centered title and subtitles.
#'
#' There are 3 customizable parameters to pass to all lucified themes. Probably, the most used
#' would be the font family, as not everyone could like or have available Century Gothic.
#'
#' @param text_family (Default = "Century Gothic") Text font family to use.
#' @param text_size (Default = 17) Text size to use.
#' @param text_color (Default = "#3C3C3C") Text color to use.
#'
#' @examples
#'
#' \dontrun{
#'
#' UKDriverDeaths_tibble <- UKDriverDeaths %>%
#'    matrix(nrow=16, ncol=12, byrow = TRUE,
#'           dimnames = list(1969:1984,month.abb)) %>%
#'    as.data.frame() %>%
#'    rownames_to_column("Year")
#'
#' ggplot(data = UKDriverDeaths_tibble, aes(x=Year,y=Jan)) +
#'   geom_col(fill = "steelblue4", width = 0.1) +
#'   geom_point(color = "steelblue4", size = rel(10)) +
#'   theme_minimal()
#'
#' ggplot(data = UKDriverDeaths_tibble, aes(x=Year,y=Jan)) +
#'   geom_col(fill = "steelblue4", width = 0.1) +
#'   geom_point(color = "steelblue4", size = rel(10)) +
#'   lucify_theme_minimal()
#'
#'}
#'
#' @export
#'
#'
lucify_basics <- function(text_family = "Century Gothic", text_size = 15, text_color = "#3C3C3C"){

  theme(line = element_line(colour = gris_nk_escala),
        rect = element_rect(colour = gris_nk_claro),
        text = element_text(family = text_family,
                            colour = text_color,
                            size = text_size),
        axis.title.x = element_text(size = rel(1.2),
                                    margin = margin(t = 15)),
        axis.title.x.top = element_text(size = rel(1.2),
                                        margin = margin(b = 15)),
        axis.title.y = element_text(size = rel(1.2),
                                    margin = margin(r = 30)),
        axis.title.y.right = element_text(size = rel(1.2),
                                          margin = margin(l = 30)),
        axis.text.x = element_text(size = rel(0.825),
                                   margin = margin(t = 8)),
        axis.text.x.top = element_text(size = rel(0.825),
                                       margin = margin(b = 8)),
        axis.text.y = element_text(margin = margin(r = 8)),
        axis.text.y.right = element_text(margin = margin(l = 8)),
        axis.ticks = element_blank(),
        legend.margin = margin(t = 15, r = 15, b = 15, l = 15),
        legend.title = element_text(size = rel(1.15)),
        panel.spacing = unit(15,"pt"),
        plot.title = element_text(size = rel(1.3),
                                  hjust = 0.5,
                                  margin = margin(b = 20)),
        plot.subtitle = element_text(hjust = 0.5,
                                     margin = margin(t = -12.5, b = 20)),
        plot.margin = margin(t = 10, r = 10, b = 10, l = 10),
        strip.text = element_text(size = rel(1.1),
                                  margin = margin(t = 8, r = 8, b = 8, l = 8)))

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#'
#' @export
#'
#'
lucify_theme_gray <- function(...){

  theme_gray() +
    lucify_basics(...) +
    theme(strip.background = element_rect(fill = gris_nk_claro),
          strip.text = element_text(colour = gris_nk))

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#' @export
#'
lucify_theme_bw <- function(...){

  theme_bw() +
    lucify_basics(...) +
    theme(strip.text = element_text(colour = gris_nk))

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#' @export
#'
lucify_theme_linedraw <- function(...){

  theme_linedraw() +
    lucify_basics(...) +
    theme(panel.grid = element_line(colour = gris_nk_claro))

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#'
#' @export
#'
lucify_theme_light <- function(...){

  theme_light() +
    lucify_basics(...)

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#'
#' @export
#'
lucify_theme_dark <- function(...){

  theme_dark() +
    lucify_basics(...) +
    theme(strip.background = element_rect(fill = "black"),
          legend.key = element_rect(fill = "white"))

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#'
#' @export
#'
lucify_theme_minimal <- function(...){

  theme_minimal() +
    lucify_basics(...) +
    theme(strip.text = element_text(colour = gris_nk))

}

#' @describeIn lucify_basics
#'
#' @param ... Arguments passed to \code{\link{lucify_basics}}
#'
#' @export
#'
lucify_theme_classic <- function(...){

  theme_classic() +
    lucify_basics(...) +
    theme(axis.text = element_text(colour = gris_nk),
          axis.line = element_line(colour = gris_nk_escala),
          strip.background = element_rect(colour = gris_nk),
          strip.text = element_text(colour = gris_nk))

}

##' @describeIn lucify_basics
#'
#' @param text_family (Default = "Century Gothic") Text font family to use.
#' @param text_size (Default = 17) Text size to use.
#' @param text_color (Default = "#3C3C3C") Text color to use.
#'
#' @export
#'
lucify_theme_void <- function(text_family = "Century Gothic", text_size = 15, text_color = "#3C3C3C"){

  theme_void() +
    theme(text = element_text(family = text_family,
                              colour = text_color,
                              size = text_size),
          legend.margin = margin(t = 15, r = 15, b = 15, l = 15),
          legend.title = element_text(size = rel(1.15)),
          panel.spacing = unit(15,"pt"),
          plot.title = element_text(size = rel(1.3),
                                    hjust = 0.5,
                                    margin = margin(b = 25)),
          plot.subtitle = element_text(hjust = 0.5,
                                       margin = margin(t = -12.5, b = 25)),
          plot.margin = margin(t = 10, r = 10, b = 10, l = 10),
          strip.text = element_text(size = rel(1.1),
                                    margin = margin(t = 8, r = 8, b = 8, l = 8)))

}
