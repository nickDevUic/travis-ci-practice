//
//  Animal.m
//  travis-ci-practice
//
//  Created by Nick Huang on 2017/2/17.
//  Copyright © 2017年 nick. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)initWithName:(NSString *)name feet:(NSInteger)feet speed:(NSInteger)speed energy:(NSInteger)energy blood:(NSInteger)blood attack:(NSInteger)attack defense:(NSInteger)defense
{
    self = [super init];
    if (self) {
        
        self.name = name;
        self.feet = feet;
        self.speed = speed;
        self.energy = energy;
        self.blood = blood;
        self.attack = attack;
        self.defense = defense;
        
        self.distance = 0;
    }
    return self;
}

- (NSInteger)run {
    
    return self.speed * self.energy;
}

- (NSInteger)attackedBy:(Animal *)animal {
    self.blood -= (animal.attack - self.defense);
    return self.blood;
}

@end
