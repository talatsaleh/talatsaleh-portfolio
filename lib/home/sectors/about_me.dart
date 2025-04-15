import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';

import '../widgets/custom_head_des.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.aboutMe,
            style: isMobile ? Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ):Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          // width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.aboutMeDescription,
            style: isMobile ? Theme.of(context).textTheme.titleMedium : Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(40),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHeadDes(
                      isMobile: isMobile,
                      head: AppLocalizations.of(context)!.profile,
                      des: AppLocalizations.of(context)!.profileDescription,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomHeadDes(
                            isMobile: isMobile,
                            head: AppLocalizations.of(context)!.fullName,
                            des: AppLocalizations.of(context)!.fullNameAnswer,
                          ),
                        ),
                        Expanded(
                          child: CustomHeadDes(
                            isMobile: isMobile,
                            head: AppLocalizations.of(context)!.gender,
                            des: AppLocalizations.of(context)!.genderAnswer,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomHeadDes(
                            isMobile: isMobile,
                            head:
                                AppLocalizations.of(context)!.currentLocations,
                            des: AppLocalizations.of(context)!
                                .currentLocationsAnswer,
                          ),
                        ),
                        Expanded(
                          child: CustomHeadDes(
                            isMobile: isMobile,
                            head: AppLocalizations.of(context)!.languages,
                            des:
                                '${AppLocalizations.of(context)!.languagesAr}\n${AppLocalizations.of(context)!.languagesEn}',
                          ),
                        )
                      ],
                    ),
                    CustomHeadDes(
                      isMobile: isMobile,
                      head: AppLocalizations.of(context)!.nationality,
                      des: AppLocalizations.of(context)!.nationalityAnswer,
                    ),
                    CustomHeadDes(
                      isMobile: isMobile,
                      head: AppLocalizations.of(context)!.birthday,
                      des: AppLocalizations.of(context)!.birthdayAnswer,
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomHeadDes(
                        head: AppLocalizations.of(context)!.profile,
                        des: AppLocalizations.of(context)!.profileDescription,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomHeadDes(
                            head: AppLocalizations.of(context)!.fullName,
                            des: AppLocalizations.of(context)!.fullNameAnswer,
                          ),
                          CustomHeadDes(
                            head: AppLocalizations.of(context)!.gender,
                            des: AppLocalizations.of(context)!.genderAnswer,
                          ),
                          CustomHeadDes(
                            head:
                                AppLocalizations.of(context)!.currentLocations,
                            des: AppLocalizations.of(context)!
                                .currentLocationsAnswer,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomHeadDes(
                            head: AppLocalizations.of(context)!.languages,
                            des:
                                '${AppLocalizations.of(context)!.languagesAr}\n${AppLocalizations.of(context)!.languagesEn}',
                          ),
                          CustomHeadDes(
                            head: AppLocalizations.of(context)!.nationality,
                            des:
                                AppLocalizations.of(context)!.nationalityAnswer,
                          ),
                          CustomHeadDes(
                            head: AppLocalizations.of(context)!.birthday,
                            des: AppLocalizations.of(context)!.birthdayAnswer,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
