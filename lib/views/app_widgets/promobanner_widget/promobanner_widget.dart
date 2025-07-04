import 'package:flutter/material.dart';

import '../../../core/controller/components/promonanner/promobanner.dart';
import '../../../core/controller/utils/app_images/app_images.dart';
import '../../../data/models/promobanner_model/promobanner_model.dart';

class PromoBannerCarousel extends StatefulWidget {
  const PromoBannerCarousel({super.key});

  @override
  State<PromoBannerCarousel> createState() => _PromoBannerCarouselState();
}

class _PromoBannerCarouselState extends State<PromoBannerCarousel> {
  final List<PromoData> _promoList = [
    PromoData(
      title: 'Consult A Doctor',
      subtitle: 'Trusted doctor on your schedule 😉 ',
      imageUrl: AppImages.doctorimage,
      doctorCount: '8K+ Active Doctors',
    ),
    PromoData(
      title: '24/7 Support',
      subtitle: 'Talk to doctors anytime',
      imageUrl: AppImages.backgroundimage,
      doctorCount: '24h Doctor Access',
    ),
    PromoData(
      title: 'Book Instantly',
      subtitle: 'Skip the waiting room',
      imageUrl: AppImages.doctor1,
      doctorCount: 'Instant Booking',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.9),
        itemCount: _promoList.length,
        itemBuilder: (context, index) {
          final promo = _promoList[index];
          return PromoBanner(
            title: promo.title,
            subtitle: promo.subtitle,
            imageUrl: promo.imageUrl,
            doctorCount: promo.doctorCount,
          );
        },
      ),
    );
  }
}
