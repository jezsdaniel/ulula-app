import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';

class EventBody extends StatelessWidget {
  const EventBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Column(
        children: [
          Text(
            'Concierto Chacal - estreno especial “Coraza azul”',
            style: AppTextStyles.bold20.copyWith(
              color: AppColors.color2,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 8,
          ),
          Text(
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
            style: AppTextStyles.regular16.copyWith(
              color: AppColors.color3,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 48,
          ),
          const InfoContainer(
            leading: Icon(
              Icons.calendar_today_outlined,
              color: AppColors.color4,
            ),
            title: 'Vie, 14 Dic. 10:30P',
            subtitle1: 'Inicio',
            subtitle2: 'Fecha y Hora',
          ),
          const SizedBox(
            width: double.infinity,
            height: 12,
          ),
          const InfoContainer(
            leading: Icon(
              Icons.date_range_outlined,
              color: AppColors.color4,
            ),
            title: 'Sab, 15 Dic. 03:30A',
            subtitle1: 'Fin',
            subtitle2: 'Fecha y Hora',
          ),
          const SizedBox(
            width: double.infinity,
            height: 12,
          ),
          Row(
            children: [
              const Expanded(
                child: InfoContainer(
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: AppColors.color4,
                  ),
                  title: 'Cuba, La Habana, Cerro',
                  subtitle1: 'Ubicación',
                  subtitle2: 'Local del Negocio',
                ),
              ),
              const SizedBox(width: 4),
              CircleIconButton(
                size: 60,
                backgroundColor: Colors.transparent,
                borderColor: AppColors.color4,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.color3,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: double.infinity,
            height: 48,
          ),
          const UserInfoCard(),
          const SizedBox(
            width: double.infinity,
            height: 48,
          ),
        ],
      ),
    );
  }
}
