# Financial Network and Regularized Modeling

## Overview

This repository contains an academic data analysis project applying network analysis and machine learning methods to financial and mortgage lending data.

The project explores two major areas:

1. Financial network analysis examining influence, centrality, brokerage, and community structure within weighted and unweighted financial networks.

2. Mortgage lending analysis comparing traditional statistical modeling with machine learning approaches to identify important predictors of mortgage approval outcomes.

This project was completed using R and demonstrates applications of network science, regression modeling, regularization methods, feature selection, and statistical interpretation.

---

# Part 1: Financial Network Analysis

## Objective

The first analysis examines whether the strength of relationships between companies affects network influence.

Two versions of a financial trade network were analyzed:

- Weighted network: considers the strength of trade relationships
- Unweighted network: considers only whether relationships exist

## Methods Used

Network properties analyzed:

- Degree centrality
- Betweenness centrality
- Closeness centrality
- Eigenvector centrality
- Brokerage potential
- Network constraint
- Network density
- Average path length
- Transitivity
- Walktrap community detection
- Modularity analysis

## Questions Explored

- Which companies are most influential within the network?
- Does including tie strength change measures of importance?
- Are meaningful communities present within the financial network?

---

# Part 2: Mortgage Lending Modeling

## Objective

The second analysis investigates factors associated with mortgage approval decisions using the Boston HMDA mortgage dataset.

The goal was to compare traditional statistical modeling with regularized machine learning approaches.

## Dataset

The Boston HMDA dataset contains 2,357 mortgage applications from the greater Boston metropolitan area collected in 1990.

Variables included:

- Applicant characteristics
- Credit history measures
- Financial characteristics
- Housing information
- Mortgage approval outcome

---

## Models Used

### Logistic Regression

A logistic regression model was estimated to examine relationships between applicant characteristics and mortgage approval outcomes.

---

### Regularized Machine Learning Models

Three cross-validated machine learning models were estimated:

- Ridge Regression
- LASSO Regression
- Elastic Net Regression

These models were used to:

- Reduce model complexity
- Identify important predictors
- Address multicollinearity
- Compare variable selection approaches

---

# Bonus Analysis: BMI Modeling

A bonus analysis applied similar regression methods to predict BMI using:

- Multiple linear regression
- Ridge regression
- LASSO regression
- Elastic Net regression

---

# Technologies Used

- R
- igraph
- glmnet
- tidyverse
- Network Analysis
- Statistical Modeling
- Machine Learning
- Regularization Methods
- Data Visualization

---

# Repository Structure


- network-analysis-and-regularized-modeling.R
- README.md

---

## Skills Demonstrated

- Statistical modeling
- Regression analysis
- Feature selection
- Regularization techniques
- Network data analysis
- Exploratory data analysis
- Model interpretation
- R programming
