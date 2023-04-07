part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object?> get props => [];
}

enum ListStatus { initial, success, failure }

class ListState extends HomeState {
  final ListStatus status;
  final List<PokemonListItem> pokemonList;
  final bool hasReachedMax;

  const ListState({
    this.status = ListStatus.initial,
    this.pokemonList = const <PokemonListItem>[],
    this.hasReachedMax = false,
  });

  ListState copyWith(
      {ListStatus? status,
      List<PokemonListItem>? pokemonList,
      bool? hasReachedMax}) {
    return ListState(
        status: status ?? this.status,
        pokemonList: pokemonList ?? this.pokemonList,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }

  @override
  String toString() {
    return 'ListState { status: $status, hasReachedMax: $hasReachedMax, pokemonListLength: ${pokemonList.length}}';
  }

  @override
  List<Object?> get props => [status, hasReachedMax, pokemonList];
}

// class PokemonInitial extends HomeState {}

// class PokemonLoading extends HomeState {}

// class PokemonLoaded extends HomeState {}

// class PokemonError extends HomeState {}
