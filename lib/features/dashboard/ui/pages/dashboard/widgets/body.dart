import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.color4,
                side: const BorderSide(
                  color: AppColors.color4,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(92),
                ),
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.calendar_today_outlined),
                  SizedBox(width: 12),
                  Expanded(child: Text('Eventos')),
                  SizedBox(width: 12),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
          ),
          const SizedBox(height: 48),
          SizedBox(
            width: double.infinity,
            child: DottedButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.link_outlined,
                    color: AppColors.color4,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Enlaces',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.color4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.workspace_premium_outlined,
                    color: AppColors.color1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: DottedButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.payments_outlined,
                    color: AppColors.color4,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Pagos',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.color4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.workspace_premium_outlined,
                    color: AppColors.color1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: DottedButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.restaurant_outlined,
                    color: AppColors.color4,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Menú',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.color4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.workspace_premium_outlined,
                    color: AppColors.color1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: DottedButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.rss_feed_outlined,
                    color: AppColors.color4,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Blog',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.color4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.workspace_premium_outlined,
                    color: AppColors.color1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: DottedButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.color4,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Tienda',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.color4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.workspace_premium_outlined,
                    color: AppColors.color1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
