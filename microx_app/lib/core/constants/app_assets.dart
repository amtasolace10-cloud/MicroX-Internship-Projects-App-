/// Image links used by the website. They load from the internet.
/// Offline use: download these files into assets/images/ and switch to Image.asset.
class AppAssets {
  AppAssets._();

  static const String site = 'https://microxtechcompany.com';
  static const String mountains = '$site/microx-mountains.webp';
  static const String workspace = '$site/microx-workspace.webp';

  static const String ceoPhoto =
      '$site/api/team/photos/ceo/f3284e15-2a47-413a-9bc0-a4fd66a46a49';
  static const String managerPhoto =
      '$site/api/team/photos/manager/29d35101-49ab-416d-a0ef-003bc78276b3';
  static const String teamLeadPhoto =
      '$site/api/team/photos/team_lead/3f31aba1-baf1-431c-b03c-00a2fd74e0db';
}
