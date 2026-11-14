class TeamMemberModel {
  const TeamMemberModel({
    required this.index,
    required this.department,
    required this.role,
    required this.name,
    required this.bio,
    required this.tag,
    required this.photoUrl,
  });

  final String index;
  final String department;
  final String role;
  final String name;
  final String bio;
  final String tag;
  final String photoUrl;

  String get initials {
    final parts = name.trim().split(' ');
    final first = parts.first.isNotEmpty ? parts.first[0] : '';
    final last = parts.length > 1 && parts.last.isNotEmpty ? parts.last[0] : '';
    return (first + last).toUpperCase();
  }
}
