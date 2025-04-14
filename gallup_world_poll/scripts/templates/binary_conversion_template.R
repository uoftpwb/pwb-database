### Convert Binary Response Variables

For questions that have binary responses, such as yes/no questions, the responses were initially coded as 1 for 'Yes' and 2 for 'No'. However, for regression analysis, it is more common and interpretable to code binary variables as 0 and 1. Therefore, we converted the responses for binary questions from 1 and 2 to 1 and 0, respectively.

```{r converting-binaryQ}
# Convert "2" to "0"
gallup <- gallup %>%
  mutate(
    {{BINARY_CONVERSION_LIST}}
  )
```