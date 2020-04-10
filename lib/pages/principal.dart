import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/social_button.dart';

class PrincipalPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile3.dart";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Center(
              child: Container(
                width: size.width * 0.4,
                margin: EdgeInsets.fromLTRB(16.0, 15.0, 16.0, 16.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 125, 16, 16),
                          margin: EdgeInsets.only(top: 125.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Kaique Gazola",
                                      style: GoogleFonts.roboto(fontSize: 48),
                                    ),
                                    ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text(
                                        "Mobile Developer",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.robotoCondensed(
                                            fontSize: 24),
                                      ),
                                      subtitle: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            "Santa Fé do Sul/SP",
                                            style: GoogleFonts.lato(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SocialButton(
                                    icon: FontAwesomeIcons.facebook,
                                    iconColor: Colors.blue,
                                    link:
                                    'https://facebook.com/kaique.gazola',
                                    tooltip: 'Facebook',
                                  ),
                                  SocialButton(
                                    icon: FontAwesomeIcons.github,
                                    iconColor: Colors.black,
                                    link:
                                    'https://github.com/kaiquegazola',
                                    tooltip: 'GitHub',
                                  ),
                                  SocialButton(
                                    icon: FontAwesomeIcons.linkedinIn,
                                    iconColor: Colors.blue,
                                    iconSize: 40,
                                    link:
                                    'https://linkedin.com/in/kaique-gazola',
                                    tooltip: 'LinkedIn',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://avatars3.githubusercontent.com/u/16167977'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
