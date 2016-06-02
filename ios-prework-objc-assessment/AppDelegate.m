//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    NSMutableArray *numbersArray = [[NSMutableArray alloc] init];
    numbersArray = [[self generateArrayOfNumbers] mutableCopy];
    
    NSMutableArray *lettersArray = [[NSMutableArray alloc] init];
    lettersArray = [[self generateArrayOfLetters] mutableCopy];
    
    NSMutableDictionary *alphabetDictionary = [[NSMutableDictionary alloc] init];
    alphabetDictionary = [[self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray] mutableCopy];
    
    NSLog(@"%@", numbersArray);
    NSLog(@"%@", lettersArray);
    NSLog(@"%@", alphabetDictionary);
    
    return YES;
}

- (NSArray *)generateArrayOfNumbers {
    NSMutableArray *numbersArray = [[NSMutableArray alloc] init];
    for (NSUInteger i = 1; i < 27; i++) {
        [numbersArray addObject:@(i)];
    }
    return numbersArray;
}

- (NSArray *)generateArrayOfLetters{
    NSMutableArray *lettersArray = [[NSMutableArray alloc] init];
    char letter = 'a';
    for (NSUInteger i = 0; i < 26; i++) {
        char currentLetter = letter + i;
        NSString *stringLetter = [NSString stringWithFormat:@"%c", currentLetter];
        [lettersArray addObject:stringLetter];
    }
    return lettersArray;
}

- (NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbersArray letters:(NSArray *)lettersArray {
    NSMutableDictionary *numbersAndLettersDictionary = [[NSMutableDictionary alloc] init];
    for (NSUInteger i = 0; i < 26; i++) {
        numbersAndLettersDictionary[numbersArray[i]] = lettersArray[i];
    }
    return numbersAndLettersDictionary;
}



@end
