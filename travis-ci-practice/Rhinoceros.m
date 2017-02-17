//
//  Rhinoceros.m
//  travis-ci-practice
//
//  Created by Nick Huang on 2017/2/17.
//  Copyright © 2017年 nick. All rights reserved.
//

#import "Rhinoceros.h"

@implementation Rhinoceros

- (NSInteger)attackedBy:(Animal *)animal {
    
    // Injury reduction 10 point
    self.blood = [super attackedBy:animal] + 10;
    return self.blood;
}

@end
