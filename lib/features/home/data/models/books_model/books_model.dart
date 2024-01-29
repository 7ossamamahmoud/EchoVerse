class BooksModel {
  String kind;
  int totalItems;
  List<Item> items;

  BooksModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });
}

class Item {
  Kind kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;
  SearchInfo searchInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });
}

class AccessInfo {
  Country country;
  Viewability viewAbility;
  bool embeddable;
  bool publicDomain;
  TextToSpeechPermission textToSpeechPermission;
  Epub epub;
  Epub pdf;
  String webReaderLink;
  AccessViewStatus accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewAbility,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });
}

enum AccessViewStatus {
  NONE,
  SAMPLE,
}

enum Country { EG }

class Epub {
  bool isAvailable;
  String? acsTokenLink;

  Epub({
    required this.isAvailable,
    this.acsTokenLink,
  });
}

enum TextToSpeechPermission { ALLOWED }

enum Viewability { NO_PAGES, PARTIAL }

enum Kind { BOOKS_VOLUME }

class SaleInfo {
  Country country;
  Saleability saleability;
  bool isEbook;
  SaleInfoListPrice? listPrice;
  SaleInfoListPrice? retailPrice;
  String? buyLink;
  List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });
}

class SaleInfoListPrice {
  double amount;
  String currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });
}

class Offer {
  int finskyOfferType;
  OfferListPrice listPrice;
  OfferListPrice retailPrice;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });
}

class OfferListPrice {
  int amountInMicros;
  String currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });
}

enum Saleability { FOR_SALE, NOT_FOR_SALE }

class SearchInfo {
  String textSnippet;

  SearchInfo({
    required this.textSnippet,
  });
}

class VolumeInfo {
  String title;
  List<String> authors;
  String? publisher;
  String publishedDate;
  String? description;
  ReadingModes readingModes;
  int pageCount;
  PrintType printType;
  List<String>? categories;
  MaturityRating maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  Language language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;
  List<IndustryIdentifier>? industryIdentifiers;
  String? subtitle;
  int? averageRating;
  int? ratingsCount;

  VolumeInfo({
    required this.title,
    required this.authors,
    this.publisher,
    required this.publishedDate,
    this.description,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    this.industryIdentifiers,
    this.subtitle,
    this.averageRating,
    this.ratingsCount,
  });
}

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });
}

class IndustryIdentifier {
  Type type;
  String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });
}

enum Type { ISBN_10, ISBN_13, OTHER }

enum Language { EN }

enum MaturityRating { NOT_MATURE }

class PanelizationSummary {
  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });
}

enum PrintType { BOOK }

class ReadingModes {
  bool text;
  bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });
}
