
CREATE TABLE my_bookshop_Books (
  ID INTEGER NOT NULL,
  title NVARCHAR(255),
  stock INTEGER,
  author_ID NVARCHAR(36),
  PRIMARY KEY(ID)
);

CREATE TABLE my_bookshop_Authors (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(255),
  PRIMARY KEY(ID)
);

CREATE VIEW CatalogService_Books AS SELECT
  Books_0.ID,
  Books_0.title,
  Books_0.stock,
  Books_0.author_ID
FROM my_bookshop_Books AS Books_0;

CREATE VIEW CatalogService_Authors AS SELECT
  Authors_0.ID,
  Authors_0.name
FROM my_bookshop_Authors AS Authors_0;

