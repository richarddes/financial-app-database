# Database 
This service provides the main database for the whole app. It's a Postgres 12 database with a *user* and *news* table. 
It defines a *posint* domain, which represents positive integers bigger than 0, and a *news_language* domain, which represents supported languages.
The *news_language* domain must be changed, when adding/removing news languages since they can't be changed via env vars for this service.
The database also defines a *stock* type which represents the data need for a bought stock.

## Contributing 
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
MIT License. Click [here](https://choosealicense.com/licenses/mit/) or see the LICENSE file for details.