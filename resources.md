# Data Science Learning Resources

A curated library of learning resources for a mid-career transition into data science. This collection emphasizes foundations first, then practical workflows in R and Python for data munging, ETL, statistical inference, modeling, communication, and reproducible publishing.

## How to use this guide

- Start with **foundations**: probability, statistics, modeling, and computational thinking.
- Build fluency in one primary language first (**R** or **Python**), then learn the other.
- Practice on **small, well-understood datasets** before moving to larger and messier data.
- Learn the full workflow: ingest, clean, explore, model, communicate, and reproduce.
- Publish your work regularly with notebooks, reports, dashboards, and version control.

## Learning path

1. **Statistical foundations**: uncertainty, variation, estimation, testing, regression.
2. **Programming foundations**: data structures, functions, iteration, debugging, packages.
3. **Data wrangling**: tabular data, joins, reshaping, missingness, dates, strings.
4. **Visualization and communication**: exploratory graphics, explanatory graphics, reports.
5. **Modeling**: linear models, classification, resampling, regularization, evaluation.
6. **Data engineering basics**: ETL/ELT, SQL, validation, pipelines, containers, environments.
7. **Publishing and reproducibility**: Quarto, package/project management, containers, CI.

## Core foundations: statistics, modeling, and data science

### Classic statistics and modeling texts

- **Freedman, Pisani, Purves** — *Statistics*
  - Clear conceptual treatment of statistical reasoning.
  - Strong for sampling, bias, uncertainty, and interpretation.

- **George Casella, Roger L. Berger** — *Statistical Inference*
  - Standard mathematical treatment of inference.
  - Best as a second-stage text if you want formal foundations.

- **Trevor Hastie, Robert Tibshirani, Jerome Friedman** — *The Elements of Statistical Learning*
  - Classic reference for statistical learning and modern predictive modeling.
  - Free PDF available online.
  - https://hastie.su.domains/ElemStatLearn/

- **Gareth James, Daniela Witten, Trevor Hastie, Robert Tibshirani, Jonathan Taylor** — *An Introduction to Statistical Learning*
  - More accessible companion to ESL.
  - Available for R and Python readers.
  - https://www.statlearning.com/

- **David Freedman** — *Statistical Models: Theory and Practice*
  - Excellent for understanding what models mean and when assumptions fail.

- **Richard McElreath** — *Statistical Rethinking*
  - Strong modern approach to probabilistic modeling and causal reasoning.
  - Especially useful once you know basic regression.
  - https://xcelab.net/rm/statistical-rethinking/

- **Gelman, Hill, Vehtari** — *Regression and Other Stories*
  - Practical, modern treatment of regression and applied inference.
  - Excellent bridge from intro statistics to serious modeling.
  - https://avehtari.github.io/ROS-Examples/

- **Douglas C. Montgomery, Elizabeth A. Peck, G. Geoffrey Vining** — *Introduction to Linear Regression Analysis*
  - Strong traditional text on regression diagnostics and interpretation.

### Foundations of data science and computing

- **John Tukey** — *Exploratory Data Analysis*
  - Foundational text for thinking with data before formal modeling.

- **Cathy O'Neil, Rachel Schutt** — *Doing Data Science*
  - Broad applied introduction spanning modeling, ethics, and communication.

- **Jake VanderPlas** — *Python Data Science Handbook*
  - Practical reference for NumPy, pandas, visualization, and machine learning.
  - https://jakevdp.github.io/PythonDataScienceHandbook/

- **Wes McKinney** — *Python for Data Analysis*
  - Core pandas-oriented text for analysis and wrangling workflows.

- **Rafael A. Irizarry** — *Introduction to Data Science*
  - Open online text using R, with good coverage of probability, inference, wrangling, and productivity.
  - https://rafalab.dfci.harvard.edu/dsbook/

- **Roger D. Peng, Elizabeth Matsui** — *The Art of Data Science*
  - Short workflow-oriented book about the practice of doing data science.
  - https://bookdown.org/rdpeng/artofdatascience/

## R track

### Get started with R

- **Jared P. Lander** — *R for Everyone*
  - Practical introduction to R for analysts coming from spreadsheets or other tools.
  - Good first book for syntax, data structures, and plotting.

