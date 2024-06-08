#prak 12 elkom 1
df_zahwa = read.delim("clipboard")
head(df_zahwa)

model_reg = lm(df_zahwa$y~df_zahwa$x)
summary(model_reg)

#prak 12 elkom 2
df_zahwa = read.delim("clipboard")
df_zahwa$brick_dummy <- ifelse(df_zahwa$Brick == "Yes", 1,0)
df_zahwa$N_dummy1 <- ifelse(df_zahwa$Neighborhood == "West", 1,0)
df_zahwa$N_dummy2 <- ifelse(df_zahwa$Neighborhood == "North", 1,0)
model = lm(df_zahwa$Price~df_zahwa$SqFt+df_zahwa$Bedrooms+df_zahwa$Bathrooms+df_zahwa$brick_dummy+df_zahwa$N_dummy1+df_zahwa$N_dummy2)
summary(model)

by(df_zahwa$Price, df_zahwa$Neighborhood, mean)
by(df_zahwa$Price, df_zahwa$Brick, mean)


