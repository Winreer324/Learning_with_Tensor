import 'package:flutter/material.dart';

class LessonFour extends StatefulWidget {
  @override
  _LessonFourState createState() => _LessonFourState();
}

class _LessonFourState extends State<LessonFour>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar makeTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.settings_power),
        ),
      ],
      controller: tabController,
    );
  }

  TabBarView makeTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Steppers so good!!! so beautiful'),
        backgroundColor: Colors.grey,
        bottom: makeTabBar(),
      ),
      body: makeTabBarView(<Widget>[TheGridView().build(), SimpleWidget()]),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int stepCounter = 0;

  List<Step> steps = [
    Step(
        title: Text('Step one'),
        content: Text('This is the first step'),
        isActive: true),
    Step(
        title: Text('Step two'),
        content: Text('This is the second step'),
        isActive: true,
        state: StepState.editing),
    Step(
        title: Text('Step three'),
        content: Text('This is the third step'),
        isActive: true),
    Step(
        title: Text('Step three'),
        content: Text('This is the third step'),
        isActive: true,
        state: StepState.indexed),
    Step(
        title: Text('Step three'),
        content: Text('This is the third step'),
        isActive: true,
        state: StepState.disabled),
    Step(
        title: Text('Step three'),
        content: Text('This is the third step'),
        isActive: true,
        state: StepState.error),
    Step(
        title: Text('Step four'),
        content: Text('This is the fourth step'),
        isActive: true,
        state: StepState.complete),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stepper(
        currentStep: this.stepCounter,
        steps: steps,
        type: StepperType.vertical,
        onStepTapped: (step) {
          setState(() {
            stepCounter = step;
          });
        },
        onStepCancel: () {
          setState(() {
            stepCounter > 0 ? stepCounter -= 1 : stepCounter = 0;
          });
        },
        onStepContinue: () {
          setState(() {
            stepCounter < steps.length - 1 ? stepCounter += 1 : stepCounter = 0;
          });
        },
      ),
    );
  }
}

class TheGridView {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(
            child: Icon(icon),
          ),
          Center(child: Text(name))
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: <Widget>[
        makeGridCell('Home', Icons.home),
        makeGridCell('Email', Icons.email),
        makeGridCell('Chat', Icons.chat_bubble),
        makeGridCell('New', Icons.new_releases),
        makeGridCell('Network', Icons.network_wifi),
        makeGridCell('Options', Icons.settings),
        makeGridCell('Home', Icons.home),
        makeGridCell('Email', Icons.email),
        makeGridCell('Chat', Icons.chat_bubble),
        makeGridCell('New', Icons.new_releases),
        makeGridCell('Network', Icons.network_wifi),
        makeGridCell('Options', Icons.settings),
      ],
    );
  }
}
