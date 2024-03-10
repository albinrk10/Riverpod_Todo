import 'package:flutter_rivepord_providers/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonNameProvider = FutureProvider<String>((ref) async {
  final pokemonName = await PokemonInformation.getPokemonName(1);
  return pokemonName;
  
});
