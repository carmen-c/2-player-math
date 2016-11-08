//
//  InputHandler.m
//  2 Player Math
//
//  Created by carmen cheng on 2016-11-07.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *) userInput{
 
    int inputNumber;
    scanf(inputNumber);
    
    NSString *inputtedNumber = [NSString stringWithCString:inputNumber encoding:NSUTF8StringEncoding];
    inputtedNumber = [inputtedNumber stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    
    return inputtedNumber;
}

@end
