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
@property (assign, nonatomic) NSInteger blood;
@property (assign, nonatomic) NSInteger attack;
@property (assign, nonatomic) NSInteger defense;

- (instancetype)initWithName:(NSString *)name feet:(NSInteger)feet speed:(NSInteger)speed energy:(NSInteger)energy blood:(NSInteger)blood attack:(NSInteger)attack defense:(NSInteger)defense;
- (NSInteger)run;
- (NSInteger)attackedBy:(Animal *)animal;

@end
