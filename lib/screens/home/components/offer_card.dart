import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';


class OfferCard extends StatelessWidget {
  final Function press;
  final Offer offer;
  const OfferCard({
    Key key,
    this.offer,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      width: width * 0.6,
      margin: EdgeInsets.only(left: 20, right: 0, top: 10, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Stack(
              children: [
                Container(
                  width: width * 0.6,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      offer.image,
                      width: 175,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: width * 0.6,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black26.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 100,
                    height: 200,
                    child: Center(
                      child: Text(
                        offer.name + "\n" + offer.offerText,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