- **Hadley Wickham, Mine Çetinkaya-Rundel, Garrett Grolemund** — *R for Data Science (2e)*
  - Canonical modern introduction to data science with R.
  - Covers visualization, transformation, import, programming, communication, and workflows.
  - https://r4ds.hadley.nz/

- **Norman Matloff** — *The Art of R Programming*
  - Useful for strengthening base R fundamentals.

### Intermediate and advanced R

- **Hadley Wickham** — *Advanced R*
  - Best resource for understanding functions, environments, OO systems, and metaprogramming.
  - https://adv-r.hadley.nz/

- **Hadley Wickham, Jennifer Bryan** — *R Packages (2e)*
  - Standard reference for creating robust R packages.
  - https://r-pkgs.org/

- **Jenny Bryan, Jim Hester and collaborators** — *What They Forgot to Teach You About R*
  - Great practical guide to file organization, projects, and day-to-day work.
  - https://rstats.wtf/

- **Roger D. Peng** — *R Programming for Data Science*
  - Good supplementary resource for programming patterns in R.
  - https://bookdown.org/rdpeng/rprogdatascience/

### R data manipulation and modeling

- **tidyverse**
  - Core collection for wrangling, import, strings, dates, factors, and visualization.
  - Start here for modern R workflows.
  - https://www.tidyverse.org/

- **data.table**
  - High-performance framework for fast tabular data manipulation in R.
  - Especially valuable for large datasets and concise grouped operations.
  - https://github.com/Rdatatable/data.table

- **tidymodels**
  - Unified framework for preprocessing, modeling, tuning, and evaluation in R.
  - https://www.tidymodels.org/

- **ggplot2: Elegant Graphics for Data Analysis**
  - Core text for layered graphics and principled visualization in R.
  - https://ggplot2-book.org/

## Python track

### Get started with Python for data science

- **Python Data Science Handbook** — Jake VanderPlas
  - Good first practical guide to scientific Python.
  - https://jakevdp.github.io/PythonDataScienceHandbook/

- **Python for Data Analysis** — Wes McKinney
  - Best entry point to pandas-centered analysis.

- **Think Python** — Allen B. Downey
  - Strong programming foundations if Python is new.
  - https://allendowney.github.io/ThinkPython/

### Core Python tools

- **pandas**
  - Primary library for tabular data manipulation in Python.
  - https://pandas.pydata.org/

- **polars**
  - Fast DataFrame library worth learning after pandas for performance-oriented workflows.
  - https://pola.rs/

- **pydantic**
  - Useful for schema validation, typed data models, and ETL/data pipeline reliability.
  - https://docs.pydantic.dev/

- **scikit-learn**
  - Standard toolkit for classical machine learning in Python.
  - https://scikit-learn.org/

- **statsmodels**
  - Best Python package for regression, inference, and traditional statistics.
  - https://www.statsmodels.org/

- **SciPy / NumPy**
  - Core scientific computing foundations.
  - https://numpy.org/
  - https://scipy.org/

## Data wrangling, ETL, and SQL

### Concepts to learn

- Tidy data and rectangular data
- Joins, keys, and relational thinking
- Reshaping between wide and long formats
- Missing data handling
- Text, dates, and categorical data
- Validation and schema checking
- ETL vs ELT
- Batch vs incremental pipelines
- Data lineage and reproducibility

### Recommended resources

- **Tidy data** — Hadley Wickham
  - Foundational paper for data wrangling concepts.
  - https://vita.had.co.nz/papers/tidy-data.pdf

- **SQLBolt**
  - Beginner-friendly SQL exercises.
  - https://sqlbolt.com/

- **Mode SQL Tutorial**
  - Practical SQL with analytics framing.
  - https://mode.com/sql-tutorial/

- **BigQuery documentation and tutorials**
  - Essential if you expect to work with cloud-scale analytics.
  - https://cloud.google.com/bigquery/docs

- **dbplyr**
  - Use dplyr grammar on SQL backends from R.
  - https://dbplyr.tidyverse.org/

- **DuckDB**
  - Excellent local analytics database for learning modern analytical SQL.
  - https://duckdb.org/

## Inference, experimentation, and causal thinking

