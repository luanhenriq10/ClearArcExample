//
//  InvestmentModels.swift
//  SantanderExample
//
//  Created by Luan Henrique Damasceno Costa on 09/05/2018.
//  Copyright (c) 2018 Luan Henrique Damasceno Costa. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Investment {
  // MARK: Use cases
  
  enum GetInvestment {
    struct Request {}
    
    struct Response {
      var fundResponse: InvestmentFundResponse
    }
    
    struct ErrorResponse {
      var error: ServiceError
    }
    
    struct ViewModel {
      struct MainInvestmentInformation {
        var title: String
        var fund: String
        var whatIs: String
        var definition: String
        var riskTitle: String
        var infoTitle: String
        var monthFund: String
        var monthCDI: String
        var yearFund: String
        var yearCDI: String
        var lastYearFund: String
        var lastYearCDI: String
      }
      
      var mainInformation: MainInvestmentInformation
      var riskCollectionModels: [InvestmentRiskCollectionViewCell.ViewModel]
      var informationTableModels: [Investment.InvestmentInformationTableCell.ViewModel]
    }
  }
  
  enum InvestmentInformationTableCell {
    
    enum CellType {
      case withData
      case noData
    }
    
    enum CellSize: CGFloat {
      case normal = 44
    }
    
    struct ViewModel {
      var title: String = "-"
      var description: String = "-"
      var type: CellType = .withData
    }
  }
}
