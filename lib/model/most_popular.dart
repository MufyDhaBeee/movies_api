
class MostPopularModel {
  String? id;
  String? url;
  String? primaryTitle;
  String? originalTitle;
  String? type;
  String? description;
  String? primaryImage;
  List<Thumbnails>? thumbnails;
  dynamic trailer;
  String? contentRating;
  int? startYear;
  dynamic endYear;
  String? releaseDate;
  List<String>? interests;
  List<dynamic>? countriesOfOrigin;
  List<dynamic>? externalLinks;
  List<String>? spokenLanguages;
  List<String>? filmingLocations;
  List<ProductionCompanies>? productionCompanies;
  int? budget;
  int? grossWorldwide;
  List<String>? genres;
  bool? isAdult;
  int? runtimeMinutes;
  double? averageRating;
  int? numVotes;
  int? metascore;

  MostPopularModel({this.id, this.url, this.primaryTitle, this.originalTitle, this.type, this.description, this.primaryImage, this.thumbnails, this.trailer, this.contentRating, this.startYear, this.endYear, this.releaseDate, this.interests, this.countriesOfOrigin, this.externalLinks, this.spokenLanguages, this.filmingLocations, this.productionCompanies, this.budget, this.grossWorldwide, this.genres, this.isAdult, this.runtimeMinutes, this.averageRating, this.numVotes, this.metascore});

  MostPopularModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
    primaryTitle = json["primaryTitle"];
    originalTitle = json["originalTitle"];
    type = json["type"];
    description = json["description"];
    primaryImage = json["primaryImage"];
    thumbnails = json["thumbnails"] == null ? null : (json["thumbnails"] as List).map((e) => Thumbnails.fromJson(e)).toList();
    trailer = json["trailer"];
    contentRating = json["contentRating"];
    startYear = json["startYear"];
    endYear = json["endYear"];
    releaseDate = json["releaseDate"];
    interests = json["interests"] == null ? null : List<String>.from(json["interests"]);
    countriesOfOrigin = json["countriesOfOrigin"] ?? [];
    externalLinks = json["externalLinks"] ?? [];
    spokenLanguages = json["spokenLanguages"] == null ? null : List<String>.from(json["spokenLanguages"]);
    filmingLocations = json["filmingLocations"] == null ? null : List<String>.from(json["filmingLocations"]);
    productionCompanies = json["productionCompanies"] == null ? null : (json["productionCompanies"] as List).map((e) => ProductionCompanies.fromJson(e)).toList();
    budget = json["budget"];
    grossWorldwide = json["grossWorldwide"];
    genres = json["genres"] == null ? null : List<String>.from(json["genres"]);
    isAdult = json["isAdult"];
    runtimeMinutes = json["runtimeMinutes"];
    averageRating = json["averageRating"];
    numVotes = json["numVotes"];
    metascore = json["metascore"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    _data["primaryTitle"] = primaryTitle;
    _data["originalTitle"] = originalTitle;
    _data["type"] = type;
    _data["description"] = description;
    _data["primaryImage"] = primaryImage;
    if(thumbnails != null) {
      _data["thumbnails"] = thumbnails?.map((e) => e.toJson()).toList();
    }
    _data["trailer"] = trailer;
    _data["contentRating"] = contentRating;
    _data["startYear"] = startYear;
    _data["endYear"] = endYear;
    _data["releaseDate"] = releaseDate;
    if(interests != null) {
      _data["interests"] = interests;
    }
    if(countriesOfOrigin != null) {
      _data["countriesOfOrigin"] = countriesOfOrigin;
    }
    if(externalLinks != null) {
      _data["externalLinks"] = externalLinks;
    }
    if(spokenLanguages != null) {
      _data["spokenLanguages"] = spokenLanguages;
    }
    if(filmingLocations != null) {
      _data["filmingLocations"] = filmingLocations;
    }
    if(productionCompanies != null) {
      _data["productionCompanies"] = productionCompanies?.map((e) => e.toJson()).toList();
    }
    _data["budget"] = budget;
    _data["grossWorldwide"] = grossWorldwide;
    if(genres != null) {
      _data["genres"] = genres;
    }
    _data["isAdult"] = isAdult;
    _data["runtimeMinutes"] = runtimeMinutes;
    _data["averageRating"] = averageRating;
    _data["numVotes"] = numVotes;
    _data["metascore"] = metascore;
    return _data;
  }
}

class ProductionCompanies {
  String? id;
  String? name;

  ProductionCompanies({this.id, this.name});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Thumbnails {
  String? url;
  int? width;
  int? height;

  Thumbnails({this.url, this.width, this.height});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    return _data;
  }
}