#if os(watchOS)
import SwiftUI

// TODO: add full mark customization for watchOS 9 using AnyShape

@available(watchOS 8, *)
@available(macOS, unavailable)
@available(iOS, unavailable)
@available(tvOS, unavailable)
public extension View {
  /// Sets whether time input views use a monospaced digit font within this view.
  /// - Parameters:
  ///   - enabled: A Boolean value that determines whether time input views use a monospaced digit font within this view.
  func timeInputViewMonospacedDigit(_ enabled: Bool? = true) -> some View {
    environment(\.timeInputViewMonospacedDigit, enabled)
  }
  
  /// Sets whether time input views use twenty four hour mode within this view.
  /// - Parameters:
  ///   - enabled: A Boolean value that determines whether time input views use twenty four hour mode within this view.
  func timeInputViewTwentyFourHour(_ enabled: Bool? = true) -> some View {
    environment(\.timeInputViewTwentyFourHour, enabled)
  }
  
  /// Sets whether time input views show the twenty four hour mode indicator within this view.
  /// - Parameters:
  ///   - enabled: A Boolean value that determines whether time input views show the twenty four hour mode indicator within this view.
  func timeInputViewTwentyFourHourIndicator(_ visibility: Visibility) -> some View {
    environment(\.timeInputViewTwentyFourHourIndicator, visibility)
  }
  
  /// Sets the AM/PM highlight color for time input views within this view.
  /// - Parameters:
  ///   - tint: …
  func timeInputViewAMPMHighlightTint(_ tint: Color?) -> some View {
    environment(\.timeInputViewAMPMHighlightTint, tint)
  }
  
  /// Sets the color for the focus outline of time input views within this view.
  /// - Parameters:
  ///   - tint: The color for the focus outline.
  func timeInputViewFocusTint(_ tint: Color?) -> some View {
    environment(\.timeInputViewFocusTint, tint)
  }
  
  /// Sets the color for the selection indicator of time input views within this view.
  /// - Parameters:
  ///   - tint: The color for the selection indicator.
  func timeInputViewSelectionTint(_ tint: Color?) -> some View {
    environment(\.timeInputViewSelectionTint, tint)
  }
}

//@available(watchOS 9, *)
//@available(macOS, unavailable)
//@available(iOS, unavailable)
//@available(tvOS, unavailable)
//public extension View {
//  /// Sets the shape used for marks in clock faces of time input views within this view.
//  /// - Parameters:
//  ///   - tint: …
//  func timeInputViewMark<Content: View>(@ViewBuilder content: () -> Content) -> some View {
//    environment(\.timeInputViewMark, AnyShape(content()))
//  }
//
//  /// Sets the shape used for heavy marks in clock faces of time input views within this view.
//  /// - Parameters:
//  ///   - tint: …
//  func timeInputViewHeavyMark<Content: View>(@ViewBuilder content: () -> Content) -> some View {
//    environment(\.timeInputViewHeavyMark, AnyShape(content()))
//  }
//
//  /// Sets the shape used for the selection indicator in clock faces of time input views within this view.
//  /// - Parameters:
//  ///   - tint: …
//  func timeInputViewSelectionIndicator<Content: View>(@ViewBuilder content: () -> Content) -> some View {
//    environment(\.timeInputViewSelectionIndicator, AnyShape(content()))
//  }
//}

@available(watchOS 8, *)
@available(macOS, unavailable)
@available(iOS, unavailable)
@available(tvOS, unavailable)
public extension EnvironmentValues {
  var timeInputViewMonospacedDigit: Bool? {
    get { self[TimeInputViewMonospacedDigitKey.self] }
    set { self[TimeInputViewMonospacedDigitKey.self] = newValue }
  }
  
  var timeInputViewTwentyFourHour: Bool? {
    get { self[TimeInputViewTwentyFourHourKey.self] }
    set { self[TimeInputViewTwentyFourHourKey.self] = newValue }
  }
  
  var timeInputViewTwentyFourHourIndicator: Visibility {
    get { self[TimeInputViewTwentyFourHourIndicatorKey.self] }
    set { self[TimeInputViewTwentyFourHourIndicatorKey.self] = newValue }
  }
  
  var timeInputViewAMPMHighlightTint: Color? {
    get { self[TimeInputViewAMPMHighlightTintKey.self] }
    set { self[TimeInputViewAMPMHighlightTintKey.self] = newValue }
  }
  
  var timeInputViewFocusTint: Color? {
    get { self[TimeInputViewFocusTintKey.self] }
    set { self[TimeInputViewFocusTintKey.self] = newValue }
  }
  
  var timeInputViewSelectionTint: Color? {
    get { self[TimeInputViewSelectionTintKey.self] }
    set { self[TimeInputViewSelectionTintKey.self] = newValue }
  }
}

//@available(watchOS 9, *)
//@available(macOS, unavailable)
//@available(iOS, unavailable)
//@available(tvOS, unavailable)
//public extension EnvironmentValues {
//  var timeInputViewMark: AnyShape? {
//    get { self[TimeInputViewMarkKey.self] }
//    set { self[TimeInputViewMarkKey.self] = newValue }
//  }
//
//  var timeInputViewHeavyMark: AnyShape? {
//    get { self[TimeInputViewHeavyMarkKey.self] }
//    set { self[TimeInputViewHeavyMarkKey.self] = newValue }
//  }
//
//  var timeInputViewSelectionIndicator: AnyShape? {
//    get { self[TimeInputViewSelectionIndicatorKey.self] }
//    set { self[TimeInputViewSelectionIndicatorKey.self] = newValue }
//  }
//}

struct TimeInputViewMonospacedDigitKey: EnvironmentKey { static let defaultValue: Bool? = nil }
struct TimeInputViewTwentyFourHourKey: EnvironmentKey { static let defaultValue: Bool? = nil }
struct TimeInputViewTwentyFourHourIndicatorKey: EnvironmentKey { static let defaultValue: Visibility = .automatic }
struct TimeInputViewAMPMHighlightTintKey: EnvironmentKey { static let defaultValue: Color? = nil }
struct TimeInputViewFocusTintKey: EnvironmentKey { static let defaultValue: Color? = .green }
struct TimeInputViewSelectionTintKey: EnvironmentKey { static let defaultValue: Color? = nil }

//@available(watchOS 9, *)
//struct TimeInputViewMarkKey: EnvironmentKey { static let defaultValue: AnyShape? = nil }
//@available(watchOS 9, *)
//struct TimeInputViewHeavyMarkKey: EnvironmentKey { static let defaultValue: AnyShape? = nil }
//@available(watchOS 9, *)
//struct TimeInputViewSelectionIndicatorKey: EnvironmentKey { static let defaultValue: AnyShape? = nil }
#endif
