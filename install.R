# A function to avoid installing packages if already present.
install_packages <- function (package_names)
{
  for (package_name in package_names) {
    if (!require(package_name,character.only=TRUE)) {
      do.call("install.packages",list(package_name,ask=FALSE))
    }
    library(package_name,character.only=TRUE)
  }
}

# These packages are needed for R markdown documents within the R Studio environment.
install_packages(c("markdown","rmarkdown","tinytex"))

# These packages are needed for directly support the R commands.
install.packages("rlang") # ensure this is the most up-to-date version for dplyr
library(rlang)
install_packages(c("rlang","BiocManager","ggplot2","ggrepel","rlang","dplyr"))

# Install and load the following Bioconductor-based packages.
BiocManager::install(c("limma","pheatmap","ExpressionAtlas"),ask=FALSE)

library(limma)
library(pheatmap)
library(ExpressionAtlas)
