import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:islamk/cubit/cubit.dart';
import 'package:islamk/cubit/states.dart';

class KsasKholafaaScreen extends StatelessWidget {
  const KsasKholafaaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<AppCubit>(context),
      child: BlocConsumer<AppCubit, AppState>(
          builder: (context, state) => Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: Text(""),
              backgroundColor: Colors.transparent,
              elevation: 0,
              // backgroundColor: HexColor('#3a8695'),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(""),
                ],
              ),
            ),
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/kha.jpg'),
                    fit: BoxFit.fitHeight,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, state) => const SizedBox(height: 20),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 7.0, color: Colors.lightBlue.shade50),
                        bottom: BorderSide(width: 7.0, color: Colors.lightBlue.shade900),
                        right: BorderSide(width: 7.0, color: Colors.lightBlue.shade900),
                        left: BorderSide(width: 7.0, color: Colors.lightBlue.shade900),
                      ),                             ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                      AppCubit.get(context)
                                          .kholafaaModel[index]
                                          .khalifa ??
                                          "",
                                      style: TextStyle(
                                          fontFamily: "MyFont",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                decoration: const BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50))),
                              ),
                            ),
                          ),
                          if (AppCubit.get(context)
                              .kholafaaModel[index]
                              .part1!
                              .isNotEmpty)
                            Column(
                              children: [
                                const Text(
                                  "الجزء الأول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "MyFont",
                                      fontSize: 20,
                                      height: 1.4),
                                  textDirection: TextDirection.rtl,
                                ),
                                const SizedBox(height: 5,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: HexColor('#3a8695'),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: Text(
                                      AppCubit.get(context)
                                          .kholafaaModel[index]
                                          .part1 ??
                                          "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "MyFont",
                                          fontSize: 20,
                                          height: 1.4),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(height: 15),
                          if (AppCubit.get(context)
                              .kholafaaModel[index]
                              .part2!
                              .isNotEmpty)
                            Column(
                              children: [
                                const Text(
                                  "الجزء الثاني",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "MyFont",
                                      fontSize: 20,
                                      height: 1.4),
                                  textDirection: TextDirection.rtl,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  decoration:  BoxDecoration(
                                      color: HexColor('#3a8695'),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: Text(
                                      AppCubit.get(context)
                                          .kholafaaModel[index]
                                          .part2 ??
                                          "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "MyFont",
                                          fontSize: 20,
                                          height: 1.4),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 15),
                          if (AppCubit.get(context)
                              .kholafaaModel[index]
                              .part3!
                              .isNotEmpty)
                            Column(
                              children: [
                                const Text(
                                  "الجزء الثالث",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "MyFont",
                                      fontSize: 20,
                                      height: 1.4),
                                  textDirection: TextDirection.rtl,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  decoration:  BoxDecoration(
                                      color: HexColor('#3a8695'),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: Text(
                                      AppCubit.get(context)
                                          .kholafaaModel[index]
                                          .part3 ??
                                          "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "MyFont",
                                          fontSize: 20,
                                          height: 1.4),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 15),
                          if (AppCubit.get(context)
                              .kholafaaModel[index]
                              .part4!
                              .isNotEmpty)
                            Column(
                              children: [
                                const Text(
                                  "الجزء الرابع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "MyFont",
                                      fontSize: 20,
                                      height: 1.4),
                                  textDirection: TextDirection.rtl,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  decoration:  BoxDecoration(
                                      color: HexColor('#3a8695'),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: Text(
                                      AppCubit.get(context)
                                          .kholafaaModel[index]
                                          .part4 ??
                                          "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "MyFont",
                                          fontSize: 20,
                                          height: 1.4),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: AppCubit.get(context).kholafaaModel.length,
                ),
              ),
            ),
          ),
          listener: (context, state) {}),
    );
  }
}
