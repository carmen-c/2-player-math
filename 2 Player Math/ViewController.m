//
//  ViewController.m
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UILabel *player1score;
@property (weak, nonatomic) IBOutlet UILabel *player2score;
@property (weak, nonatomic) IBOutlet UILabel *playerTurn;

@property (nonatomic, strong) InputHandler *inputhandler;
@property (nonatomic, strong) GameModel *gameModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [[GameModel alloc]init];
    self.playerTurn.text = [NSString stringWithFormat:@"%@",[self.gameModel displayCurrentPlayer]];
    
    Player *p1 = [self.gameModel.playerList objectAtIndex:0];
    int p1Score = p1.score;
    self.player1score.text = [NSString stringWithFormat:@"%d",p1Score];
    
    Player *p2 = [self.gameModel.playerList objectAtIndex:1];
    int p2Score = p2.score;
    self.player2score.text = [NSString stringWithFormat:@"%d",p2Score];
    
    self.question.text = [NSString stringWithFormat:@"%@",[self.gameModel.question generateQuestion]];
    
    self.inputhandler = [[InputHandler alloc]init];
    self.inputAnswer.enabled = NO;
    
}

- (IBAction)one:(UIButton *)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"1"];
}
- (IBAction)two:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"2"];
}
- (IBAction)three:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"3"];
}
- (IBAction)four:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"4"];
}
- (IBAction)five:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"5"];
}
- (IBAction)six:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"6"];
}
- (IBAction)seven:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"7"];
}
- (IBAction)eight:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"8"];
}
- (IBAction)nine:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"9"];
}
- (IBAction)zero:(id)sender {
    self.inputAnswer.text = [self.inputAnswer.text stringByAppendingString:@"0"];
}
- (IBAction)enter:(id)sender {
    NSInteger userAnswer = self.inputAnswer.text.integerValue;
    // Submit answer.
    [self.gameModel checkAnswer:userAnswer];
    [self endGame:self.gameModel.gameOver];

    self.playerTurn.text = [NSString stringWithFormat:@"%@",[self.gameModel displayCurrentPlayer]];
    self.question.text = [NSString stringWithFormat:@"%@",[self.gameModel.question generateQuestion]];
    
    Player *p1 = [self.gameModel.playerList objectAtIndex:0];
    int p1Score = p1.score;
    self.player1score.text = [NSString stringWithFormat:@"%d",p1Score];
    
    Player *p2 = [self.gameModel.playerList objectAtIndex:1];
    int p2Score = p2.score;
    self.player2score.text = [NSString stringWithFormat:@"%d",p2Score];

    self.inputAnswer.text = @"";
    
}


-(void) endGame:(BOOL) gameOver{
    if (self.gameModel.gameOver == YES){
        NSString *game = [NSString stringWithFormat:@"game over."];
        self.question.text = game;
    }
    
}

@end
