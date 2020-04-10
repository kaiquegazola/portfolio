import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/util/launch_url.dart';

class SocialButton extends StatelessWidget {

  final String link;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final String tooltip;

  const SocialButton({
    Key key, this.link, this.icon, this.iconColor, this.iconSize  = 48, this.tooltip
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Container(
        child: OutlineButton(
          shape: new CircleBorder(),
          onPressed: () => launchURL(link),
          padding: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
