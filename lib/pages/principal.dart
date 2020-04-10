import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/social_button.dart';

class PrincipalPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile3.dart";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1880, height: 882, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil().setWidth(450),
              width: double.infinity,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.only(top: ScreenUtil().setWidth(115)),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              ScreenUtil().setWidth(16),
                              ScreenUtil().setWidth(125),
                              ScreenUtil().setWidth(16),
                              ScreenUtil().setWidth(16)),
                          margin:
                              EdgeInsets.only(top: ScreenUtil().setWidth(125)),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    AutoSizeText(
                                      "Kaique Gazola",
                                      style: GoogleFonts.roboto(
                                          fontSize: ScreenUtil().setSp(48, allowFontScalingSelf: false)),
                                    ),
                                    ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: AutoSizeText(
                                        "Mobile Developer",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.robotoCondensed(
                                            fontSize: ScreenUtil().setSp(24, allowFontScalingSelf: false)),
                                      ),
                                      subtitle: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                          ),
                                          AutoSizeText(
                                            "Santa Fé do Sul/SP",
                                            style: GoogleFonts.lato(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: ScreenUtil().setHeight(10)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SocialButton(
                                    icon: FontAwesomeIcons.facebook,
                                    iconColor: Colors.blue,
                                    iconSize: ScreenUtil().setSp(48),
                                    link: 'https://facebook.com/kaique.gazola',
                                    tooltip: 'Facebook',
                                  ),
                                  SocialButton(
                                    icon: FontAwesomeIcons.github,
                                    iconColor: Colors.black,
                                    iconSize: ScreenUtil().setSp(48),
                                    link: 'https://github.com/kaiquegazola',
                                    tooltip: 'GitHub',
                                  ),
                                  SocialButton(
                                    icon: FontAwesomeIcons.linkedinIn,
                                    iconColor: Colors.blue,
                                    iconSize: ScreenUtil().setSp(40),
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
                            height: ScreenUtil().setWidth(250),
                            width: ScreenUtil().setWidth(250),
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
                    SizedBox(height: ScreenUtil().setHeight(20)),
                  ],
                ),
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ],
        ),
      ),
    );
  }
}
