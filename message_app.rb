require "sinatra"     # Load the Sinatra web framework

get("/") do
  html = ""

  html.concat("<h1>Message of The Day</h1>")
  html.concat("<ul>")
  html.concat("<li><a href='/message'>See today's message.</a></li>")
  html.concat("<li><a href='/random_quote'>See a random quote.</a></li>")
  html.concat("</ul>")

  body(html)
end

get("/message") do
  html = ""
  html.concat("<h1>Today's Message</h1>")

  # See http://www.ruby-doc.org/core-2.1.5/IO.html#method-c-read
  todays_message = File.read("message-of-the-day.txt")

  html.concat("<blockquote><p>#{todays_message}</p></blockquote>")
  html.concat("<p><a href='/'>Back to the homepage</a></p>")

  body(html)
end

get("/random_quote") do
  # See http://www.ruby-doc.org/core-2.1.5/IO.html#method-c-readlines
  quote_list   = File.readlines("quotes.txt")

  # See http://www.ruby-doc.org/core-2.1.5/Array.html#method-i-sample
  random_quote = quote_list.sample()

  html = ""
  html.concat("<h1>Random Quote</h1>")
  html.concat("<blockquote><p>#{random_quote}</p></blockquote>")
  html.concat("<h2>Where do the quotes come from?</h2>")
  html.concat("<p>")
  html.concat("The <code>quotes.txt</code> file contains one quote per line.")
  html.concat("<strong>Reload</strong> the page to see another quote.")
  html.concat("</p>")
  html.concat("<p><a href='/'>Back to the homepage</a></p>")
end
