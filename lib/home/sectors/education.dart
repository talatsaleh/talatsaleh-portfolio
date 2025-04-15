import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../core/const/assets.dart';
import '../widgets/costum_container.dart';

class Education extends StatelessWidget {
  const Education({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.education,
            style: isMobile ? Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ): Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.educationAnswer,
            style: isMobile ? Theme.of(context).textTheme.titleMedium : Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: isMobile ? Column(
            children: [
              CustomContainer(
                fullWidth: MediaQuery.of(context).size.width,
                fullHeight: MediaQuery.of(context).size.width > 600 ? 900 :800,
                height: 570,
                isMobile: isMobile,
                rotation: .1,
                width: MediaQuery.of(context).size.width - 100,
                avatarImg: AssetsConst.suezCanal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.suezCanalUniversityEgypt,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!
                          .facultyOfComputersAndInformatics,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!.computerScience,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${AppLocalizations.of(context)!.gradeGoodDegree}\n${AppLocalizations.of(context)!.graduationProject}\n',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.attemptedFrom,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    )
                  ],
                ),
              ),
              CustomContainer(
                fullWidth: MediaQuery.of(context).size.width,
                fullHeight:MediaQuery.of(context).size.width > 600 ? 800: 700,
                height: MediaQuery.of(context).size.width > 600 ? 570 :470 ,
                isMobile: isMobile,
                rotation: .1,
                width: MediaQuery.of(context).size.width - 100,
                avatarImg: AssetsConst.flutter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.flutterFramework,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!.theCompleteGuide,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppLocalizations.of(context)!
                          .theCompleteGuideDescription,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!.bootCampWithDart,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppLocalizations.of(context)!
                          .bootCampWithDartDescription,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ) :Row(
            children: [
              Expanded(
                child: CustomContainer(
                  fullWidth: MediaQuery.of(context).size.width * 1 / 3,
                  fullHeight: MediaQuery.of(context).size.width < 1800 ? 680 : 650 ,
                  height: MediaQuery.of(context).size.width < 1800 ? 510 :  470,
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  avatarImg: AssetsConst.suezCanal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.suezCanalUniversityEgypt,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppLocalizations.of(context)!
                            .facultyOfComputersAndInformatics,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppLocalizations.of(context)!.computerScience,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${AppLocalizations.of(context)!.gradeGoodDegree}\n${AppLocalizations.of(context)!.graduationProject}\n',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.attemptedFrom,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CustomContainer(
                  fullWidth: MediaQuery.of(context).size.width * 1 / 3,
                  fullHeight: MediaQuery.of(context).size.width < 1800 ? 700 : 650 ,
                  height: MediaQuery.of(context).size.width < 1800 ? 600 :  470,
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  avatarImg: AssetsConst.flutter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.flutterFramework,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppLocalizations.of(context)!.theCompleteGuide,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppLocalizations.of(context)!
                            .theCompleteGuideDescription,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppLocalizations.of(context)!.bootCampWithDart,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppLocalizations.of(context)!
                            .bootCampWithDartDescription,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
