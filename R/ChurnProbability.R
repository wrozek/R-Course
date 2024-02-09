get_churn_probability <- function(dataset, customer_id) {
  # Filter the dataset for the specified customer ID
  customer <- dataset[CustomerId == customer_id]

  # Check if the customer exists in the dataset
  if (!customer_id %in% dataset$CustomerId) {
    stop("Customer ID not found in the dataset.")
  }

  # Extract the churn probability for the customer
  churn_probability <- customer$churn_probability

  # Return the churn probability
  return(churn_probability)
}
