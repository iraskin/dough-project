Versions:
Ruby 2.2.5
Rails 5.0.0.1
Ember-CLI 2.7.0

Instructions to run:
- Start a terminal, cd to stockinfo-api and run
"rails server --binding 0.0.0.0"

- Then, in a separate terminal cd to stockinfo
"ember server --proxy http://localhost:3000"

Now, you should be able to access the application at localhost:4200


Issues/improvements:
This was just a first attempt at Ember, Ruby, and JavaScript for me. There are many things that could be improved in the future:
- On the main stock list page, display 10 or 20 per page instead of all at once
- Faster loading of the model (loads all 5000+ stocks and takes a while)
- Search feature
- On the price chart page, shouldn't need to click "Display". This is because links do not reload the model in Ember. There must be another way to do it, but I couldn't
figure out what it is.
- Another approach: serializing the quotes along with the stock. But these didn't display in the table.
- Also, on the price chart page, display the stock
- Have the date be "yyyy-mm-dd" formatting
- Candlestick chart (downloaded a library for this but didn't implement)
- In general, have everything look nicer and work faster

