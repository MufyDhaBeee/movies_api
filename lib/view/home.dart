import 'package:flutter/material.dart';
import 'package:movies_api/model/most_popular.dart';
import '../api_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 35,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.yellow,
          ),
          child: Center(
            child: Text(
              'IMDb',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<MostPopularMovieList>>(
        future: fetchMostPopular(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: Colors.yellow),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, color: Colors.yellow, size: 50),
                  SizedBox(height: 16),
                  Text(
                    'Something went wrong',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    snapshot.error.toString(),
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text(
                'No movies found',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            );
          } else {
            final moviesData = snapshot.data!;

            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),

                    // Search Bar
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.white, width: 1.0),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 10),
                          Text('Search', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    // What to Watch Section
                    Text(
                      'What to Watch',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: moviesData.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 5);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          final movie = moviesData[index];
                          return Container(
                            height: 180,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Container(
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child:
                                      movie.primaryImage != null &&
                                          movie.primaryImage!.isNotEmpty
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                          child: Image.network(
                                            movie.primaryImage!,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return Icon(
                                                    Icons.movie,
                                                    color: Colors.grey,
                                                    size: 40,
                                                  );
                                                },
                                          ),
                                        )
                                      : Icon(
                                          Icons.movie,
                                          color: Colors.grey,
                                          size: 40,
                                        ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  movie.primaryTitle ?? 'Unknown Movie',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    // Most Popular Section
                    Text(
                      'Most Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: moviesData.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 5);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          final movie = moviesData[index];
                          return Container(
                            height: 180,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Container(
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child:
                                      movie.primaryImage != null &&
                                          movie.primaryImage!.isNotEmpty
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                          child: Image.network(
                                            movie.primaryImage!,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return Icon(
                                                    Icons.movie,
                                                    color: Colors.grey,
                                                    size: 40,
                                                  );
                                                },
                                          ),
                                        )
                                      : Icon(
                                          Icons.movie,
                                          color: Colors.grey,
                                          size: 40,
                                        ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  movie.primaryTitle ?? 'Unknown Movie',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    // -----Top 10 This Week Section
                    Text(
                      'Top 10 on IMDb this week',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.yellow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: moviesData.isNotEmpty && moviesData[0].primaryImage != null && moviesData[0].primaryImage!.isNotEmpty
                                  ? ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  moviesData[0].primaryImage!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(Icons.movie, color: Colors.grey, size: 30);
                                  },
                                ),
                              )
                                  : Icon(Icons.movie, color: Colors.grey, size: 30),
                            ),
                            SizedBox(width: 8),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
