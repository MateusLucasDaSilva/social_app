import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_images.dart';
import 'package:social_app/app/core/utils/constants/app_routes.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AppImages.splash,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Text(
              'Fotos',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.avatar,
                        ),
                      ),
                    ),
                  ),
                  title: Text('Mateus Lucas'),
                  subtitle: Text('@mateuslcs'),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    bottom: AppSize.padding + MediaQuery.of(context).padding.bottom,
                    top: AppSize.padding,
                    left: AppSize.padding,
                    right: AppSize.padding,
                  ),
                  child: Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.pushNamed(context, NamedRoutes.login.route),
                          child: Text('ENTRAR'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, NamedRoutes.signUp.route),
                          child: Text('REGISTRAR'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
