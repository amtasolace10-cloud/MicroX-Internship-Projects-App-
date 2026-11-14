class NavItemModel {
  const NavItemModel({required this.label, this.route, this.externalUrl});

  final String label;
  final String? route; // opens an app screen
  final String? externalUrl; // opens in the browser
}
