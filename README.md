# bioinformatics_blosum_tree

# https://bioconductor.org/packages/devel/bioc/manuals/Biostrings/man/Biostrings.pdf

```{r echo=FALSE, setsize}
pattern <- c("TSPASIRPPAGPSSRPAMVSSRRTRPSPPGPRRPTGRPCCSAAPRRPQAT",
"GGWKTCSGTCTTSTSTRHRGRSGWSARTTTAACLRASRKSMRAACSRSAG",
"SRPNRFAPTLMSSCITSTTGPPAWAGDRSHE")
subject <- c("TSPASIRPPAGPSSRRPSPPGPRRPTGRPCCSAAPRRPQATGGWKTCSGT",
"CTTSTSTRHRGRSGWRASRKSMRAACSRSAGSRPNRFAPTLMSSCITSTT",
"GPPAWAGDRSHE")
pattern <- unlist(AAStringSet(pattern))
subject <- unlist(AAStringSet(subject))
pattern # original pattern
subject # original subject
data(BLOSUM62)
pa5 <- pairwiseAlignment(pattern, subject,
substitutionMatrix=BLOSUM62,
gapOpening=9.5, gapExtension=0.5)
pa5
```
