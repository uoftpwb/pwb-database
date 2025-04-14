### Clean 'Don't Know' and 'Refused' Responses

Gallup coded some responses as 'Don't Know' or 'Refused', which would not be meaningful for our analysis. We converted these responses to NA using the values found in the [WORLD POLL REFERENCE TOOL](https://wpr.gallup.com/).

```{r converting-responses-to-NA}
# Convert certain values to NA
gallup <- gallup %>%
  mutate(
    {{NA_CONVERSION_LIST}}
  )
```