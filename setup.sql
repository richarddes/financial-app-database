CREATE DOMAIN posint AS INTEGER CHECK (VALUE > 0);
CREATE DOMAIN news_language AS TEXT CHECK (VALUE IN ('en', 'de')) DEFAULT 'en';

CREATE TYPE stock AS (
  symbol TEXT,
  amount posint,
  boughtFor NUMERIC
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  pass TEXT NOT NULL UNIQUE,
  lastName TEXT NOT NULL,
  firstName TEXT,
  lang news_language,
  cash NUMERIC,
  ownedStocks stock[],
  subscribedPublisherIDs TEXT[]
);

CREATE TABLE news (
  url TEXT PRIMARY KEY,
  publisherID TEXT NOT NULL,
  publisherName TEXT NOT NULL,
  lang TEXT NOT NULL,
  title TEXT  NOT NULL,
  urlToImage TEXT,
  author TEXT,
  description TEXT,
  publishedAt TEXT,
  content TEXT
);