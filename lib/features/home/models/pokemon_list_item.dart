class PokemonListItem {
  final String name;
  final String url;
  final String type;

  PokemonListItem(
      {required this.name, required this.url, this.type = 'poison'});

  PokemonListItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        url = json['url'],
        type = json['type'];

  PokemonListItem copyWith({
    String? name,
    String? url,
    String? type,
  }) {
    return PokemonListItem(
        name: name ?? this.name, url: url ?? this.url, type: type ?? this.type);
  }

  @override
  String toString() {
    return 'PokemonListItem: name - $name, url - $url, type - $type,';
  }
}
