import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movies_api/api_service.dart';
import 'package:movies_api/model/details_model.dart';

import '../model/most_popular.dart';

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
       // leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.black,
        title: Container(
          height: 35,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.yellow,
          ),
          child: Center(
            child: Text('IMDb', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),),
          ),
        )
      ),
      body: FutureBuilder<MostPopularModel>(
        future: fetchMostPopular(),
        builder: (context, asyncSnapshot) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      //color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.search, color: Color.fromRGBO(255, 255, 255, 1)),
                        SizedBox(width: 10),
                        Text(
                          'search',
                          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                  ),
          
                  // CarouselSlider.builder(
                  //   itemCount: moviesData?.thumbnails?.length,
                  //   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  //       Image.network(moviesData!.thumbnails.toString()), options: CarouselOptions(
                  //   autoPlay: true,
                  //   autoPlayInterval: Duration(seconds: 3),
                  //   aspectRatio: 16/9,
                  //
                  // ),
                  // ),
                  SizedBox(height: 15),
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
                      itemCount: 10, // Total number of items
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 5,
                        ); // The widget built between items
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.white10),
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                             Container(
                               height: 150,
                               width: 120,
                               decoration: BoxDecoration(
                                 color: Color.fromRGBO(255, 255, 255, 1),
                               ),
                             ),
                              SizedBox(height: 10,),
                              Text('Movie name', style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Most Popular', style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Total number of items
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 5,
                        ); // The widget built between items
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.white10),
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Container(
                                height: 150,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Movie name', style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Top 10 on IMBd this week', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    height: 120,
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
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Movie name'),
                              Row(
                                children: [
                                  Text('2025'),
                                  Text('1h 48m'),
                                ],
                              ),
                              Text('8.1(8.8k'),
                              Text('Make as watched'),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
          
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
