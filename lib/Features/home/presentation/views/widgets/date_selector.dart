import 'package:flutter/material.dart';
import 'package:nurtotrack/constants.dart';

Widget buildDateSelector() {
    int daysInMonth = 30; 
    List<String> dates = List.generate(daysInMonth, (index) => "${index + 1}");
    
    return Container(
      color: Colors.white,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          bool isToday = dates[index] == DateTime.now().day.toString();
          
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {

                       },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: isToday ? MyColors.kPrimaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color.fromARGB(255, 211, 203, 203)),
                ),
                child: Text(
                  isToday? "Today" : dates[index],
                  style: TextStyle(color: isToday ? Colors.white : Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }