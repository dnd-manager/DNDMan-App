import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dndman_app/generated/assets.dart';
import 'package:dndman_app/main.dart';
import 'package:dndman_app/pages/auth/signin.dart';
import 'package:dndman_app/pages/auth/signup.dart';
import 'package:dndman_app/utils/animation.dart';
import 'package:dndman_app/utils/app_state.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:dndman_app/widgets/utils/links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';
import 'package:stockholm/stockholm.dart';

class HomePageStartWidget extends StatefulWidget {
  static const String route = "/";

  const HomePageStartWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageStartState();
}

class HomePageStartState extends State<HomePageStartWidget> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SingleAnimation(
      "Animation 1",
      autoplay: true,
      onStop: () {
        Future.delayed(const Duration(milliseconds: 2200)).then((value) {
          Navigator.pushReplacementNamed(context, HomePageWidget.route);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        child: LayoutBuilder(
          builder: (ctx, constraints) => Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: constraints.maxWidth / 10),
                child: Hero(
                  tag: "home_logo",
                  child: SizedBox(
                    width: constraints.maxWidth / 5,
                    height: constraints.maxWidth / 5,
                    child: RiveAnimation.asset(
                      Assets.rivDndmanLogo,
                      controllers: [
                        _controller,
                      ],
                    ),
                  ),
                ),
              ),
              Hero(
                tag: "home_title",
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "               D&D Manager",
                      textStyle: DNDTextStyle.displayText(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: constraints.maxWidth / 15,
                      ),
                      speed: const Duration(milliseconds: 100),
                    )
                  ],
                  totalRepeatCount: 1,
                ),
              ),
            ],
          ),
        ));
  }
}

class HomePageWidget extends StatefulWidget {
  static const String route = "/home";

  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: _HomePageAppBar(),
      ),
      body: LayoutBuilder(
        builder: (ctx, constraints) => ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  Assets.imagesBackgroundPlaceholder,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 180,
                          bottom: 20,
                        ),
                        child: Text(
                          "D&D Manager",
                          style: GoogleFonts.cinzelDecorative(
                            fontSize: constraints.maxWidth / 13,
                          ),
                        ),
                      ),
                      DNDManButtonWidget(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            SignUpPageWidget.route,
                          );
                        },
                        child: DNDManButtonLabel(
                          text: "Sign Up To Get Started!",
                          fontSize: constraints.maxWidth / 70,
                        ),
                        width: constraints.maxWidth / 4,
                        height: constraints.maxWidth / 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const LinksWidget(),
          ],
        ),
      ),
    );
  }
}

class _HomePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          boxShadow: stockholmBoxShadow(context),
        ),
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Hero(
                    tag: "home_logo",
                    child: SvgPicture.asset(
                      Assets.imagesLogo,
                      width: constraints.maxWidth/20,
                    ),
                  ),
                ),
                Hero(
                  tag: "home_title",
                  child: Text(
                    appTitle,
                    style: DNDTextStyle.displayText(
                      fontSize: constraints.maxWidth/40,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DNDManButtonWidget(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      SignInPageWidget.route,
                    );
                  },
                  child: DNDManButtonLabel(
                    text: "Already have an account? Sign in here!",
                    fontSize: constraints.maxWidth / 85,
                  ),
                  width: constraints.maxWidth / 3.8,
                  height: constraints.maxWidth / 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
