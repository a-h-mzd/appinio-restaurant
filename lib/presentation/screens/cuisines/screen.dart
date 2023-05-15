import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/components/text_field.dart';
import 'package:appinio_restaurant/presentation/helper/hero_tag.dart';
import 'package:appinio_restaurant/presentation/screens/cuisines/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CuisinesScreen extends StatelessWidget with AutoRouteWrapper {
  const CuisinesScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider<CuisinesProvider>(
      create: injectProvider,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final CuisinesProvider provider = context.watch();

    final cuisines = provider.cuisines;

    if (cuisines == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: AppinioTextField(
              autocorrect: false,
              onChanged: provider.onSearchTermChanged,
              placeholder: context.localizations.search,
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          if (cuisines.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Text(context.localizations.noCuisinesAvailable),
              ),
            )
          else
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: cuisines.length,
                itemBuilder: (context, index) {
                  final cuisine = cuisines[index];
                  return GestureDetector(
                    onTap: () => provider.onCuisineTap(cuisine),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Center(
                            child: Hero(
                              tag: HeroTagHelper.cuisineImage(cuisine),
                              child: CachedNetworkImage(
                                imageUrl: cuisine.image,
                                imageBuilder: (context, imageProvider) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image(image: imageProvider),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          cuisine.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
