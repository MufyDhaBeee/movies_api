import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:movies_api/model/details_model.dart';
import 'package:movies_api/model/most_popular.dart';

Future<MoviesDetails> fetchCarouselDetails() async {
  final response = await http.get(
    Uri.parse('https://imdb236.p.rapidapi.com/api/imdb/tt0816692'),
    headers: {
      'Accept': 'application/json',
      'x-rapidapi-host': 'imdb236.p.rapidapi.com',
      'x-rapidapi-key': 'd175a0e844msh3bb7746748bf9b2p1fb3cfjsn2e24dc3232f4',
    },
  );
  print(response.body);

  if (response.statusCode == 200) {
    return MoviesDetails.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load weather');
  }
}

Future<List<MostPopularMovieList>> fetchMostPopular() async {
  Logger logger = Logger();
  try{
    final response = await http.get(
      Uri.parse('https://imdb236.p.rapidapi.com/api/imdb/most-popular-movies'),
      headers: {
        'Accept': 'application/json',
        'x-rapidapi-host': 'imdb236.p.rapidapi.com',
        'x-rapidapi-key': 'd175a0e844msh3bb7746748bf9b2p1fb3cfjsn2e24dc3232f4',
      },
    );
    logger.d(response.body);
    if (response.statusCode == 200) {
      // logger.d("this line from statjus code after");
      // Iterable l = json.decode(response.body);
      // List<MostPopularMovieList> mostpopularMovieList = List<MostPopularMovieList>.from(l.map((model)=> MostPopularMovieList.fromJson(model)));
      // logger.d(
      //   "this from api json convertion after${mostpopularMovieList.isEmpty}",
      // );
      final mostPopularMovieList=mostPopularMovieListFromJson(response.body);

      return mostPopularMovieList;
    } else {
      throw Exception("msas");
    }
  }catch(e){
    logger.d("this from api issue $e");
    throw Exception(e);
  }

}
