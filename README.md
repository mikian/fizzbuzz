# FizzBuzz

* Start server

    bin/rails s

* Access webpage to: http://localhost:3000

## APIs

### View FizzBuzz

Make GET request to `http://localhost:3000/api`, possible parameters:

* `offset` - First index to display
* `per_page` - How many FizzBuzz to display per request

### Favourite FizzBuzz

Make GET request to `http://localhost:3000/api/favourite?index=INDEX` where
INDEX is the index number that is wanted to favourite.
