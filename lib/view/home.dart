import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movies_api/api_service.dart';
import 'package:movies_api/model/details_model.dart';

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
        leading: Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.yellow,
        title: Text(
          'Movie App Api',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
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
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
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
                      decoration: BoxDecoration(color: Colors.white),
                      child: Icon(Icons.directions_car_rounded, color: Colors.yellow,),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
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
                      decoration: BoxDecoration(color: Colors.white),
                      child: Icon(Icons.build_sharp, color: Colors.yellow,),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
