//
//  Animal.h
//  travis-ci-practice
//
//  Created by Nick Huang on 2017/2/17.
//  Copyright © 2017年 nick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (copy, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger feet;
@property (assign, nonatomic) NSInteger speed;
@property (assign, nonatomic) NSInteger energy;
@property (assign, nonatomic) NSInteger distance;
- (instancetype)initWithName:(NSString *)name feet:(NSInteger)feet speed:(NSInteger)speed energy:(NSInteger)energy;
- (NSInteger)run;

@end
