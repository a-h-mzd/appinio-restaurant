import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/components/cupertino_sliver_navigation_bar.dart';
import 'package:appinio_restaurant/presentation/helper/hero_tag.dart';
import 'package:appinio_restaurant/presentation/screens/cuisine/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CuisineScreen extends StatelessWidget with AutoRouteWrapper {
  final CuisineModel cuisine;

  const CuisineScreen({
    super.key,
    required this.cuisine,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider<CuisineProvider>(
      create: injectProvider.using(cuisine),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final CuisineProvider provider = context.read();

    final cuisine = provider.cuisine;
    final ingredients = cuisine.ingredients;
    final procedure = cuisine.procedure;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            TodoSliverNavigationBar(
              title: cuisine.name,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
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
            SliverToBoxAdapter(
              child: Text(
                context.localizations.ingredients,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList.separated(
                itemCount: ingredients.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final ingredient = ingredients[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('- '),
                      Expanded(child: Text(ingredient)),
                    ],
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(),
            ),
            SliverToBoxAdapter(
              child: Text(
                context.localizations.procedure,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList.separated(
                itemCount: procedure.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final procedureItem = procedure[index];
                  final procedureNumber = index + 1;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$procedureNumber. '),
                      Expanded(child: Text(procedureItem)),
                    ],
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).viewPadding.bottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
