library(mclust)

# Mixture Model Fitting
model_data <- RFM_scaled %>% select(z_R, z_F, z_M)
set.seed(0) # To initialize the EM 
gmm_fit <- Mclust(model_data, G=2:20)

#Viewing the BIC change
plot(gmm_fit, what = "BIC")#Grab the VEV legend from this
plot(gmm_fit, what = "BIC", legendArgs=list(plot=FALSE))
