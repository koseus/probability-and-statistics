if(!requireNamespace("VennDiagram", quietly = TRUE)) {
  install.packages("VennDiagram")
}

library(VennDiagram)
grid.newpage()

draw.triple.venn(
  area1 = 1, area2 = 1, area3 = 1,  # dummy equal sizes
  n12 = 0.3, n23 = 0.3, n13 = 0.3, n123 = 0.1,
  category = c("F: Four door", "S: Sun roof", "P: Power steering"),
  fill = c("skyblue", "lightgreen", "pink"),
  alpha = 0.5
)