- **OpenIntro Statistics**
  - Accessible free intro text with good core coverage.
  - https://www.openintro.org/book/os/

- **Think Stats** — Allen B. Downey
  - Practical computational introduction to probability and inference.
  - https://greenteapress.com/wp/think-stats-2e/

- **Regression and Other Stories**
  - Applied regression and inference with strong real-world interpretation.

- **Causal Inference: The Mixtape** — Scott Cunningham
  - Practical introduction to causal inference methods and designs.
  - https://mixtape.scunning.com/

- **Mastering 'Metrics** — Angrist and Pischke
  - Highly readable introduction to causal identification strategies.

## Modeling and machine learning

### Core topics

- Linear regression and generalized linear models
- Classification
- Feature engineering
- Cross-validation and resampling
- Regularization
- Tree-based methods
- Model interpretation
- Calibration and evaluation

### Recommended resources

- **An Introduction to Statistical Learning**
  - First stop for supervised learning foundations.

- **The Elements of Statistical Learning**
  - Deeper theory and reference.

- **tidymodels**
  - R-first modeling workflow.

- **scikit-learn user guide**
  - Practical Python modeling guide.
  - https://scikit-learn.org/stable/user_guide.html

- **Interpretable Machine Learning** — Christoph Molnar
  - Practical guide to feature importance, SHAP, PDPs, and interpretation caveats.
  - https://christophm.github.io/interpretable-ml-book/

## Visualization, dashboards, and storytelling

### Core resources

- **ggplot2 book**
  - Foundational resource for R visualization.

- **Fundamentals of Data Visualization** — Claus O. Wilke
  - Clear guide to visual perception and effective chart design.
  - https://clauswilke.com/dataviz/

- **Storytelling with Data** — Cole Nussbaumer Knaflic
  - Practical communication and presentation guidance.

- **Observable** / **Observable Framework**
  - Strong toolchain for interactive data visualization in JavaScript.
  - https://observablehq.com/

- **Observable Plot**
  - Accessible grammar of graphics for the web.
  - https://observablehq.com/plot/

### BI tools

- **Power BI learning**
  - Common in business settings for reporting and dashboards.
  - https://learn.microsoft.com/power-bi/

- **Tableau learning resources**
  - Widely used self-service analytics and dashboarding platform.
  - https://www.tableau.com/learn

## Publishing and communication

- **Quarto**
  - Best general-purpose system for reproducible reports, notebooks, dashboards, websites, and books across R and Python.
  - https://quarto.org/

- **R Markdown: The Definitive Guide**
  - Useful background for literate programming concepts in the R ecosystem.
  - https://bookdown.org/yihui/rmarkdown/

- **Quarto documentation**
  - https://quarto.org/docs/guide/

- **Jupyter Book**
  - Useful for Python-heavy educational publishing.
  - https://jupyterbook.org/

## Reproducibility and project environments

### Essential habits

- Use Git and GitHub for all projects.
- Keep projects self-contained.
- Pin package environments.
- Separate raw, intermediate, and derived data.
- Record assumptions in code and prose.
- Prefer scripted pipelines over manual clicks.

### Tools

- **renv**
  - Standard R dependency management for project-local libraries.
  - https://rstudio.github.io/renv/

- **pyenv**
  - Python version management across projects.
  - https://github.com/pyenv/pyenv

- **virtualenv / venv / uv / poetry**
  - Common Python environment and packaging tools.
  - https://docs.python.org/3/library/venv.html
  - https://docs.astral.sh/uv/
  - https://python-poetry.org/

- **Docker**
  - Useful for portable, reproducible execution environments and deployment.
  - https://www.docker.com/

- **Make / Just / task runners**
  - Helpful for codifying analysis steps into repeatable commands.

## Common datasets for learning

### Small canonical datasets

- **iris**
  - Basic classification, visualization, and wrangling.

- **mtcars**
  - Intro regression, visualization, and grouped summaries.

- **palmerpenguins**
  - Modern replacement for iris in many examples; clean but realistic.
  - https://allisonhorst.github.io/palmerpenguins/

- **ToothGrowth**, **PlantGrowth**, **airquality**
  - Useful for intro inference and regression in R.

### Richer tabular datasets

