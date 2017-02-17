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
#import "Rhinoceros.h"

@interface travis_ci_practiceTests : XCTestCase
@property (strong, nonatomic) Lion *lion;
@property (strong, nonatomic) Tiger *tiger;
@property (strong, nonatomic) Rhinoceros *rhinoceros;
@end

@implementation travis_ci_practiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.lion = [[Lion alloc] initWithName:@"Lion" feet:4 speed:35 energy:5 blood:500 attack:120 defense:30];
    self.tiger = [[Tiger alloc] initWithName:@"Tiger" feet:4 speed:35 energy:6 blood:500 attack:100 defense:30];
    self.rhinoceros = [[Rhinoceros alloc] initWithName:@"Rhinoceros" feet:4 speed:10 energy:10 blood:3000 attack:35 defense:100];
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
    
    NSInteger lionXRunDistance = [self.lion run];
    NSInteger tigerXRunDistance = [self.tiger run];
    
    XCTAssert(lionXRunDistance < tigerXRunDistance, "lion is not fast than tiger");
    
}

- (void)testAnimalAttack {
    
    BOOL attackEnd = NO;
    NSString *winner;
    while (!attackEnd) {
        
        NSLog(@"%@ attack %@ : %li damage", self.rhinoceros.name, self.lion.name, self.rhinoceros.attack);
        [self.lion attackedBy:self.rhinoceros];
        NSLog(@"%@ blood : %li", self.lion.name, self.lion.blood);
        
        NSLog(@"%@ attack %@ : %li damage", self.lion.name, self.rhinoceros.name, self.lion.attack);
        [self.rhinoceros attackedBy:self.lion];
        NSLog(@"%@ blood : %li", self.rhinoceros.name, self.rhinoceros.blood);
        
        if (self.lion.blood < 0 || self.rhinoceros.blood < 0) {
            
            if (self.lion.blood < 0) {
                winner = self.rhinoceros.name;
            } else {
                winner = self.lion.name;
            }
            
            break;
        }
    }
    NSLog(@"Fight is ended, the winner is %@", winner);
    XCTAssert(winner == self.rhinoceros.name, "The winner is not the Leo, because Happy's blood too much");
    
}

@end
