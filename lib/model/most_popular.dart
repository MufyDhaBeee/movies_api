import 'dart:convert';

List<MostPopularMovieList> mostPopularMovieListFromJson(String str) =>
    List<MostPopularMovieList>.from(
      (json.decode(str) as List).map((x) => MostPopularMovieList.fromJson(x)),
    );

String mostPopularMovieListToJson(List<MostPopularMovieList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MostPopularMovieList {
  String? id;
  String? url;
  String? primaryTitle;
  String? originalTitle;
  Type? type;
  String? description;
  String? primaryImage;
  List<Thumbnail>? thumbnails;
  String? trailer;
  ContentRating? contentRating;
  int? startYear;
  dynamic endYear;
  DateTime? releaseDate;
  List<String>? interests;
  List<String>? countriesOfOrigin;
  List<String>? externalLinks;
  List<String>? spokenLanguages;
  List<String>? filmingLocations;
  List<ProductionCompany>? productionCompanies;
  int? budget;
  int? grossWorldwide;
  List<String>? genres;
  bool? isAdult;
  int? runtimeMinutes;
  double? averageRating;
  int? numVotes;
  int? metascore;

  MostPopularMovieList({
    this.id,
    this.url,
    this.primaryTitle,
    this.originalTitle,
    this.type,
    this.description,
    this.primaryImage,
    this.thumbnails,
    this.trailer,
    this.contentRating,
    this.startYear,
    this.endYear,
    this.releaseDate,
    this.interests,
    this.countriesOfOrigin,
    this.externalLinks,
    this.spokenLanguages,
    this.filmingLocations,
    this.productionCompanies,
    this.budget,
    this.grossWorldwide,
    this.genres,
    this.isAdult,
    this.runtimeMinutes,
    this.averageRating,
    this.numVotes,
    this.metascore,
  });

  factory MostPopularMovieList.fromJson(Map<String, dynamic> json) {
    return MostPopularMovieList(
      id: json["id"] as String?,
      url: json["url"] as String?,
      primaryTitle: json["primaryTitle"] as String?,
      originalTitle: json["originalTitle"] as String?,

      type: json["type"] != null ? typeValues.map[json["type"]] : null,

      description: json["description"] as String?,
      primaryImage: json["primaryImage"] as String?,

      thumbnails:
          (json["thumbnails"] as List?)
              ?.map((e) => Thumbnail.fromJson(e))
              .toList() ??
          [],

      trailer: json["trailer"] as String?,

      contentRating: json["contentRating"] != null
          ? contentRatingValues.map[json["contentRating"]]
          : null,

      startYear: json["startYear"] as int?,
      endYear: json["endYear"],

      releaseDate: json["releaseDate"] != null
          ? DateTime.tryParse(json["releaseDate"])
          : null,

      interests:
          (json["interests"] as List?)?.map((e) => e.toString()).toList() ?? [],

      countriesOfOrigin:
          (json["countriesOfOrigin"] as List?)
              ?.map((e) => e.toString())
              .toList() ??
          [],

      externalLinks:
          (json["externalLinks"] as List?)?.map((e) => e.toString()).toList() ??
          [],

      spokenLanguages:
          (json["spokenLanguages"] as List?)
              ?.map((e) => e.toString())
              .toList() ??
          [],

      filmingLocations:
          (json["filmingLocations"] as List?)
              ?.map((e) => e.toString())
              .toList() ??
          [],

      productionCompanies:
          (json["productionCompanies"] as List?)
              ?.map((e) => ProductionCompany.fromJson(e))
              .toList() ??
          [],

      budget: json["budget"] as int?,
      grossWorldwide: json["grossWorldwide"] as int?,

      genres:
          (json["genres"] as List?)?.map((e) => e.toString()).toList() ?? [],

      isAdult: json["isAdult"] as bool?,
      runtimeMinutes: json["runtimeMinutes"] as int?,

      averageRating: json["averageRating"] != null
          ? (json["averageRating"] as num).toDouble()
          : null,

      numVotes: json["numVotes"] as int?,
      metascore: json["metascore"] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "url": url,
      "primaryTitle": primaryTitle,
      "originalTitle": originalTitle,
      "type": type != null ? typeValues.reverse[type] : null,
      "description": description,
      "primaryImage": primaryImage,

      "thumbnails": thumbnails?.map((e) => e.toJson()).toList() ?? [],

      "trailer": trailer,

      "contentRating": contentRating != null
          ? contentRatingValues.reverse[contentRating]
          : null,

      "startYear": startYear,
      "endYear": endYear,

      "releaseDate": releaseDate?.toIso8601String(),

      "interests": interests ?? [],
      "countriesOfOrigin": countriesOfOrigin ?? [],
      "externalLinks": externalLinks ?? [],
      "spokenLanguages": spokenLanguages ?? [],
      "filmingLocations": filmingLocations ?? [],

      "productionCompanies":
          productionCompanies?.map((e) => e.toJson()).toList() ?? [],

      "budget": budget,
      "grossWorldwide": grossWorldwide,

      "genres": genres ?? [],

      "isAdult": isAdult,
      "runtimeMinutes": runtimeMinutes,
      "averageRating": averageRating,
      "numVotes": numVotes,
      "metascore": metascore,
    };
  }
}

enum ContentRating { g, notRated, pg, pg13, r, tv14, tvMa, unrated }

final contentRatingValues = EnumValues({
  "G": ContentRating.g,
  "Not Rated": ContentRating.notRated,
  "PG": ContentRating.pg,
  "PG-13": ContentRating.pg13,
  "R": ContentRating.r,
  "TV-14": ContentRating.tv14,
  "TV-MA": ContentRating.tvMa,
  "Unrated": ContentRating.unrated,
});

class ProductionCompany {
  String? id;
  String? name;

  ProductionCompany({this.id, this.name});

  factory ProductionCompany.fromJson(Map<String, dynamic> json) {
    return ProductionCompany(
      id: json["id"] as String?,
      name: json["name"] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }
}

class Thumbnail {
  String? url;
  int? width;
  int? height;

  Thumbnail({this.url, this.width, this.height});

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      url: json["url"] as String?,
      width: json["width"] as int?,
      height: json["height"] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {"url": url, "width": width, "height": height};
  }
}

enum Type { movie }

final typeValues = EnumValues({"movie": Type.movie});

class EnumValues<T> {
  final Map<String, T> map;
  Map<T, String>? _reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    _reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return _reverseMap!;
  }
}
