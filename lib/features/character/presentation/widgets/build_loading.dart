import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildLoading() {
  return ListView.builder(
    itemCount: 6,
    itemBuilder: (_, __) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Row(
          children: [
            Container(
              width: 80, height: 80,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius:
              BorderRadius.circular(8)),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 16, color: Colors.white, margin: const EdgeInsets.only(bottom: 8)),
                  Container(height: 14, width: 150, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}