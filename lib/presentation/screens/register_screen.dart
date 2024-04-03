import 'package:flutter/material.dart';
import 'package:flutter_hw_04/presentation/screens/welcome_screen.dart';
import 'package:flutter_hw_04/presentation/widgets/input.dart';
import 'package:flutter_hw_04/presentation/widgets/register_button.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeScreen(),
                          ),
                        );
                      },
                      child: SvgPicture.asset('assets/svg/back.svg'),
                    ),
                    const Spacer(),
                    const Spacer(),
                    const Text(
                      'Регистрация',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 34),
                const CustomInput(
                  label: 'Фамилия',
                  hint: 'Иванов',
                ),
                const SizedBox(height: 10),
                const CustomInput(
                  label: 'Имя',
                  hint: 'Иван',
                ),
                const SizedBox(height: 10),
                const CustomInput(
                  label: 'Номер телефона',
                  hint: '(+996) 500 000 000',
                ),
                const SizedBox(height: 10),
                const CustomInput(
                  label: 'Пароль',
                  hint:
                      "\u2022\u2022\u2022\u2022\u2022\u2022\u2022\u2022\u2022",
                  obscureType: true,
                  suffix: Icon(Icons.remove_red_eye_outlined),
                ),
                const SizedBox(
                  height: 28,
                ),
                RegisterButton(
                  title: 'Зарегистрироваться',
                  backgroundButton: Colors.white,
                  buttonTextColor: const Color(0xff8C4AE2),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
