import 'package:flutter/material.dart';
import 'package:flutter_hw_04/presentation/screens/register_screen.dart';
import 'package:flutter_hw_04/presentation/widgets/parts_button.dart';
import 'package:flutter_hw_04/presentation/widgets/register_button.dart';
import 'package:flutter_hw_04/presentation/widgets/text_button.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff8C4AE2),
              Color(0xff743BD1),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 14),
            child: Column(
              children: [
                const Spacer(),
                const Spacer(),
                SvgPicture.asset('assets/svg/logo.svg'),
                const Spacer(),
                const Text(
                  'Добро пожаловать!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Приветствуем вас на площадке аренды строительной техники',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                RegisterButton(
                  title: 'Регистрация',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(),
                      ),
                    );
                  },
                ),
                const MyTextButton(title: 'У меня уже есть аккаунт'),
                const Spacer(),
                const PartsButton(title: 'Магазин автозапчастей')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
