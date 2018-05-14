//
//  InvestmentViewControllerTests.swift
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

class InvestmentViewControllerTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: InvestmentViewController!
  var screenRepresentation: Investment.GetInvestment.ViewModel!
  var window: UIWindow!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    window = UIWindow()
    setupInvestmentViewController()
  }
  
  override func tearDown()
  {
    window = nil
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupInvestmentViewController()
  {
    let bundle = Bundle.main
    let storyboard = UIStoryboard(name: "Main", bundle: bundle)
    sut = storyboard.instantiateViewController(withIdentifier: "InvestmentViewController") as! InvestmentViewController
  }
  
  func loadView()
  {
    window.addSubview(sut.view)
    RunLoop.current.run(until: Date())
  }
  
  // MARK: Test doubles
  
  class InvestmentBusinessLogicSpy: InvestmentBusinessLogic{
    var fetchedInvestmentCalled = false
    
    func fetchInvestment() {
      fetchedInvestmentCalled = true
    }
  }
  
  // MARK: Tests
  
  func testShouldDoSomethingWhenViewIsLoaded()
  {
    // Given
    let spy = InvestmentBusinessLogicSpy()
    sut.interactor = spy
    
    // When
    loadView()
    
    // Then
    XCTAssertTrue(spy.fetchedInvestmentCalled, "viewDidLoad() should ask the interactor to do something")
  }
  
  func testDisplaySomething()
  {
    // Given
//    let viewModel =
    
    // When
    loadView()
//    sut.displayInvestment(viewModel: viewModel)
    
    // Then
    //XCTAssertEqual(sut.nameTextField.text, "", "displaySomething(viewModel:) should update the name text field")
  }
}