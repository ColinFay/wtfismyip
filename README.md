<!-- README.md is generated from README.Rmd. Please edit that file -->
wtfismyip
=========

A simple, dependency free wrapper around [wtfismyip](https://wtfismyip.com/).

How to
------

Just :

``` r
wtfismyip::wtfismyip()
```

Get verbose
-----------

If you want the function to get verbose :

``` r
wtfismyip::wtfismyip(verbose = TRUE)
```

Returns you a dataframe with :

-   IP Address
-   Location
-   Hostname
-   ISP
-   TorExit
-   Country code

Get polite
----------

If you don't want to know what is YourFuckingIPAddress but simply what is your IPAddress, pass the `polite = TRUE` argument :

``` r
wtfismyip::wtfismyip(verbose = TRUE, polite = TRUE)
```

### Contact

Questions and feedbacks [welcome](mailto:contact@colinfay.me)!

You want to contribute ? Open a [PR](https://github.com/ColinFay/wtfismyip/pulls) :) If you encounter a bug or want to suggest an enhancement, please [open an issue](https://github.com/ColinFay/wtfismyip/issues).
