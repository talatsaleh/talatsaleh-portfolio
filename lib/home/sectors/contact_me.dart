import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/const/assets.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context)!.contactMe,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context)!.contactMeAnswer,
              style: isMobile
                  ? Theme.of(context).textTheme.titleMedium
                  : Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //     color: Theme.of(context).colorScheme.secondary),
                ),
                child: Image.asset(AssetsConst.facebook),
              ),
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //     color: Theme.of(context).colorScheme.secondary),
                ),
                child: Image.asset(AssetsConst.github),
              ),
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //     color: Theme.of(context).colorScheme.secondary),
                ),
                child: Image.asset(AssetsConst.linkedIn),
              ),

            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
