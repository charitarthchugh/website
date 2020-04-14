

I have a ListView in Flutter that I allow users to dynamically add items to. After adding an item I would like for the list to scroll to the item that was added. I've attached a ScrollController to the ListView so I could use animateTo to scroll, but I'm unsure of how to determine the offset to scroll down to. I had something like this:
```

_scrollController.animateTo(
    addedIndex.toDouble() * 100,
    curve: Curves.easeOut,
    duration: const Duration(milliseconds: 300),
);
```
where addedIndex is the order that the item was added to the list. That doesn't quite work though, and seems like it would only work if I could figure out the height of each item in the list, which I'm not sure how to do. Is there a better way to figure out exactly where to scroll to?






First, create a new globalKey.

`final GlobalKey globalKey = GlobalKey();`

Second, add globalKey to the widget you want to move to.

Then, get the widget location based on globalKey.

``RenderBox box = globalKey.currentContext.findRenderObject();
Offset offset = box.localToGlobal(Offset.zero);``

The widget position obtained is relative to the current page display status , widget height includes status bar and AppBar height.

status bar height

``import `dart:ui’; 
MediaQueryData.fromWindow(window).padding.top``

AppBar height 56.0

scrollView`s offset need to add
```
double animationHeight = _controller.offset + offset.dy - MediaQueryData.fromWindow(window).padding.top - 56.0;
_controller.animateTo(animationHeight, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
```

hope it will help you.

