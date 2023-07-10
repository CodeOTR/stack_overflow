import 'package:flutter/material.dart';

ValueNotifier<bool> acknowledgeGlobalMessage = ValueNotifier<bool>(false);


class Question57069641 extends StatelessWidget {
  const Question57069641({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ValueListenableBuilder<bool>(
            valueListenable: acknowledgeGlobalMessage,
            builder: (context, acknowledged, _) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  child ?? const SizedBox(),
                  if (!acknowledged)
                    Positioned(
                      top: MediaQuery.of(context).padding.top + kToolbarHeight,
                      right: 0,
                      left: 0,
                      child: Dismissible(
                        onDismissed: (_) {
                          acknowledgeGlobalMessage.value = true;
                        },
                        key: const Key('global_message'),
                        child: Material(
                          child: ListTile(
                            tileColor: Colors.blue,
                            title: Text('There is a new version available!'),
                            trailing: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Update',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                    ),
                ],
              );
            });
      },
      home: const Question57069641(),
    );
  }
}
