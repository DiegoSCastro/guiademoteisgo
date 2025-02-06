import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      child: Column(
        spacing: 4,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
              AppSnackbar.pending(context);
            },
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.theme.primaryColorLight,
                    context.theme.primaryColor,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.check_box,
                        color: context.theme.cardColor,
                      ),
                      Expanded(
                        child: Text(
                          'go fidelidade',
                          style: context.textTheme.titleLarge
                              ?.copyWith(color: context.theme.cardColor),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.theme.cardColor,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: context.theme.primaryColor,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'acumule selinhos e troque por reservas grátis. vale em todos os motéis e horários',
                    style: context.textTheme.labelSmall
                        ?.copyWith(color: context.theme.cardColor),
                  ),
                ],
              ),
            ),
          ),
          const _DrawerOptionButton(
            icon: Icons.person_outline_rounded,
            label: 'login',
          ),
          const _DrawerOptionButton(
            icon: Icons.data_saver_on,
            label: 'ajuda',
          ),
          const _DrawerOptionButton(
            icon: Icons.settings_outlined,
            label: 'configurações',
          ),
          const _DrawerOptionButton(
            icon: Icons.bug_report_outlined,
            label: 'comunicar problema',
          ),
          const _DrawerOptionButton(
            icon: Icons.campaign_outlined,
            label: 'tem um motel? faça parte',
          ),
        ],
      ),
    );
  }
}

class _DrawerOptionButton extends StatelessWidget {
  const _DrawerOptionButton({
    required this.icon,
    required this.label,
    this.onTap,
  });
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            context.pop();
            AppSnackbar.pending(context);
          },
      child: DecoratedBox(
        decoration: BoxDecoration(color: context.theme.cardColor),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            spacing: 8,
            children: [
              Icon(icon),
              Expanded(
                child: Text(
                  label,
                  style: context.textTheme.bodyLarge,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
