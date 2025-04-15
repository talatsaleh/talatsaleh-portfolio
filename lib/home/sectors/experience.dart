import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../widgets/costum_container.dart';

class Experience extends StatelessWidget {
  const Experience({super.key, required this.isMobile, required this.width});
  final bool isMobile;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.experience,
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
          padding: const EdgeInsets.symmetric(horizontal: 40),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            AppLocalizations.of(context)!.experienceProjectsAnswer,
              style: isMobile ? Theme.of(context).textTheme.titleMedium : Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        CustomContainer(
          fullHeight: 650,
          height: 600,
          width: MediaQuery.of(context).size.width - 80,
          fullWidth: MediaQuery.of(context).size.width - 80,
          rotation: .05,
          child: Padding(
            padding: isMobile ? const EdgeInsets.symmetric(horizontal: 10) : const EdgeInsets.symmetric(horizontal: 40),
            child: isMobile ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.noteIt,
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                          fontSize: width < 730 ? Theme.of(context).textTheme.bodyMedium!.fontSize : Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.noteItDescription,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: isMobile ? Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                          fontSize: width < 730 ? Theme.of(context).textTheme.bodySmall!.fontSize : Theme.of(context).textTheme.titleSmall!.fontSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ) : Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.postsApp,
                        style: isMobile ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                          fontSize: width < 730 ? Theme.of(context).textTheme.bodyMedium!.fontSize : Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ) :Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.postsAppDescription,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                          fontSize: width < 730 ? Theme.of(context).textTheme.bodySmall!.fontSize : Theme.of(context).textTheme.titleSmall!.fontSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.docApp,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                          fontSize: width < 730 ? Theme.of(context).textTheme.bodyMedium!.fontSize : Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.docAppDescription,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
    fontSize: width < 730 ? Theme.of(context).textTheme.bodySmall!.fontSize : Theme.of(context).textTheme.titleSmall!.fontSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                        AppLocalizations.of(context)!.toViewMoreSeeMyGitHub),
                  ),
                ),
              ],
            ): Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.noteIt,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(
                          AppLocalizations.of(context)!.noteItDescription,
                          style: isMobile ? Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ) : Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.postsApp,
                          style: isMobile ? Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ) :Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(
                          AppLocalizations.of(context)!.postsAppDescription,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.docApp,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(
                          AppLocalizations.of(context)!.docAppDescription,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                        AppLocalizations.of(context)!.toViewMoreSeeMyGitHub),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
