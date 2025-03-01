import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/widgets/inputs/input_email_widget.dart';
import 'package:social_app/app/core/utils/widgets/inputs/input_password_widget.dart';
import 'package:social_app/app/core/utils/widgets/title_text_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(
          AppSize.padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleTextWidget(text: 'Registrar'),
            const SizedBox(height: AppSize.padding),
            InputEmailWidget(),
            const SizedBox(height: AppSize.padding),
            InputPasswordWidget(),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'REGISTRAR',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
