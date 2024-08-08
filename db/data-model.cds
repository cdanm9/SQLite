using { Currency } from '@sap/cds/common';
namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
  author : Association to Authors;
}

entity Authors {
  key ID : UUID;
  name  : String;
  books : Association to many Books on books.author = $self;
}
