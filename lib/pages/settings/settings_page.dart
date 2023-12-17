import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              centerTitle: true,
              leading: InkWell(
                onTap: () => context.pop(),
                child: UnconstrainedBox(
                  child: Image.asset(
                    'assets/back_button.png',
                    height: 50,
                  ),
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2E2E2E),
                ),
              ),
              pinned: true,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 24),
                    SetTile(
                      path: 'assets/settings_1.svg',
                      title: 'Privacy Policy',
                      onTap: () {},
                    ),
                    SetTile(
                      path: 'assets/settings_2.svg',
                      title: 'Terms of use',
                      onTap: () {},
                    ),
                    SetTile(
                      path: 'assets/settings_3.svg',
                      title: 'Support',
                      onTap: () {},
                    ),
                    SetTile(
                      path: 'assets/settings_4.svg',
                      title: 'Rate app',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SetTile extends StatelessWidget {
  const SetTile({
    super.key,
    required this.path,
    required this.title,
    required this.onTap,
  });

  final String path;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            SvgPicture.asset(
              path,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF2E2E2E),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
