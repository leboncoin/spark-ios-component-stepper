//
//  StepperGetTextStyleUseCase.swift
//  SparkStepper
//
//  Created by robin.lemaire on 26/02/2025.
//  Copyright © 2025 Leboncoin. All rights reserved.
//

import Foundation
import SparkTheming

// MARK: - Protocol

protocol StepperGetTextStyleUseCaseable {
    func executeColorToken(theme: Theme) -> any ColorToken
    func executeFontToken(theme: Theme) -> any TypographyFontToken
}

// MARK: - Implementation

struct StepperGetTextStyleUseCase: StepperGetTextStyleUseCaseable {

    func executeColorToken(theme: Theme) -> any ColorToken {
        return theme.colors.base.onSurface
    }

    func executeFontToken(theme: Theme) -> any TypographyFontToken {
        return theme.typography.body1
    }
}
