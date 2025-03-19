//
//  StepperGetAccessibilityLabelUseCase.swift
//  SparkStepper
//
//  Created by robin.lemaire on 26/02/2025.
//  Copyright © 2025 Leboncoin. All rights reserved.
//

import Foundation
import SparkTheming

// MARK: - Protocol

protocol StepperGetAccessibilityLabelUseCaseable {
    func execute(for type: StepperButtonType, customLabel: String?, text: String) -> String
}

// MARK: - Implementation

struct StepperGetAccessibilityLabelUseCase: StepperGetAccessibilityLabelUseCaseable {

    func execute(
        for type: StepperButtonType,
        customLabel: String?,
        text: String
    ) -> String {
        if let customLabel {
            return customLabel
        } else {
            let localizedKey = self.execute(for: type, text: text)
            return String(localized: localizedKey, bundle: .module)
        }
    }

    private func execute(for type: StepperButtonType, text: String) -> String.LocalizationValue {
        switch type {
        case .decrement:
            "accessibility_label_decrement_\(text)"
        case .increment:
            "accessibility_label_increment_\(text)"
        }
    }
}
