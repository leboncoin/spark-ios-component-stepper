# ``SparkStepper``

The Spark Stepper allow users to quickly specify a numerical value within a given range.

## Overview

The component is available on **UIKit** and **SwiftUI** and requires at least **iOS 16**.

It can manage a simple numeric number or a complexe format (currency, percent, ...)

### Implementation

- On SwiftUI, you need to use the ``SparkStepper`` View.
- On UIKit, you need to use the ``SparkUIStepper`` which inherit from an UIControl.

### Rendering

With a numeric number
![Component rendering.](component.png)

With a currency 
![Component rendering.](component_with_format.png)

## A11y

Only the **decrement** and **increment** buttons are accessible. 

The text between the two buttons is not accessible but the **value** of the text *is read by the buttons*.

### Label

The default **decrement** and **increment** buttons *accessibility labels* using **localization** (english and french only). 

You can override the decrement and increment accessibilty labels with : 
- UIKit :
    - Decrement : ``SparkUIStepper/customDecrementAccessibilityLabel``
    - Increment : ``SparkUIStepper/customIncrementAccessibilityLabel``

- SwiftUI :
    - Decrement : ``SparkStepper/SparkStepper/decrementAccessibilityLabel(_:)``
    - Increment : ``SparkStepper/SparkStepper/incrementAccessibilityLabel(_:)`` 


You can also add some **context** (the name of the stepper for e.g like *"Number of people"*):
- UIKit : ``SparkUIStepper/contextAccessibilityLabel``
- SwiftUI : ``SparkStepper/SparkStepper/contextAccessibilityLabel(_:)`` 

## Resources

- Specification on [ZeroHeight](https://zeroheight.com/1186e1705/p/95f37c-stepper)
- Desing on [Figma](https://www.figma.com/design/0QchRdipAVuvVoDfTjLrgQ/Spark-Component-Specs?node-id=51908-6090)
- Discussion on [Slack](https://adevinta.slack.com/archives/C07GGG6TUGP)
