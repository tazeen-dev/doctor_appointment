
import 'package:flutter/material.dart';

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
      subtitle: 'Get expert care from home',
      imageUrl: 'https://placehold.co/80x80/FFFFFF/3B82F6?text=Doc1',
      doctorCount: '8K+ Active Doctors',
    ),
    PromoData(
      title: '24/7 Support',
      subtitle: 'Talk to doctors anytime',
      imageUrl: 'https://placehold.co/80x80/FFFFFF/06B6D4?text=Doc2',
      doctorCount: '24h Doctor Access',
    ),
    PromoData(
      title: 'Book Instantly',
      subtitle: 'Skip the waiting room',
      imageUrl: 'https://placehold.co/80x80/FFFFFF/F59E0B?text=Doc3',
      doctorCount: 'Instant Booking',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
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
