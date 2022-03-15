defmodule BirdCount do
  def today([]), do: nil
  def today([today | _ ]), do: today

  def increment_day_count([today | tail]), do: [today + 1 | tail]
  def increment_day_count([]), do: [1]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _rest]), do: true
  def has_day_without_birds?([_today | rest]), do: has_day_without_birds?(rest)

  def total([]), do: 0
  def total([count | rest]), do: count + total(rest)

  def busy_days([]), do: 0
  def busy_days([today | rest]) when today >= 5, do: 1 + busy_days(rest)
  def busy_days([_ | rest]), do: busy_days(rest)
end
