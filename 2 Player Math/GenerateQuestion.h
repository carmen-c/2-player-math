//
//  GenerateQuestion.h
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GenerateQuestion : NSObject

@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;
@property (nonatomic, assign) int answer;

-(NSString *) generateQuestion;
-(BOOL) checkAnswer;

@end
