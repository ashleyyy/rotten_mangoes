module MoviesHelper
  def formatted_date(date)
    date.strftime("%B %e, %Y")
  end
end
