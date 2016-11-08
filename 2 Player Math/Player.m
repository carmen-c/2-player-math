//
//  Player.m
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        _lives = 3;
        _score = 0;
        _name = name;
            }
    return self;
}

-(void) loseALife{
    self.lives = self.lives - 1;
}

-(void) addScore{
    self.score = self.score + 1;
}

@end
