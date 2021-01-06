import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

//TAKEN FROM https://www.nordtheme.com/docs/colors-and-palettes
// All credit goes toward them.

///Nord consists of four named color palettes providing different syntactic meanings and color effects for dark & bright ambiance designs.
///
/// It has been created for clear, uncluttered and elegant designs following
/// a minimal and flat style pattern.
/// For syntax highlighting it aims to ensure an undisturbed focus on
/// important parts of the code, a good readability and a quick visual distinction between the different syntax elements.
///
/// All colors are numbered from nord0 to nord15 where each palette contains
/// a different amount of colors. The naming convention preserves the compatibility for terminal color schemes and allows an uncomplicated use as base for such.
class Nord {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  // ignore: unused_element
  Nord._();

  //Polar Night

  /// **The origin color or the *Polar Night* palette.**
  ///
  /// For dark ambiance designs, it is used for background and area coloring
  /// while it's not used for syntax highlighting at all because otherwise it
  /// would collide with the same background color.
  ///
  ///For bright ambiance designs, it is used for base elements like plain text,
  ///the text editor caret and reserved syntax characters like curly- and
  ///square brackets.
  ///It is rarely used for passive UI elements like borders, but might be
  ///possible to achieve a higher contrast and better visual distinction
  ///(harder/not flat) between larger components.
  static const Color nord0 = const Color(0xff2e3440);

  ///**A brighter shade color based on [nord0].**
  ///
  ///For *dark ambiance* designs it is used for elevated, more prominent or
  ///focused UI elements like:
  /// * status bars and text editor gutters
  /// * panels, modals and floating popups like notifications or auto completion
  /// * user interaction/form components like buttons, text/select fields or
  /// checkboxes
  ///
  ///It also works fine for more inconspicuous and passive elements like
  ///borders or as dropshadow between different components.
  ///There's currently no official port project that makes use of it for syntax
  ///highlighting.

  ///For *bright ambiance* designs, it is used for more subtle/inconspicuous UI
  ///text elements that do not need so much visual attention.
  ///Other use cases are also state animations like a more brighter text color
  ///when a button is hovered, active or focused.
  static const Color nord1 = const Color(0xff3b4252);

  ///**An even more brighter shade color of [nord0].**
  ///
  /// For *dark ambiance designs*, it is used to colorize the currently
  /// active
  /// text editor line as well as selection- and text highlighting color.
  /// For both bright & dark ambiance designs it can also be used as an
  /// brighter variant for the same target elements like [nord1].
  static const Color nord2 = const Color(0xff434c5e);

  ///**The brightest shade color based on [nord0].**
  ///
  /// For *dark ambiance designs,* it is used for UI elements like indent- and
  /// wrap guide marker.
  /// In the context of code syntax highlighting it is used for comments and
  /// invisible/non-printable characters.
  ///
  /// For bright ambiance designs, it is, next to [nord1] and [nord2] as darker
  /// variants, also used for the most subtle/inconspicuous UI text elements that do not need so much visual attention.
  static const Color nord3 = const Color(0xff4c566a);

  //Snow Storm
  /// **The origin color or the *Snow Storm* palette.**
  ///
  /// For *dark ambiance* designs, it is used for UI elements like the text
  /// editor caret. In the context of syntax highlighting it is used as text
  /// color for variables, constants, attributes and fields.
  ///
  /// For *bright ambiance* designs, it is used for elevated, more prominent or
  /// focused UI elements like
  /// * status bars and text editor gutters
  /// * panels, modals and floating popups like notifications or auto completion
  /// * user interaction/form components like buttons, text/select fields or
  /// checkboxes
  /// It also works fine for more inconspicuous and passive elements like
  /// borders or as dropshadow between different components.
  /// In the context of syntax highlighting it's not used at all.


  static const Color nord4 = const Color(0xffd8dee9);
  /// **A brighter shade color of `nord4`.**
  ///
  /// For *dark ambiance* designs, it is used for more subtle/inconspicuous UI
  /// text elements that do not need so much visual attention.
  /// Other use cases are also state animations like a more brighter text
  /// color when a button is hovered, active or focused.
  ///
  /// For *bright ambiance* designs, it is used to colorize the currently
  /// active text editor line as well as selection- and text highlighting color.
  static const Color nord5 = const Color(0xffe5e9f0);
  /// *The brightest shade color based on `nord4`.*
  ///
  /// For dark ambiance designs, it is used for elevated UI text elements
  /// that require more visual attention.
  /// In the context of syntax highlighting it is used as text color for
  /// plain text as well as reserved and structuring syntax characters like
  /// curly- and square brackets.
  ///
  /// For bright ambiance designs, it is used as background and area coloring
  /// while it's not used for syntax highlighting at all because otherwise
  /// it would collide with the same background color.
  static const Color nord6 = const Color(0xffeceff4);

  //Frost
  static const Color nord7 = const Color(0xff8fbcbb);
  static const Color nord8 = const Color(0xff88c0d0);
  static const Color nord9 = const Color(0xff81a1c1);
  static const Color nord10 = const Color(0xff5e81ac);
  //Aurora
  static const Color nord11 = const Color(0xffbf6161a);
  static const Color nord12 = const Color(0xffd08770);
  static const Color nord13 = const Color(0xffebcb8b);
  static const Color nord14 = const Color(0xffa3be8c);
  static const Color nord15 = const Color(0xffb48ead);
}
