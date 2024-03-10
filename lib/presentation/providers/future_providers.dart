import 'package:flutter_rivepord_providers/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonNameProvider = FutureProvider<String>((ref) async {
  
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
  
});

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});
