import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:talatsaleh_portfolio/core/const/assets.dart';
import 'package:talatsaleh_portfolio/home/widgets/costum_container.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(-.6, -.4),
          radius: .5,
          colors: [
            Theme.of(context).colorScheme.primary.withValues(alpha: .56),
            const Color(0xf0000000),
          ],
        ),
      ),
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomContainer(
                  fullHeight: 300,
                  fullWidth: 300,
                  imgAssets: AssetsConst.myPhoto,
                ),
                SizedBox(
                  width: 600,
                  child: Column(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '${AppLocalizations.of(context)!.hello} ',
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.talatSaleh,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ],
                        ),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          style: Theme.of(context).textTheme.titleLarge,
                          children: [
                            TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                              text:
                                  AppLocalizations.of(context)!.mobileDeveloper,
                            ),
                            const TextSpan(text: ' | '),
                            TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                              text: AppLocalizations.of(context)!
                                  .flutterDeveloper,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        AppLocalizations.of(context)!.descriptionHello,
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomContainer(
                  fullHeight: 300,
                  fullWidth: 300,
                  imgAssets: AssetsConst.myPhoto,
                ),
                SizedBox(
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '${AppLocalizations.of(context)!.hello} ',
                            ),
                            TextSpan(
                              text: AppLocalizations.of(context)!.talatSaleh,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ],
                        ),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          style: Theme.of(context).textTheme.titleLarge,
                          children: [
                            TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                              text:
                                  AppLocalizations.of(context)!.mobileDeveloper,
                            ),
                            const TextSpan(text: ' | '),
                            TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                              text: AppLocalizations.of(context)!
                                  .flutterDeveloper,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        AppLocalizations.of(context)!.descriptionHello,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
