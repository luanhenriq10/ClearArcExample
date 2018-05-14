//
//  InvestmentWorkerTests.swift
//  SantanderExample
//
//  Created by Luan Henrique Damasceno Costa on 13/05/2018.
//  Copyright (c) 2018 Luan Henrique Damasceno Costa. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import SantanderExample
import XCTest
import Moya

class InvestmentWorkerTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: InvestmentWorker!
  var investmentFund: InvestmentFundResponse?
  var testProvider = MoyaProvider<InvestmentTargetType>(stubClosure: MoyaProvider.delayedStub(1))
  // MARK: Test lifecycle
  
  override func setUp() {
    super.setUp()
    setupInvestmentWorker()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupInvestmentWorker() {
    sut = InvestmentWorker()
    sut.setProvider(provider: testProvider)
  }
  
  // MARK: Test doubles
  
  // MARK: Tests
  
  func testFetchInvestment(){
    
    sut.getInvestment(onSuccess: { (response) in
      self.investmentFund = response
    }) { (error) in }
    
    XCTAssertNil(investmentFund,  "Worker should get investment fund information from mock")
  }
}