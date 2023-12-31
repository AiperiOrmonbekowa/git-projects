import 'package:flutter/material.dart';
import 'package:test_zd/config/theme/app_colors.dart';
import 'package:test_zd/features/auth/presentation/page/registration/sign_in_page.dart';
import 'package:test_zd/features/auth/presentation/widgets/button_container_widget.dart';
import 'package:test_zd/features/auth/presentation/widgets/form_container_widget.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            Image.asset("assets/images/linear_grad6.png"),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/linear_grad7.png")),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: AppColors.black,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Восстановление пароля",
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            const SizedBox(
                              height: 42,
                            ),
                            Text(
                              "Нужно создать новый пароль?",
                              style: theme.textTheme.bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Введите свой новый пароль а после повторите его.",
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Пароль",
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const FormContainerWidget(
                              isPasswordField: true,
                            ),
                            const SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Не менее 8 символов",
                                style: theme.textTheme.bodySmall
                                    ?.copyWith(color: AppColors.green),
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Повторите пароль",
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const FormContainerWidget(
                              isPasswordField: true,
                            ),
                            const SizedBox(
                              height: 42,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 100, right: 100),
                              child: Center(
                                child: ButtonContainerWidget(
                                  color: AppColors.blue,
                                  text: "Подтвердить",
                                  onTapListener: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInPage()),
                                        (route) => false);
                                  },
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
