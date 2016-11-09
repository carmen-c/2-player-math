//
//  GameModel.m
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gameOver = NO;
        
        _playerList = [[NSMutableArray alloc]init];
        Player *player = [[Player alloc]initWithName:@"player1"];
        [_playerList addObject:player];
        player = [[Player alloc]initWithName:@"player2"];
        [_playerList addObject:player];
        
        _currentPlayer = [self.playerList objectAtIndex:0];
        _question = [[GenerateQuestion alloc]init];
    }
    return self;
}

-(NSString *) displayCurrentPlayer{
    NSString *displayPlayer = [NSString stringWithFormat:@"%@", self.currentPlayer.name];
    return displayPlayer;
}

-(NSUInteger) nextPlayer{
    NSUInteger currentPlayerIndex = [self.playerList indexOfObject:self.currentPlayer];
    if (currentPlayerIndex == 0) {
        currentPlayerIndex = 1 ;
    }else if (currentPlayerIndex == 1) {
        currentPlayerIndex = 0;
    }
    return currentPlayerIndex;
}

-(void)checkAnswer:(NSInteger)userAnswer{
    GenerateQuestion *question;
//    NSUInteger currentPlayerIndex = [self.playerList indexOfObject:self.currentPlayer];
    NSUInteger nextPlayerIndex = [self nextPlayer];
    
    if (userAnswer == question.answer) {
        [self.currentPlayer addScore];

    }else{
        [self.currentPlayer loseALife];
        if (self.currentPlayer.lives <= 0) {
            _gameOver = YES;
        }
        
        self.currentPlayer = [self.playerList objectAtIndex:nextPlayerIndex];
        //new question
        [[GenerateQuestion alloc]init];
        
        }
    
}
//
//-(NSString *)nextQuestion{
//    
//}

@end
