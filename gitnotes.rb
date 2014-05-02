Phase 1: Make a GET request to google

In terminal:

curl -v https://www.google.com

Find your response header

1. What status did you get back?
2. What content-type did you get back?
3. What came after the key "Set-Cookie"?
4. What date did this request come back on?
5. What came after the key "Transfer-Encoding?"

Find your response body

1. What was the first line in your response body?

Phase 2: Make a GET request to the OMDBAPI

In terminal:

curl -v http://www.omdbapi.com

Find your response header

1. What status did you get back?
2. What content-type did you get back?
3. What was your content length?
4. What date did this request come back on?

Find your response body

1. What was the first line in your response body?

Phase 3: Make a GET request to the OMDBAPI with parameters

In terminal:

curl -v http://www.omdbapi.com/?s=Titanic

Find your response header

1. What status did you get back?
2. What content-type did you get back? 3. What was your content length?

Find your response body

1. Look at the data that came back. What data structures do these look like?
2. What year did Titanic II come out?

Phase 4: Make a GET request to the OMDBAPI with different parameters

Now search for one of your favorite movies.

curl -v http://www.omdbapi.com/?t=<insert your favorite movie here>

If the title of your favorite movie has spaces, replace these with %20
i.e. curl -v http://www.omdbapi.com/?t=the%20matrix

Find the response header

1. What was the Cache-Control?
2. What value is after the key Expires?

Find the response body

1. What year was your favorite movie released?
2. What was your favorite movie rated?