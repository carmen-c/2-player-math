//
//  Player.h
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) int lives;
@property (nonatomic) int score;

@property (nonatomic) NSString* name;

-(void) loseALife;
-(void) addScore;
- (instancetype)initWithName:(NSString*)name;


@end
