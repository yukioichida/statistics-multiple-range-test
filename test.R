student_df = read.csv("student_data.csv")


ajuste = lm(data = chocolate_df, Sabor ~ .)
summary(ajuste)
anova(ajuste)
library(agricolae)
duncan.test(ajuste, "Tipo", console = T)
