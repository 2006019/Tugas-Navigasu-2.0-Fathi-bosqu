import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_lima/configs/app_routes.dart';
import 'package:pertemuan_lima/models/user.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, Selamat datang",
            ),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            user.profileImage ??
                "https://www.msahq.org/wp-content/uploads/2016/12/default-avatar.png",
          ),
        ),
      ],
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        menuItem(
          iconData: Icons.home_rounded,
          label: "House",
        ),
        menuItem(
          iconData: Icons.apartment_rounded,
          label: "Apartment",
        ),
        menuItem(
          iconData: Icons.landscape_rounded,
          label: "Land",
        ),
        menuItem(
          iconData: Icons.location_city_rounded,
          label: "Townhouse",
        ),
      ],
    );
  }

  Widget menuItem({
    required IconData iconData,
    required String label,
  }) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 72,
        maxWidth: 72,
        minHeight: 72,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              iconData,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 14,
      ),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        isDense: true,
        hintText: "Masukkan pencarian disini",
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
          gapPadding: 0,
        ),
        suffixIcon: const Icon(
          Icons.search,
          size: 20,
        ),
      ),
    );
  }
}

class ExpandedSectionWidget extends StatelessWidget {
  const ExpandedSectionWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          label: "Latest Info",
        ),
        const SizedBox(
          height: 8,
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: (size.width - 32) * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                image: const DecorationImage(
                  image: NetworkImage(
                    "data:image/jpeg;base64,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",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  "",
                ),
              ),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "REZIM PUAN MAHARANI KEPADA RAKYAT INDONESIA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const Icon(
          Icons.chevron_right_rounded,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({
    super.key,
    required this.size,
    required this.categories,
  });

  final Size size;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          label: "Constrained Box",
        ),
        const SizedBox(
          height: 8,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.expand(
            width: size.width,
            height: (size.width * 0.2) * 2 + 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < 2; i++)
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).goNamed(
                          AppRoutes.newsDetail,
                          params: {
                            "id": "$i",
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 0,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: size.width * 0.2,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://picsum.photos/400",
                                  ),
                                ),
                              ),
                              child: const AspectRatio(
                                aspectRatio: 1 / 1,
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Viral!! Puan Maharani Berbadan Tikus, BEM UI Sebut Kritik Keras DPR RI, Melki: Pahami!",
                                  maxLines: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Aspect Ratio",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://picsum.photos/400",
                    ),
                  ),
                ),
                child: const AspectRatio(
                  aspectRatio: 1 / 1,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/1080/607",
                  ),
                ),
              ),
              child: const AspectRatio(
                aspectRatio: 16 / 9,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PopularSectionWidget extends StatelessWidget {
  const PopularSectionWidget({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Most Popular",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: categories.map((e) => wrapItem(e)).toList(),
        ),
      ],
    );
  }

  Widget wrapItem(String label) {
    return Chip(
      label: Text(
        label,
      ),
    );
  }
}
