//
//  Applicationscheme.swift
//  WhatToWhatch
//
//  Created by Andrey Markov on 2021-12-05.
//

import Foundation


import UIKit

import MaterialComponents

class ApplicationScheme: NSObject {

  private static var singleton = ApplicationScheme()

  static var shared: ApplicationScheme {
    return singleton
  }

  override init() {
    self.buttonScheme.colorScheme = self.colorScheme
    self.buttonScheme.typographyScheme = self.typographyScheme
    super.init()
  }

  public let buttonScheme = MDCButtonScheme()

  public let colorScheme: MDCColorScheming = {
    let scheme = MDCSemanticColorScheme(defaults: .material201804)
    scheme.primaryColor =
      UIColor(red: 252.0/255.0, green: 184.0/255.0, blue: 171.0/255.0, alpha: 1.0)
    scheme.primaryColorVariant =
      UIColor(red: 68.0/255.0, green: 44.0/255.0, blue: 46.0/255.0, alpha: 1.0)
    scheme.onPrimaryColor =
      UIColor(red: 68.0/255.0, green: 44.0/255.0, blue: 46.0/255.0, alpha: 1.0)
    scheme.secondaryColor =
      UIColor(red: 254.0/255.0, green: 234.0/255.0, blue: 230.0/255.0, alpha: 1.0)
    scheme.onSecondaryColor =
      UIColor(red: 68.0/255.0, green: 44.0/255.0, blue: 46.0/255.0, alpha: 1.0)
    scheme.surfaceColor =
      UIColor(red: 255.0/255.0, green: 251.0/255.0, blue: 250.0/255.0, alpha: 1.0)
    scheme.onSurfaceColor =
      UIColor(red: 68.0/255.0, green: 44.0/255.0, blue: 46.0/255.0, alpha: 1.0)
    scheme.backgroundColor =
      UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    scheme.onBackgroundColor =
      UIColor(red: 68.0/255.0, green: 44.0/255.0, blue: 46.0/255.0, alpha: 1.0)
    scheme.errorColor =
      UIColor(red: 197.0/255.0, green: 3.0/255.0, blue: 43.0/255.0, alpha: 1.0)
    return scheme
  }()

  public let typographyScheme: MDCTypographyScheming   = {
    let scheme = MDCTypographyScheme()
    //TODO: Add our custom fonts after this line
    let fontName = "Chalkduster"
    scheme.headline5 = UIFont(name: fontName, size: 24)!
    scheme.headline6 = UIFont(name: fontName, size: 20)!
    scheme.subtitle1 = UIFont(name: fontName, size: 16)!
    scheme.button = UIFont(name: fontName, size: 20)!
    return scheme
  }()
}
