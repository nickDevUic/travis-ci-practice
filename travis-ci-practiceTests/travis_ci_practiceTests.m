//
//  travis_ci_practiceTests.m
//  travis-ci-practiceTests
//
//  Created by Nick Huang on 2017/2/15.
//  Copyright © 2017年 nick. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Lion.h"
#import "Tiger.h"

@interface travis_ci_practiceTests : XCTestCase

@end

@implementation travis_ci_practiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testAnimalSpeed {
    
    Lion *lionX = [[Lion alloc] initWithName:@"Leo" feet:4 speed:35 energy:5];
    Tiger *tigerX = [[Tiger alloc] initWithName:@"Teddy" feet:4 speed:30 energy:6];
    
    NSInteger lionXRunDistance = [lionX run];
    NSInteger tigerXRunDistance = [tigerX run];
    
    XCTAssert(lionXRunDistance < tigerXRunDistance, "lion is not fast than tiger");
    
}

@end
