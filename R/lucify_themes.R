
#' Lucified ggplot2 themes
#'
#' These functions "lucify" a core ggplot2 theme.
#' The basics of lucified themes are Century Gothic fonts, bigger sizes of text elements and margins,
#' as well as slightly different colors and centered title and subtitles.
#'
#' @param text_family (Default = "Century Gothic") Text font family to use.
#' @param text_size (Default = 17) Text size to use.
#' @param text_color (Default = "#3C3C3C") Text color to use.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(tidyverse)
#' UKDriverDeaths_tibble <- UKDriverDeaths %>%
#'   matrix(nrow=16, ncol=12, byrow = TRUE,
#'          dimnames = list(1969:1984,month.abb)) %>%
#'   as.data.frame() %>%
#'   rownames_to_column("Month")
#'
#' ggplot(data = ULDriverDeaths_tibble, aes(x=Month,y=Jan)) +
#'   geom_col(fill = "steelblue4", width = 0.1) +
#'   geom_point(color = "steelblue4", size = rel(10)) +
#'   theme_minimal() +
#'   lucify_basics()
#'}
#'
lucify_basics <- function(text_family = "Century Gothic", text_size = 17, text_color = "#3C3C3C"){

  theme(line = element_line(colour = "#666666"),
        rect = element_rect(colour = "#C6C6C6"),
        text = element_text(family = font_family,
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
        axis.text.x = element_text(margin = margin(t = 8)),
        axis.text.x.top = element_text(margin = margin(b = 8)),
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
