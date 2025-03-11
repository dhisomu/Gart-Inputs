if(!require('fma')) {
  install.packages('fma')
  library('fma')
}
plot(plastics)
seasonplot(plastics)
plot(stl(plastics,"periodic"))

summary(plastics)
plastics
fma::sales
