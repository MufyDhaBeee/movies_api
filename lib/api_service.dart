import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_api/model/details_model.dart';
import 'package:movies_api/model/most_popular.dart';

Future<MoviesDetails> fetchCarouselDetails() async {
  final response = await http.get(
    Uri.parse('https://imdb236.p.rapidapi.com/api/imdb/tt0816692'),
    headers: {'Accept': 'application/json',
      'x-rapidapi-host' : 'imdb236.p.rapidapi.com',
      'x-rapidapi-key' : 'c8070fa970msh7e9715a19cd7fe3p10c922jsna7df7834c4b5'},
  );
  print(response.body);

  if (response.statusCode == 200) {
    return MoviesDetails.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load weather');
  }
}

Future<MostPopularModel> fetchMostPopular() async {
  final response = await http.get(
    Uri.parse('https://imdb236.p.rapidapi.com/api/imdb/most-popular-movies'),
    headers: {'Accept': 'application/json',
      'x-rapidapi-host' : 'imdb236.p.rapidapi.com',
      'x-rapidapi-key' : 'c8070fa970msh7e9715a19cd7fe3p10c922jsna7df7834c4b5'},
  );
  print(response.body);

  if (response.statusCode == 200) {
    return MostPopularModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load weather');
  }
}
