import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

//TAKEN FROM https://www.nordtheme.com/docs/colors-and-palettes
// All credit goes toward them.

/// Nord consists of four named color palettes providing different syntactic
/// meanings and color effects for dark & bright ambiance designs.
///
/// It has been created for clear, uncluttered and elegant designs following
/// a minimal and flat style pattern.
///
/// For syntax highlighting it aims to ensure an undisturbed focus on
/// important parts of the code, a good readability and a quick visual
/// distinction between the different syntax elements.
///
/// All colors are numbered from nord0 to nord15 where each palette contains
/// a different amount of colors. The naming convention preserves the
/// compatibility for terminal color schemes and allows an uncomplicated use as base for such.
class Nord {
  Nord();
}

/// **Polar Night** is made up of four darker colors that are commonly used for
/// base elements like backgrounds or text color in *bright ambiance* designs.

class PolarNight extends Nord {
  /// **The origin color or the *Polar Night* palette.**
  ///
  /// For *dark ambiance* designs, it is used for background and area coloring
  /// while it's not used for syntax highlighting at all because otherwise it
  /// would collide with the same background color.
  ///
  /// For *bright ambiance* designs, it is used for base elements like plain text,
  /// the text editor caret and reserved syntax characters like curly- and
  /// square brackets.
  /// It is rarely used for passive UI elements like borders, but might be
  /// possible to achieve a higher contrast and better visual distinction
  /// (harder/not flat) between larger components.
  static const Color nord0 = const Color(0xff2e3440);

  ///** A brighter shade color based on [nord0] .**
  ///
  /// For *dark ambiance* designs it is used for elevated, more prominent or
  /// focused UI elements like:
  /// * status bars and text editor gutters
  /// * panels, modals and floating popups like notifications or auto completion
  /// * user interaction/form components like buttons, text/select fields or checkboxes
  ///
  /// It also works fine for more inconspicuous and passive elements like
  /// borders or as dropshadow between different components.
  /// There's currently no official port project that makes use of it for syntax
  /// highlighting.

  /// For *bright ambiance* designs, it is used for more subtle/inconspicuous UI
  /// text elements that do not need so much visual attention.
  /// Other use cases are also state animations like a more brighter text color
  /// when a button is hovered, active or focused.
  static const Color nord1 = const Color(0xff3b4252);

  ///**An even more brighter shade color of `[nord0]`.**
  ///
  /// For *dark ambiance designs*, it is used to colorize the currently
  /// active
  /// text editor line as well as selection- and text highlighting color.
  /// For both bright & dark ambiance designs it can also be used as an
  /// brighter variant for the same target elements like [nord1].
  static const Color nord2 = const Color(0xff434c5e);

  ///** The brightest shade color based on `[nord0]`.**
  ///
  /// For *dark ambiance designs,* it is used for UI elements like indent- and
  /// wrap guide marker.
  /// In the context of code syntax highlighting it is used for comments and
  /// invisible/non-printable characters.
  ///
  /// For bright ambiance designs, it is, next to [nord1] and [nord2] as darker
  /// variants, also used for the most subtle/inconspicuous UI text elements that do not need so much visual attention.
  static const Color nord3 = const Color(0xff4c566a);
}

/// **Snow Storm** is made up of three bright colors that are commonly used for
/// text colors or base UI elements in *bright ambiance* designs.
///
/// The palette can be used for two different shading ambiance styles:
///
/// * bright to dark — This is the **recommended style** that uses [nord6] as
/// base color and highlights other UI elements with [nord5] and [nord4].
/// * dark to bright (*semi*-light) — This style uses [nord4] as base color and
/// highlights other UI elements with [nord5] and [nord6].
///
/// The documentation of the different colors from this palette are based on
/// the recommended *bright to dark ambiance* style.
///
/// To apply the color purposes to the *dark to bright style* the definitions
/// can be used in reversed order.
class SnowStorm extends Nord {
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
  ///
  /// It also works fine for more inconspicuous and passive elements like
  /// borders or as dropshadow between different components.
  /// In the context of syntax highlighting it's not used at all.

  static const Color nord4 = const Color(0xffd8dee9);

