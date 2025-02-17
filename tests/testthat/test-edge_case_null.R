
# ggbetweenstats/ggwithinstats --------------------------------------------

test_that(
  desc = "ggbetweenstats and ggwithinstats - edge case NULL",
  code = {
    skip_on_cran()

    set.seed(123)
    df <- data.frame(
      x = c(rep(1, 50), rep(2, 40), rep(3, 10)),
      y = rnorm(100),
      g = c(rep("a", 49), rep("b", 51))
    )

    expect_null(ggbetweenstats(
      data = dplyr::filter(df, g == "a"),
      x = x,
      y = y,
      output = "subtitle"
    ))

    expect_null(ggbetweenstats(
      data = dplyr::filter(df, g == "a"),
      x = x,
      y = y,
      output = "caption"
    ))

    expect_null(ggbetweenstats(
      data = dplyr::filter(df, g == "b"),
      x = x,
      y = y,
      output = "subtitle"
    ))

    expect_null(ggwithinstats(
      data = dplyr::filter(df, g == "a"),
      x = x,
      y = y,
      output = "subtitle"
    ))

    expect_null(ggwithinstats(
      data = dplyr::filter(df, g == "a"),
      x = x,
      y = y,
      output = "caption"
    ))

    expect_null(ggwithinstats(
      data = dplyr::filter(df, g == "b"),
      x = x,
      y = y,
      output = "subtitle"
    ))
  }
)

# gghistostats/ggdotplotstats --------------------------------------------

test_that(
  desc = "gghistostats and ggdotplotstats - edge case NULL",
  code = {
    skip_on_cran()

    set.seed(123)
    df <- data.frame(
      x = 1,
      y = "a"
    )

    expect_null(gghistostats(
      data = df,
      x = x,
      output = "subtitle"
    ))

    expect_null(gghistostats(
      data = df,
      x = x,
      output = "caption"
    ))

    expect_null(ggdotplotstats(
      data = df,
      x = x,
      y = y,
      output = "subtitle"
    ))

    expect_null(ggdotplotstats(
      data = df,
      x = x,
      y = y,
      output = "caption"
    ))
  }
)

# ggscatterstats --------------------------------------------

test_that(
  desc = "ggscatterstats - edge case NULL",
  code = {
    skip_on_cran()

    set.seed(123)
    df <- data.frame(x = 2.4, y = 3.4)

    expect_type(ggscatterstats(
      data = df,
      x = x,
      y = y,
      output = "subtitle"
    ), "language")

    expect_type(ggscatterstats(
      data = df,
      x = x,
      y = y,
      output = "caption"
    ), "language")
  }
)

# ggpiestats/ggbarstats ---------------------------------------------------------

test_that(
  desc = "ggpiestats and ggbarstats - edge case NULL",
  code = {
    skip_on_cran()
    set.seed(123)

    # creating a dataframe
    df <- data.frame(x = "one", y = "one")

    # ggpiestats
    expect_null(ggpiestats(
      data = df,
      x = x,
      output = "subtitle"
    ))

    expect_null(ggpiestats(
      data = df,
      x = x,
      output = "caption"
    ))

    expect_null(ggpiestats(
      data = df,
      x = x,
      y = y,
      output = "subtitle"
    ))

    expect_null(ggpiestats(
      data = df,
      x = x,
      y = y,
      output = "caption"
    ))

    # ggbarstats
    expect_null(ggbarstats(
      data = df,
      x = x,
      y = y,
      output = "subtitle"
    ))

    expect_null(ggbarstats(
      data = df,
      x = x,
      y = y,
      output = "caption"
    ))
  }
)
