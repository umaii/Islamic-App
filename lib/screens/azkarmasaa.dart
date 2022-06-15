import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:islamk/cubit/cubit.dart';
import 'package:islamk/cubit/states.dart';

class AzkarMasaaScreen extends StatelessWidget {
  const AzkarMasaaScreen({Key? key}) : super(key: key);

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
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/kha.jpg'),
                    fit: BoxFit.fitHeight,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  separatorBuilder: (context, state) => SizedBox(height: 20),
                  itemBuilder: (context, index) => Container(
                    child: Container(
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
                            if (AppCubit.get(context)
                                .azkarMsaaModel[index]
                                .zekr!
                                .isNotEmpty)

                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor('#3a8695'),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25))),
                                child: Padding(
                                  padding: const EdgeInsets.all(19.0),
                                  child: Text(
                                    AppCubit.get(context)
                                        .azkarMsaaModel[index]
                                        .zekr ??
                                        "",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "MyFont",
                                        fontSize: 20,
                                        height: 1.4),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                            Row(
                              children: [

                                Text(
                                  AppCubit.get(context)
                                      .azkarMsaaModel[index]
                                      .repeat.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      // fontFamily: "MyFont",
                                      fontSize: 20,
                                      height: 1.4),
                                  textDirection: TextDirection.rtl,
                                ),
                                const Text(
                                  "التكرار : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "MyFont",
                                      fontSize: 20,
                                      height: 1.4),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                            ),
                            const SizedBox(height: 15),
                            if (AppCubit.get(context)
                                .azkarMsaaModel[index]
                                .bless!
                                .isNotEmpty)
                              Container(
                                decoration:  BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25))),
                                child: Padding(
                                  padding: const EdgeInsets.all(19.0),
                                  child: Text(
                                    "- ${AppCubit.get(context).azkarMsaaModel[index].bless??""}",
                                    style: const TextStyle(
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
                      ),
                    ),
                  ),
                  itemCount: AppCubit.get(context).azkarMsaaModel.length,
                ),
              ),
            ),
          ),
          listener: (context, state) {}),
    );
  }
}
