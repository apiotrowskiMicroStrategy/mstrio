% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasets.R
\docType{class}
\name{Dataset}
\alias{Dataset}
\title{Create, update, and delete MicroStrategy datasets}
\format{An object of class \code{R6ClassGenerator} of length 25.}
\usage{
Dataset
}
\description{
When creating a new dataset, provide a dataset name and an optional description. 
When updating a pre-existing dataset, provide the dataset identifier. Tables are added to the 
dataset in an iterative manner using `add_table()`.
}
\section{Fields}{

\describe{
\item{\code{connection}}{MicroStrategy connection object}

\item{\code{name}}{Name of the dataset}

\item{\code{description}}{Description of the dataset. Must be less than or equal to 250 characters}

\item{\code{dataset_id}}{Identifier of a pre-existing dataset. Used when updating a pre-existing dataset}

\item{\code{verbose}}{Print API requests to console. Used for debugging}
}}

\examples{
\donttest{
# Create data frames
df1 <- data.frame("id" = c(1, 2, 3, 4, 5),
                  "first_name" = c("Jason", "Molly", "Tina", "Jake", "Amy"),
                  "last_name" = c("Miller", "Jacobson", "Turner", "Milner", "Cooze"))

df2 <- data.frame("id" = c(1, 2, 3, 4, 5),
                  "age" = c(42, 52, 36, 24, 73),
                  "state" = c("VA", "NC", "WY", "CA", "CA"),
                  "salary" = c(50000, 100000, 75000, 85000, 250000))

# Create a list of tables containing one or more tables and their names
my_dataset <- Dataset$new(connection=conn, name="HR Analysis")
my_dataset$add_table("Employees", df1, "add")
my_dataset$add_table("Salaries", df2, "add")
my_dataset$create()

# By default Dataset$create() will upload the data to the Intelligence Server and publish the 
 dataset. 
# If you just want to create the dataset but not upload the row-level data, use 
Dataset$create(auto_upload=FALSE)

# followed by 
Dataset$update()
Dataset$publish()

# When the source data changes and users need the latest data for analysis and reporting in 
# MicroStrategy, mstrio allows you to update the previously created dataset.

ds <- Dataset$new(connection=conn, dataset_id="...")
ds$add_table(name = "Stores", data_frame = stores_df, update_policy = 'update')
ds$add_table(name = "Sales", data_frame = stores_df, update_policy = 'upsert')
ds$update()
ds$publish()

# By default, the raw data is transmitted to the server in increments of 25,000 rows. On very 
# large datasets (>1 GB), it is beneficial to increase the number of rows transmitted to the 
# Intelligence Server with each request. Do this with the chunksize parameter:

ds$update(chunksize = 500000)
}
}
\keyword{datasets}
