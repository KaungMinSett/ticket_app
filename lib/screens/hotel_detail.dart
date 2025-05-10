import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          forceMaterialTransparency: true,
          floating: false,
          pinned: true,
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hotel title"),
            background: Image.network("https://placehold.co/600x500.png"),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor "
                "incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip"
                " ex ea commodo consequat. tetx some random tetx Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "More Images",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
              Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){

                  return Container(
                    margin: EdgeInsets.all(16),
                    child: Image.network(

                      "https://placehold.co/200x200.png"
                    ),
                  );
                }),
              )
        ]))
      ]),
    );
  }
}