- **nycflights13 / nycflight13 / nycflight14-style airline data**
  - Great for joins, delays, grouped summaries, time variables, and relational thinking.
  - https://nycflights13.tidyverse.org/

- **tidytuesday datasets**
  - Ongoing collection of real-world datasets for practice.
  - https://www.tidytuesday.com/

- **UCI Machine Learning Repository**
  - Broad collection of benchmark datasets.
  - https://archive.ics.uci.edu/

- **TidyTuesday / Kaggle / FiveThirtyEight data**
  - Useful once you are ready for messier real-world problems.
  - https://github.com/rfordatascience/tidytuesday
  - https://www.kaggle.com/datasets
  - https://github.com/fivethirtyeight/data

- **Google BigQuery public datasets**
  - Useful for SQL and cloud analytics practice.
  - https://cloud.google.com/bigquery/public-data

## Suggested study projects

- Reproduce a figure from a published report using R and then Python.
- Clean and analyze a flights dataset with joins, delays, and route summaries.
- Build a small ETL pipeline with validation using pandas or pydantic.
- Fit and compare linear, logistic, and tree-based models on a public dataset.
- Publish findings as a Quarto report and a short slide deck.
- Rebuild the same analysis with reproducible environments using `renv`, `pyenv`, and Docker.
- Create one dashboard in Tableau or Power BI and one interactive web graphic in Observable.

## A practical sequence for a mid-career transition

### Phase 1: foundations and one language

- Read: *R for Everyone* or *Python for Data Analysis*
- Read alongside: *OpenIntro Statistics* or *Think Stats*
- Practice on: `iris`, `palmerpenguins`, `mtcars`
- Deliverable: one clean analysis notebook/report per week

### Phase 2: wrangling, visualization, and SQL

- Learn: tidyverse or pandas deeply
- Add: SQL, joins, reshaping, validation
- Practice on: flights and TidyTuesday data
- Deliverable: one ETL + EDA project and one dashboard

### Phase 3: inference and modeling

- Read: *Introduction to Statistical Learning*, *Regression and Other Stories*
- Learn: resampling, model evaluation, interpretation
- Deliverable: one predictive modeling project with clear evaluation

### Phase 4: publishing and reproducibility

- Learn: Quarto, GitHub, `renv`, `pyenv`, Docker
- Deliverable: a public portfolio with reproducible projects

## Minimal starter stack recommendations

### R-focused

- R
- tidyverse
- data.table
- tidymodels
- Quarto
- renv
- DuckDB

### Python-focused

- Python
- pandas
- pydantic
- scikit-learn
- statsmodels
- Quarto or Jupyter
- pyenv + venv/uv
- DuckDB

### Cross-tool literacy

- SQL
- Git + GitHub
- BigQuery
- Tableau or Power BI
- ObservableJS
- Docker

## Resource selection principles

- Prefer resources that teach concepts and workflow, not just syntax.
- Alternate reading with project-based practice.
- Revisit the same dataset using multiple tools and methods.
- Keep a portfolio of small, finished, reproducible analyses.
- Learn enough theory to avoid modeling without understanding.

## Link index

- R for Data Science: https://r4ds.hadley.nz/
- data.table: https://github.com/Rdatatable/data.table
- tidyverse: https://www.tidyverse.org/
- pandas: https://pandas.pydata.org/
- pydantic: https://docs.pydantic.dev/
- Quarto: https://quarto.org/
- BigQuery docs: https://cloud.google.com/bigquery/docs
- Power BI learning: https://learn.microsoft.com/power-bi/
- Tableau learning: https://www.tableau.com/learn
- Observable: https://observablehq.com/
- renv: https://rstudio.github.io/renv/
- pyenv: https://github.com/pyenv/pyenv
- Docker: https://www.docker.com/
- palmerpenguins: https://allisonhorst.github.io/palmerpenguins/
- nycflights13: https://nycflights13.tidyverse.org/
- DuckDB: https://duckdb.org/

## Notes

This document is intentionally broad. A good next step is to tailor it into a 12-week or 6-month curriculum with weekly readings, exercises, and portfolio milestones aligned to your background and target roles (analyst, data scientist, analytics engineer, research scientist, or BI developer).
