import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

class ImagesCarousel extends StatefulWidget {
  const ImagesCarousel({
    super.key,
    required this.images,
    required this.height,
  });

  final List<String> images;
  final double height;

  @override
  State<ImagesCarousel> createState() => _ImagesCarouselState();
}

class _ImagesCarouselState extends State<ImagesCarousel> {
  late final PageController _controller = PageController(
    initialPage: _currentPage,
  )..addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: SizedBox(
              width: double.infinity,
              height: widget.height,
              child: PageView.builder(
                controller: _controller,
                itemBuilder: (context, index) {
                  return Image.asset(
                    widget.images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: widget.height,
                  );
                },
                itemCount: widget.images.length,
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.images.length,
                  (index) => Flexible(
                    child: Container(
                      width: double.infinity,
                      height: 4,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: _currentPage == index
                            ? AppColors.color6
                            : AppColors.color6.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
