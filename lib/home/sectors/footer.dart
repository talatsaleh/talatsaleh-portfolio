import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xf0000000),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.builtWithFlutter,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                AppLocalizations.of(context)!.sourceCode,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.copyRight,
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
