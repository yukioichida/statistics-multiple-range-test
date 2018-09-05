chocolate = data.frame(
  Sabor =
    c(7, 9, 5,
      6, 5, 7,
      7, 6, 7,
      7, 8, 2,
      9, 7, 3,
      4, 9, 2,
      6, 6, 4,
      5, 7, 4,
      6, 5, 5,
      7, 9, 2,
      4, 5, 3,
      5, 7, 4,
      9, 6, 4,
      7, 5, 4,
      8, 6, 3
    ),
  Tipo = factor(rep(c("A", "B", "C"), 15)),
  Provador = factor(rep(1:15, rep(3, 15))))
write.csv(chocolate, file="chocolate_data.csv",row.names=FALSE)

chocolate_df = read.csv("chocolate_data.csv")


ajuste = lm(data = chocolate_df, Sabor ~ .)
summary(ajuste)
anova(ajuste)
library(agricolae)
duncan.test(ajuste, "Tipo", console = T)
