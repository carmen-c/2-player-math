//
//  GameModel.h
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "GenerateQUestion.h"

@interface GameModel : NSObject

@property (nonatomic) NSMutableArray *playerList;
@property (nonatomic) GenerateQuestion *question;
@property (nonatomic) Player *currentPlayer;
@property (nonatomic) BOOL gameOver;

-(void)checkAnswer:(NSInteger)userAnswer;
-(NSString *) displayCurrentPlayer;


@end
