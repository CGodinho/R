# Explore Numerical Data

## Introduction

**Numerical Data** are numbers and therefore possible to do basic arithmetic.


## Data Matrix

## Scatterplots and Dotplot

Good for checking associations between variables and the nature of that assocoation.

![scatter plot](explore_numerical_data_1.PNG)

A one variable scatterplot is called a **dotplot**.


![dot plot](explore_numerical_data_2.PNG)

****



Mean

Calculates the centrer of a distribution.




Also known as **Dataframe**.

Follow the [tidy data](https://github.com/CGodinho/R/blob/master/02-Concepts/tidy_data.md) principle with:

* Each **row represents** an **observation** (or case);
* Each **column** represents a **variable** (or characteristic). It is recommended to explicitly describe the variable content and units in an adjacent summary description.


Just testing: $\lambda{}$.



\begin{equation} \begin{bmatrix} x & \dot{x} & \theta & \dot{\theta} & L & m & M \end{bmatrix} \end{equation}

### Without Indices

$\sum x_{i}$

$\sum x_{i}^2$

$\sum x_{i}y_{i}$

#### With Indices - Inline Form

$\sum_{i=1}^n x_{i}$

$\sum_{i=1}^n x_{i}^2$

$\sum_{i=1}^n x_{i}y_{i}$

#### With Indices - Display Form

$$\sum_{i=1}^n x_{i}y_{i}$$

### Independent Samples

$$\mu_{\bar{x_{1}} - \bar{x_{2}}} = \mu_{1} - \mu_{2}$$

$$\sigma_{\bar{x_{1}} - \bar{x_{2}}}^2 = \frac {\sigma_{1}^2}{n_{1}} + \frac{\sigma_{2}^2}{n_{2}}$$

$$\mu_{\hat{p}_{1} - \hat{p}_{2}} = p_{1} - p_{2}$$

$$\sigma_{\hat{p}_{1} - \hat{p}_{2}}^2 = \frac {p_{1}(1 - p_{1})}{n_{1}} + \frac {p_{2}(1 - p_{2})}{n_{2}}$$


### Pooled Sample Variance

$$s_{p}^2 = \frac {(n_{1} - 1)s_{1}^2 + (n_{2} - 1)s_{2}^2}{n_{1} + n_{2} - 2}$$

### Pooled Sample Proportion

$$\hat{p} = \frac {n_{1}\hat{p}_1 + n_{2}\hat{p}_{2}}{n_{1} + n_{2}}$$

### Chi-Square Test

$$\chi^2 = \sum \frac {(O - E)^2}{E}$$


### Correlations

$${SS}_{xx} = \sum (x - \bar{x})^2 = \sum x^2 - \frac {(\sum x)^2}{n}$$

$${SS}_{xy} = \sum (x - \bar{x})(y - \bar{y}) = \sum xy - \frac {(\sum x)(\sum y)}{n}$$

$$r = \frac {{SS}_{xy}}{\sqrt {{SS}_{xx}{SS}_{yy}}}$$