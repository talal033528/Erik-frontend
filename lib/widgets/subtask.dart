import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class SubAssignTask extends StatelessWidget {
  const SubAssignTask({super.key});

  @override
  Widget build(BuildContext context) {
    CalendarFormat calendarFormat = CalendarFormat.month;
    DateTime focusedDay = DateTime.now();
    DateTime? selectedDay;
    final todayDate = DateTime.now();
    final kFirstDay = DateTime(
        DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
    final kLastDay = DateTime(
        DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);

    return Material(
      child: SizedBox(
        width: 725.w,
        child: Column(
          children: [
            Container(
              width: 725.w,
              height: 60.h,
              decoration: const BoxDecoration(color: Color(0xff163300)),
              child: Padding(
                padding: EdgeInsets.only(left: 23.w, right: 23.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Assign Task",
                      style: TextStyle(color: Colors.white, fontSize: 17.sp),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: 18.r,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.close,
                          size: 20.w,
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 242.w,
                    child: Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            20.verticalSpace,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              width: 198.w,
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: "Search",
                                  hintStyle: const TextStyle(
                                      fontSize: 16, color: Color(0xFFB3B1B1)),
                                ),
                                obscureText: false,
                              ),
                            ),
                            20.verticalSpace,
                            SizedBox(
                              width: 198.w,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Text(
                                    "Members",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 750.h,
                              width: 198.w,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 20,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/erickpic.png',
                                              width: 36.w,
                                            ),
                                            1.horizontalSpace,
                                            Text(
                                              'ERICK',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff163300),
                                                  fontSize: 16.sp),
                                            ),
                                          ],
                                        ),
                                        const Icon(
                                          Icons.check_box,
                                          color: Color(0xff163300),
                                        )
                                      ],
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  20.horizontalSpace,
                  Column(
                    children: [
                      20.verticalSpace,
                      SizedBox(
                        width: 400.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.access_time_filled_sharp),
                                2.horizontalSpace,
                                const Text(
                                  'Time',
                                  style: TextStyle(color: Color(0xff163300)),
                                ),
                                const Icon(Icons.arrow_drop_down)
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.access_time_filled_sharp),
                                2.horizontalSpace,
                                const Text(
                                  'Estimated Time :  ',
                                  style: TextStyle(color: Color(0xff163300)),
                                ),
                                SizedBox(
                                  width: 50.w,
                                  height: 30.h,
                                  child: TextField(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0.0, horizontal: 10),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.r)),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.r)),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.r)),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                          borderSide: const BorderSide(
                                            width: 1,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.grey)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.grey)),
                                      hintText: "",
                                      hintStyle: const TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.money),
                                2.horizontalSpace,
                                const Text(
                                  'Price :  ',
                                  style: TextStyle(color: Color(0xff163300)),
                                ),
                                SizedBox(
                                  width: 50.w,
                                  height: 30.h,
                                  child: TextField(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0.0, horizontal: 10),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.r)),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.r)),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.r)),
                                        borderSide: const BorderSide(
                                            width: 1, color: Colors.grey),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                          borderSide: const BorderSide(
                                            width: 1,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.grey)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.grey)),
                                      hintText: "",
                                      hintStyle: const TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      23.verticalSpace,
                      SizedBox(
                        width: 400.w,
                        child: TextField(
                          enabled: false, // to trigger disabledBorder
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(
                                  width: 1,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey)),
                            hintText: "Task Title",
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Color(0xFFB3B1B1)),
                          ),
                          obscureText: false,
                        ),
                      ),
                      23.verticalSpace,
                      SizedBox(
                        width: 400.w,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          minLines: 5, //Normal textInputField will be displayed
                          maxLines:
                              10, // when user presses enter it will adapt to it
                          enabled: false, // to trigger disabledBorder
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(
                                  width: 1,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey)),
                            hintText: "Write your task",
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Color(0xFFB3B1B1)),
                          ),
                          obscureText: false,
                        ),
                      ),
                      23.verticalSpace,
                      SizedBox(
                        width: 400.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Container(
                            //   width: 100.w,
                            //   decoration: BoxDecoration(
                            //       color: const Color(0xff9FE870),
                            //       borderRadius:
                            //           BorderRadius.all(Radius.circular(4.r))),
                            //   child: Padding(
                            //     padding: EdgeInsets.all(9.w),
                            //     child: Center(
                            //       child: Text(
                            //         'ADD SUBTASK',
                            //         style: TextStyle(
                            //             color: Colors.white, fontSize: 14.sp),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // 20.horizontalSpace,
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: const Color(0xff9FE870),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.r))),
                                child: Padding(
                                  padding: EdgeInsets.all(9.w),
                                  child: Center(
                                    child: Text(
                                      'ASSIGN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
