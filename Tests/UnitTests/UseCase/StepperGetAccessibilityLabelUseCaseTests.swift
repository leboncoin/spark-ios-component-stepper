//
//  StepperGetAccessibilityLabelUseCaseTests.swift
//  SparkStepper
//
//  Created by robin.lemaire on 04/03/2025.
//  Copyright © 2025 Leboncoin. All rights reserved.
//

import XCTest
@testable import SparkStepper

class StepperGetAccessibilityLabelUseCaseTests: XCTestCase {

    // MARK: - Properties

    private let useCase = StepperGetAccessibilityLabelUseCase()

    // MARK: - Tests

    func testExecuteWithCustomLabel() {
        // GIVEN
        let customLabel = "Custom Label"
        let text = "Value"

        // WHEN
        let result = self.useCase.execute(for: .increment, customLabel: customLabel, text: text)

        // THEN
        XCTAssertEqual(result, customLabel)
    }

    func testExecuteWithoutCustomLabelForIncrement() {
        // GIVEN
        let text = "Value"

        // WHEN
        let result = self.useCase.execute(for: .increment, customLabel: nil, text: text)

        // THEN
        XCTAssertEqual(result, String(localized: "accessibility_label_increment_\(text)", bundle: .module))
        XCTAssertNotEqual(result, "accessibility_label_increment_\(text)")
    }

    func testExecuteWithoutCustomLabelForDecrement() {
        // GIVEN
        let text = "Value"

        // WHEN
        let result = self.useCase.execute(for: .decrement, customLabel: nil, text: text)

        // THEN
        XCTAssertEqual(result, String(localized: "accessibility_label_decrement_\(text)", bundle: .module))
        XCTAssertNotEqual(result, "accessibility_label_decrement_\(text)")
    }
}
