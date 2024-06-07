import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterBarWidget extends StatefulWidget {
  const SearchFilterBarWidget({super.key});

  @override
  State<SearchFilterBarWidget> createState() => _SearchFilterBarWidgetState();
}

class _SearchFilterBarWidgetState extends State<SearchFilterBarWidget> {
  @override
  Widget build(BuildContext context) {
    String? selectedLabel = 'Popular';
    bool popular = true;
    bool nearby = false;
    bool recommend = false ;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // IconButton(
              //   icon: const Icon(Icons.search),
              //   onPressed: () {
              //     // Handle search button press
              //   },
              // ),
              Container(
                padding: EdgeInsets.only(left: 8.w),
                decoration: BoxDecoration(
              color:  Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
              color: Colors.grey,
              width: 1.0,
              ),),
                height: 31.h,
                width: 265.w,
                child: const TextField(
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search properties',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  // Handle filter button press
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilterButton(
                label: 'Popular',
                isSelected: selectedLabel == 'Popular' ? true : false,
                onTap: () {
                  setState(() {
                    selectedLabel = 'Popular';
                  });
                },
              ),
              FilterButton(
                label: 'Nearby',
                isSelected: selectedLabel == 'Nearby' ? true : false,
                onTap: () {
                  setState(() {
                    selectedLabel = 'Nearby';
                  });
                },
              ),
              FilterButton(
                label: 'Recommend',
                isSelected: selectedLabel == 'Recommend' ? true : false,
                onTap: () {
                  setState(() {
                    selectedLabel = 'Recommend';
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  FilterButton({super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: isSelected ? Colors.black : Colors.grey,
            width: 1.0,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
