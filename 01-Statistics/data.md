# Data

## Introduction

**Data** are observations collected from the field notes, surveys, and experiments which describe phenomena.

**Statistics** is the study of how best to collect, analyze, and draw conclusions from data.
  
Statistics follow the general process of investigation:
1. Identify a question or problem.
2. Collect relevant data on the topic.
3. Analyze the data.
4. Form a conclusion.

**Summary statistic** is a value computed from the data.


## Data Matrix

Also known as **Dataframe**.

Follow the [tidy data](https://github.com/CGodinho/R/blob/master/02-Concepts/tidy_data.md) principle with:

* Each **row represents** an **observation** (or case);
* Each **column** represents a **variable**. It is recommended to explicitly describe the variable content in an adjacent summary description to data.


## Variables

![Type of variables](data_1.PNG)

When two variables show some connection with one another, they are called **associated** variables (or dependent variables).

If 2 variables are not associated, they are **independent**.


## Population and Sample

A **sample** is a subset of a **population**. For practical reason, usually is a small fraction.


## Anecdotal Evidence

Evidence from a small set of population may not be representative and lead to incorrect conclusions.
Examine a sample of many cases to have a better population representation.

**Random** selection is a good choice to avoid **bias**.

Another bias factors are related to **non-response** and **convenience sample**.


## Exploratory and Response Variables

An **exploratory variable** might affect a **response variable**.

But be careful because **association does not imply causation** and causation can only be inferred from a randomized experiment.


## Observation Study

Data is collected in a way that does not directly interfere with how the data arise.


##  Experiments

To investigate the possibility of a causal connection, an experiment is conducted . Usually there will be both an explanatory and a response variable under test.