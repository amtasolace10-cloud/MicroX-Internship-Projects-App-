/// Route names. Teammates add their own screens here
/// (work, studio, team, community, careers, portal).
class AppRoutes {
  AppRoutes._();

  static const String home = '/';
  static const String services = '/services';
  static const String work = '/work';
  static const String studio = '/studio';
  static const String team = '/team';
  static const String community = '/community';
  static const String careers = '/careers';
  static const String insights = '/insights';
  static const String portal = '/portal';
  static const String contact = '/contact';
  static const String verify = '/verify';
  static const String privacy = '/privacy';

  static String titleFor(String? route) {
    switch (route) {
      case work:
        return 'Work';
      case studio:
        return 'Studio';
      case team:
        return 'Team';
      case community:
        return 'Community';
      case careers:
        return 'Careers';
      case insights:
        return 'Insights';
      case portal:
        return 'Team Portal';
      case contact:
        return 'Contact';
      case verify:
        return 'Verify a certificate';
      case privacy:
        return 'Privacy';
      default:
        return 'MicroX';
    }
  }
}
