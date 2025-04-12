# Labelling

A set of examples demonstrating best practices when it comes to labelling data for display in a plot or table.

> Keep the data clean. Attach display labels as a finishing step!

In other words, maintain an internal set of variables in your data set that are easy to work with in code ("the data"). Display labels should only be attached/created when needed (_e.g._ while plotting or creating tables).

# Examples

## `{ggplot2}`

This best practice can be accomplished by:

1. using [`{scales}`](https://scales.r-lib.org) and `label` arguments in [scale functions](https://ggplot2.tidyverse.org/articles/ggplot2.html?q=scale#scales) (`scale_{aesthetic}_{type}()`). 

See `ggplot2.R` for examples.

# Development notes

The `{ggplot2}` example was prepared for an [We Are R-Ladies](https://bsky.app/profile/weare.rladies.org) thread as part of my Rotating Curation the week of 7 Apr 2025. 

I used [carbon-now-cli](https://github.com/mixn/carbon-now-cli) to prepare the code images I posted in the thread (in `figs/`).