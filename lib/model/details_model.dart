
class MoviesDetails {
  String? id;
  String? url;
  String? primaryTitle;
  String? originalTitle;
  String? type;
  String? description;
  String? primaryImage;
  List<Thumbnails>? thumbnails;
  String? trailer;
  String? contentRating;
  int? startYear;
  dynamic endYear;
  String? releaseDate;
  List<String>? interests;
  List<String>? countriesOfOrigin;
  List<String>? externalLinks;
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
  List<Directors>? directors;
  List<Writers>? writers;
  List<Cast>? cast;

  MoviesDetails({this.id, this.url, this.primaryTitle, this.originalTitle, this.type, this.description, this.primaryImage, this.thumbnails, this.trailer, this.contentRating, this.startYear, this.endYear, this.releaseDate, this.interests, this.countriesOfOrigin, this.externalLinks, this.spokenLanguages, this.filmingLocations, this.productionCompanies, this.budget, this.grossWorldwide, this.genres, this.isAdult, this.runtimeMinutes, this.averageRating, this.numVotes, this.metascore, this.directors, this.writers, this.cast});

  MoviesDetails.fromJson(Map<String, dynamic> json) {
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
    countriesOfOrigin = json["countriesOfOrigin"] == null ? null : List<String>.from(json["countriesOfOrigin"]);
    externalLinks = json["externalLinks"] == null ? null : List<String>.from(json["externalLinks"]);
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
    directors = json["directors"] == null ? null : (json["directors"] as List).map((e) => Directors.fromJson(e)).toList();
    writers = json["writers"] == null ? null : (json["writers"] as List).map((e) => Writers.fromJson(e)).toList();
    cast = json["cast"] == null ? null : (json["cast"] as List).map((e) => Cast.fromJson(e)).toList();
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
    if(directors != null) {
      _data["directors"] = directors?.map((e) => e.toJson()).toList();
    }
    if(writers != null) {
      _data["writers"] = writers?.map((e) => e.toJson()).toList();
    }
    if(cast != null) {
      _data["cast"] = cast?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Cast {
  String? id;
  String? url;
  String? fullName;
  String? primaryImage;
  List<Thumbnails1>? thumbnails;
  String? job;
  List<String>? characters;

  Cast({this.id, this.url, this.fullName, this.primaryImage, this.thumbnails, this.job, this.characters});

  Cast.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
    fullName = json["fullName"];
    primaryImage = json["primaryImage"];
    thumbnails = json["thumbnails"] == null ? null : (json["thumbnails"] as List).map((e) => Thumbnails1.fromJson(e)).toList();
    job = json["job"];
    characters = json["characters"] == null ? null : List<String>.from(json["characters"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    _data["fullName"] = fullName;
    _data["primaryImage"] = primaryImage;
    if(thumbnails != null) {
      _data["thumbnails"] = thumbnails?.map((e) => e.toJson()).toList();
    }
    _data["job"] = job;
    if(characters != null) {
      _data["characters"] = characters;
    }
    return _data;
  }
}

class Thumbnails1 {
  String? url;
  int? width;
  int? height;

  Thumbnails1({this.url, this.width, this.height});

  Thumbnails1.fromJson(Map<String, dynamic> json) {
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

class Writers {
  String? id;
  String? url;
  String? fullName;

  Writers({this.id, this.url, this.fullName});

  Writers.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
    fullName = json["fullName"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    _data["fullName"] = fullName;
    return _data;
  }
}

class Directors {
  String? id;
  String? url;
  String? fullName;

  Directors({this.id, this.url, this.fullName});

  Directors.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
    fullName = json["fullName"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    _data["fullName"] = fullName;
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