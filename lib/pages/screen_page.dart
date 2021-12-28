import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nintendo/components/buttons/big_button.dart';
import 'package:nintendo/components/buttons/button_shape.dart';
import 'package:nintendo/components/button_collection.dart';
import 'package:nintendo/components/logo/nintendo_logo.dart';
import 'package:nintendo/components/middle_widgets.dart';
import 'package:nintendo/components/game_display.dart';
import 'package:nintendo/components/buttons/home_button.dart';
import 'package:nintendo/components/buttons/minus_button.dart';
import 'package:nintendo/components/buttons/plus_button.dart';
import 'package:nintendo/components/side.dart';
import 'package:nintendo/components/buttons/sound_button.dart';
import '../components/buttons/action_button.dart';
import '../components/buttons/digital_directional_button.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xff4B5054),
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GameDisplay(
                  height: size.height * 0.54,
                  width: size.width * 0.88,
                  child: NintendoLogo(
                    height: (size.width * 0.88) * 0.35,
                    width: (size.width * 0.88) * 0.35,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Side(
                      height: size.height * 0.38,
                      width: size.width * 0.32,
                      iconTop: MinusButton(
                        height: (size.width * 0.38) * 0.03,
                        width: (size.width * 0.32) * 0.15,
                      ),
                      first: BigButton(
                        size: (size.width * 0.32) * 0.46,
                      ),
                      second: ButtonCollection(
                        size: (size.width * 0.32) * 0.70,
                        top: const ButtonShape(
                          child: DigitalDirectionalButton(),
                        ),
                        down: const ButtonShape(
                          type: ButtonShapeGradientLinearType.angle270,
                          child: DigitalDirectionalButton(
                            directionRotation: DirectionRotation.down,
                          ),
                        ),
                        left: const ButtonShape(
                            child: DigitalDirectionalButton(
                          directionRotation: DirectionRotation.left,
                        )),
                        right: const ButtonShape(
                            type: ButtonShapeGradientLinearType.angle270,
                            child: DigitalDirectionalButton(
                              directionRotation: DirectionRotation.right,
                            )),
                      ),
                      iconDown: SoundButton(
                        size: (size.width * 0.32) * 0.16,
                      ),
                    ),
                    MiddleWidgets(
                      size: size.width * 0.12,
                      width: size.width * 0.34,
                      logo: NintendoLogo(
                        height: size.width * 0.12,
                        width: size.width * 0.12,
                        color: Colors.black,
                      ),
                    ),
                    Side(
                      sideType: SideType.right,
                      height: size.height * 0.38,
                      width: size.width * 0.32,
                      iconTop: PlusButton(
                        height: (size.width * 0.38) * 0.03,
                        width: (size.width * 0.32) * 0.15,
                      ),
                      second: BigButton(
                        size: (size.width * 0.32) * 0.46,
                      ),
                      first: ButtonCollection(
                        size: (size.width * 0.32) * 0.70,
                        top: const ButtonShape(
                          child: ActionButton(),
                        ),
                        down: const ButtonShape(
                          type: ButtonShapeGradientLinearType.angle270,
                          child: ActionButton(
                            label: 'B',
                          ),
                        ),
                        left: const ButtonShape(
                          child: ActionButton(
                            label: 'Y',
                          ),
                        ),
                        right: const ButtonShape(
                          type: ButtonShapeGradientLinearType.angle270,
                          child: ActionButton(
                            label: 'A',
                          ),
                        ),
                      ),
                      iconDown: HomeButton(
                        size: (size.width * 0.32) * 0.23,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
