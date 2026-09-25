#Raw data processing -> light version

path <- 'Data/GSM5097888/'
matrix <- read.delim(file = paste0(path, "matrix.mtx"), header = FALSE)
genes <- read.delim(file = paste0(path, "genes.tsv"), header = FALSE)
barcodes <- read.delim(file = paste0(path, "barcodes.tsv"), header = FALSE)


b1 <- as.data.frame(barcodes[1:700,])
write.table(b1, file = "Data/GSM5097888_light/barcodes.tsv", col.names = FALSE, row.names = FALSE, quote=FALSE)

m1 <- as.data.frame(matrix[1:1984415,])
write.table(m1, file = "Data/GSM5097888_light/matrix.mtx", col.names = FALSE, row.names = FALSE, quote=FALSE)

