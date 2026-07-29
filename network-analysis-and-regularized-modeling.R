#Assignment 6


#1


top_dog_FN <- data.frame(
  degree = degree(NETA_W),
  betweenness = betweenness(NETA_W),
  closeness = closeness(NETA_W),
  eigenvector = eigen_centrality(NETA_W)$vector
)

V(NETA_W)$name[apply(top_dog_FN, 2, which.max)]


top_dog_FN <- data.frame(
  degree = degree(NETA_UW),
  betweenness = betweenness(NETA_UW),
  closeness = closeness(NETA_UW),
  eigenvector = eigen_centrality(NETA_UW)$vector)

V(NETA_UW)$name[apply(top_dog_FN, 2, which.max)]

con_FN <- constraint(NETA_W)
broker_FN <- 1.125 - con_FN 
broker_FN 

con_FN <- constraint(NETA_UW)
broker_FN <- 1.125 - con_FN 
broker_FN 



#2.


edge_density(NETA_UW)
edge_density(NETA_W)


mean_distance(NETA_UW)
mean_distance(NETA_W)


transitivity(NETA_UW)
transitivity(NETA_W)


#3. 

Tcw <- cluster_walktrap(NETA_UW)
Tcw
plot(Tcw, NETA_UW)
modularity(Tcw)


Tcw <- cluster_walktrap(NETA_W)
Tcw
plot(Tcw, NETA_W)
modularity(Tcw)


#PART B.


B_1 <- glm(approve ~ race+married+selfe+mcs+ccs+bad+ETI+DTI+lthR+FamilyH+DMI+netw+uria+school, 
           data = Boston_mtg, family = binomial(link='logit'))


tidy(B_1)
summary(B_1)

modelname <- glm(dvar ~ ivar1+ivar2+ivar3+ivar4.... , data = dataset, family = binomial(link='logit'))


# B.2

set.seed(42)

Boston_mtg <- as.data.frame(Boston_mtg)

              
x <- Boston_mtg[, 2:15]

y <- Boston_mtg[, 16]

x <- scale(x)

y <- as.matrix.data.frame(y)

cv_ridge = cv.glmnet(x, y, deviance = 'mse', alpha = 0, binomial = "gaussian")
coef(cv_ridge)


#B.3


cv_lasso = cv.glmnet(x, y, deviance = 'mse', alpha = 1, binomial = "gaussian")
coef(cv_lasso)


#B.4


cv_elastic = cv.glmnet(x, y, deviance = 'mse', alpha = 0.5, binomial = "gaussian")
coef(cv_elastic) 


#B.5


#rest on word document


#BONUS

BONUS1 <- lm(bmi ~ id+age+daysL+vig+mod+stren+exercise+female+hispanic+white, 
           data = BMI)

summary(BONUS1)



# Bonus 2

set.seed(42)

BMI <- as.data.frame(BMI)


x <- BMI[, 2:10]

y <- BMI[, 11]

x <- scale(x)

y <- as.matrix.data.frame(y)

cv_ridge = cv.glmnet(x, y, deviance = 'mse', alpha = 0, binomial = "gaussian")
coef(cv_ridge)



cv_lasso = cv.glmnet(x, y, deviance = 'mse', alpha = 1, binomial = "gaussian")
coef(cv_lasso)



cv_elastic = cv.glmnet(x, y, deviance = 'mse', alpha = 0.5, binomial = "gaussian")
coef(cv_elastic) 








