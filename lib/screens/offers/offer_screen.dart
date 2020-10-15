import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/home/components/restaurant_list.dart';

class OfferScreen extends StatefulWidget {
  List<Resturant> restaurants;
  Offer offer;

  OfferScreen({this.restaurants, this.offer});

  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
       body: SingleChildScrollView(
         child: Column(

           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Stack(
               children: [
                 Container(
                   decoration: BoxDecoration(

                     gradient:LinearGradient(
                       colors: [ Colors.black54,Colors.black12],
                       stops: [0.2, 10],
                       begin: Alignment.topRight,
                     ),
                   ),

                   height: 220,
                   width: width,

                   child: Image.asset("images/Group 3667.png",fit: BoxFit.fill,),

                 ),
                 Positioned(
                   bottom: 20,

                   left: 10,
                   child: Container(
                     width: MediaQuery.of(context).size.width,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Pizza",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                         Text("1 + 1 Free",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold))
                       ],
                     ),
                   ),
                 )
               ],
             ),

             RestaurantList(),
           ],
         ),
       ),

      ),
    );
  }
}
