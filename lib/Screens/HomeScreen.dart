import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';
class Homescreen extends StatefulWidget {
  final Function(ThemeMode) onchange;
  IconData icon;
  Homescreen({required this.onchange, required this.icon});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late IconData icon;
  late Color cl;
  @override
  void initState() {
    // TODO: implement initState
    icon = widget.icon;
    icon == Icons.light_mode? cl = Colors.black: cl = Colors.white;
  }
  @override
  Widget build(BuildContext context) {
    final Brightness systemBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cl == Colors.black? Colors.purple.shade100: Colors.blue.shade200,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.075,
                child: Image.asset('images/logo1.png',
                fit: BoxFit.cover,)
            ),
            IconButton(onPressed: (){
                icon == Icons.light_mode? widget.onchange(ThemeMode.dark): widget.onchange(ThemeMode.light);
                icon == Icons.light_mode? icon = Icons.dark_mode: icon = Icons.light_mode;
                icon == Icons.light_mode? cl = Colors.black : cl = Colors.white;
            }, icon: Icon(icon,
            color: cl,
            size: 40,)),
          ],
        ),
        iconTheme: IconThemeData(
          color: cl,
          size: 30// Change this color to your desired color
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.06),
              child: Center(
                child: IconButton(onPressed: (){
                  icon == Icons.light_mode? widget.onchange(ThemeMode.dark): widget.onchange(ThemeMode.light);
                  icon == Icons.light_mode? icon = Icons.dark_mode: icon = Icons.light_mode;
                  icon == Icons.light_mode? cl = Colors.black : cl = Colors.white;
                }, icon: Icon(icon,
                  color: cl,
                  size: 70,)),
              ),
            ),
            TextButton(onPressed: (){

            },
                child: Material(
                  elevation: 10,
                  color: cl == Colors.white? Colors.white10: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    // height: MediaQuery.of(context).size.height*.06,
                    width: MediaQuery.of(context).size.width*.7,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.01),
                      child: Text(
                        'Our Services',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      ),
                    ),
                  ),
                )),
            TextButton(onPressed: (){

            },
                child: Material(
                  elevation: 10,
                  color: cl == Colors.white? Colors.white10: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    // height: MediaQuery.of(context).size.height*.06,
                    width: MediaQuery.of(context).size.width*.7,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.01),
                      child: Text(
                        'About Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                )),
            TextButton(onPressed: (){

            },
                child: Material(
                  elevation: 10,
                  color: cl == Colors.white? Colors.white10: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    // height: MediaQuery.of(context).size.height*.06,
                    width: MediaQuery.of(context).size.width*.7,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.01),
                      child: Text(
                        'Our Career',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        )
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.05, right: MediaQuery.of(context).size.width*.05, top: MediaQuery.of(context).size.height*.02),
            child: Text(
              'Our Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.05, bottom: MediaQuery.of(context).size.height*.02),
            child: Text(
              'Our Automobiles Insurance coverage offers peace of mind for all your vehicles, from personal cars to commercial fleets. For cattle owners, our Cattle Insurance is designed to protect your livestock and livelihood. We offer coverage that covers a range of risks, including accidents, illnesses, and natural disasters',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Material(
              color: cl==Colors.white? Colors.white10: Colors.white,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    Image(image: AssetImage('images/1.png',),
                    fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Text('Accurate and Real-time Valuation',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0, left: 20, right: 20),
                child: ReadMoreText(
                  'Track the health and behavior of your cattle, helping you identify issues early. Track the health and behavior of your cattle, helping you identify issues early. Track the health and behavior of your cattle, helping you identify issues early.',
                  trimMode: TrimMode.Length,
                  trimLength: 110,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Read less',
                  moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                  lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Material(
              color: cl==Colors.white? Colors.white10: Colors.white,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    Image(image: AssetImage('images/2.png',),
                      fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Text('Transparency',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0, left: 20, right: 20),
                      child: ReadMoreText(
                        'We provide a detailed breakdown of how we calculate the valuation, giving you confidence in the accuracy of our results. We provide a detailed breakdown of how we calculate the valuation, giving you confidence in the accuracy of our results.',
                        trimMode: TrimMode.Length,
                        trimLength: 110,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                        lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Material(
              color: cl==Colors.white? Colors.white10: Colors.white,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    Image(image: AssetImage('images/3.png',),
                      fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Text('Health Monitoring',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0, left: 20, right: 20),
                      child: ReadMoreText(
                        'Track the health and behavior of your cattle, helping you identify issues early. Track the health and behavior of your cattle, helping you identify issues early.',
                        trimMode: TrimMode.Length,
                        trimLength: 110,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                        lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.05, right: MediaQuery.of(context).size.width*.05, top: MediaQuery.of(context).size.height*.02),
                  child: Text(
                    'About Our Company',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.05, bottom: MediaQuery.of(context).size.height*.02),
                  child: ReadMoreText(
                    'Finguard Technologies Pvt. Ltd was incorporated in 2022 with its Registered office located at Pune under the leadership of various professionals having experience of Insurance, Marketing and Finance .The vision of the Company is to provide quality professional services to different sectors like Insurance, Banking and other Financial Institutions with its head office at Pune and Branch office at Mumbai (Thane). We have also on our Board, Associated Risk Management Services which will provide Technical as well as Manpower support. The vision of Finguard Technologies is to provide Quality services along with AI based Technological support catering to the needs of the industry. The Management Team has an experience of overseeing loss shipment claims, valuations etc in Properties, Marine, Motor Own Damage, Motor Third Party, Liability, Rural and Miscellaneous, We have also done close to 1,00,000 pre inspection of vehicles so far. With our conviction to make a difference, we have invested into making a state of art App which is in an advanced form of development.',
                    trimMode: TrimMode.Length,
                    trimLength: 250,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                    lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.05, right: MediaQuery.of(context).size.width*.05, top: MediaQuery.of(context).size.height*.02),
            child: Text(
              'Our Career',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.05, bottom: MediaQuery.of(context).size.height*.02),
            child: Text(
              'Our career is a journey, not a destination. We offer a clear path for advancement, acknowledging your hard work and dedication. Whether you\'re starting your career or looking to take the next step, we have opportunities that align with your aspirations',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Material(
              color: cl==Colors.white? Colors.white10: Colors.white,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Text('Field Executive',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0, left: 20, right: 20),
                      child: ReadMoreText(
                        'Field executives are responsible for identifying and approaching potential clients who may require automobile insurance. This involves networking, attending events, and cold calling to build a client base.',
                        trimMode: TrimMode.Length,
                        trimLength: 110,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                        lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Material(
              color: cl==Colors.white? Colors.white10: Colors.white,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Text('Agency',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0, left: 20, right: 20),
                      child: ReadMoreText(
                        'Running an agency that deals with both cattle and automobiles is an intriguing venture that straddles two distinct industries. While these sectors may seem unrelated, there are potential synergies and challenges to consider in managing such a business.',
                        trimMode: TrimMode.Length,
                        trimLength: 110,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                        lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05, vertical: MediaQuery.of(context).size.height*.02),
            child: Material(
              color: cl==Colors.white? Colors.white10: Colors.white,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:  12.0),
                      child: Text('Office Administration',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0, left: 20, right: 20),
                      child: ReadMoreText(
                        'Our administrators are experts in handling a diverse set of responsibilities, from customer inquiries and policy documentation to compliance with industry regulations. They serve as the first point of contact, providing the warm and knowledgeable assistance our clients have come to expect.',
                        trimMode: TrimMode.Length,
                        trimLength: 110,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                        lessStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.3,
            child: Image(image: AssetImage('images/qr.png'),),
          ),
          Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.05, bottom: MediaQuery.of(context).size.height*.02),
            child: Text(
              'Please scan the QR code to Download Mobile App',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ),
        ],
      ),
    );
  }
}
