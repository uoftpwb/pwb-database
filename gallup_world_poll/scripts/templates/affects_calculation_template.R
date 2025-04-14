## 2. Determining Positive and Negative Affects

The 'Positive Affect' ('PosAffect') was calculated by taking the average of the responses to 'WP63' (SMILE) and 'WP67' (ENJOY). The 'Negative Affect' ('NegAffect') was calculated by taking the average of the responses to 'WP69' (WORRY), 'WP70' (SAD), 'WP71' (STRESS), and 'WP74' (ANGER). A higher score in either affect indicates that the participant experienced a higher intensity of that affect the previous day.

```{r calculating-affects}
# Compute the positive and negative affects
# Compute the mean values of the items, even if some, but not all, are NA.
gallup$PosAffect <-
  gallup %>% select(WP63, WP67) %>% rowMeans(na.rm = TRUE)
gallup$NegAffect <-
  gallup %>% select(WP69, WP70, WP71, WP74) %>% rowMeans(na.rm = TRUE)
```