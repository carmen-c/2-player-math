//
//  GenerateQuestion.m
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "GenerateQuestion.h"
@class ViewController;

@implementation GenerateQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        _x = arc4random_uniform(20) +1;
        _y = arc4random_uniform(20) +1;
        _answer = self.x + self.y;
    }
    return self;
}

-(NSString *)generateQuestion{
    NSString *question = [NSString stringWithFormat:@"%d + %d ?", self.x, self.y];
    return question;
}

@end