  /// **A brighter shade color of [nord4].**
  ///
  /// For *dark ambiance* designs, it is used for more subtle/inconspicuous UI
  /// text elements that do not need so much visual attention.
  /// Other use cases are also state animations like a more brighter text
  /// color when a button is hovered, active or focused.
  ///
  /// For *bright ambiance* designs, it is used to colorize the currently
  /// active text editor line as well as selection- and text highlighting color.
  static const Color nord5 = const Color(0xffe5e9f0);

  /// *The brightest shade color based on [nord4].*
  ///
  /// For *dark ambiance designs*, it is used for elevated UI text elements
  /// that require more visual attention.
  /// In the context of syntax highlighting it is used as text color for
  /// plain text as well as reserved and structuring syntax characters like
  /// curly- and square brackets.
  ///
  /// For *bright ambiance designs*, it is used as background and area coloring
  /// while it's not used for syntax highlighting at all because otherwise
  /// it would collide with the same background color.
  static const Color nord6 = const Color(0xffeceff4);
}

/// **Frost** can be described as the heart palette of Nord, a group of four
/// bluish colors that are commonly used for primary UI component and text
/// highlighting and essential code syntax elements.
///
/// All colors of this palette are used the same for both dark & bright
/// ambiance designs.
class Frost extends Nord {
  /// **A calm and highly contrasted color reminiscent of frozen polar water.**
  ///
  /// Used for UI elements that should, next to the primary accent color
  /// [nord8], stand out and get more visual attention.
  ///
  /// In the context of syntax highlighting it is used for classes, types and primitives.
  static const Color nord7 = const Color(0xff8fbcbb);

  /// **The bright and shiny primary accent color reminiscent of pure and clear ice.**
  ///
  /// Used for primary UI elements with main usage purposes that require the
  /// most visual attention.
  ///
  /// In the context of syntax highlighting it is used for declarations,
  /// calls and execution statements of functions, methods and routines.
  static const Color nord8 = const Color(0xff88c0d0);

  /// **A more darkened and less saturated color reminiscent of arctic waters.**
  ///
  /// Used for secondary UI elements that also require more visual attention
  /// than other elements.
  ///
  /// In the context of syntax highlighting it is used for language specific,
  /// syntactic and reserved keywords as well as
  /// * support characters
  /// * operators
  /// * tags
  /// * units
  /// * punctuations like (semi)colons, points and commas
  static const Color nord9 = const Color(0xff81a1c1);

  /// **A dark and intensive color reminiscent of the deep arctic ocean.**
  ///
  /// Used for tertiary UI elements that require more visual attention than
  /// default elements.
  ///
  /// In the context of syntax highlighting it is used for pragmas, comment
  /// keywords and pre-processor statements.
  static const Color nord10 = const Color(0xff5e81ac);
}

/// **Aurora** consists of five colorful components reminiscent of the [Aurora
/// borealis](https://en.wikipedia.org/wiki/Aurora), sometimes referred to
/// as *polar lights* or *northern lights*.
///
/// All colors of this palette are used the same for both *dark & bright
/// ambiance designs.*
class Aurora extends Nord {

  /// Used for UI elements that are rendering error states like linter
  /// markers and the highlighting of Git `diff` deletions.
  ///
  /// In the context of syntax highlighting it is used to override the
  /// highlighting of syntax elements that are detected as errors.
  static const Color nord11 = const Color(0xffbf6161a);

  /// Rarely used for UI elements, but it may indicate a more advanced or
  /// dangerous functionality.
  ///
  /// In the context of syntax highlighting it is used for special syntax
  /// elements like annotations and decorators.
  static const Color nord12 = const Color(0xffd08770);

  /// Used for UI elements that are rendering warning states like linter
  /// markers and the highlighting of Git `diff` modifications.
  ///
  /// In the context of syntax highlighting it is used to override the
  /// highlighting of syntax elements that are detected as warnings as well
  /// as escape characters and within regular expressions.
  static const Color nord13 = const Color(0xffebcb8b);

  /// Used for UI elements that are rendering success states and
  /// visualizations and the highlighting of Git `diff` additions.
  ///
  /// In the context of syntax highlighting it is used as main color for
  /// strings of any type like double/single quoted or interpolated.
  static const Color nord14 = const Color(0xffa3be8c);

  /// Rarely used for UI elements, but it may indicate a more uncommon
  /// functionality.
  /// In the context of syntax highlighting it is used as main color for
  /// numbers of any type like integers and floating point numbers.
  static const Color nord15 = const Color(0xffb48ead);
}
