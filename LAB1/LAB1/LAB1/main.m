//
//  main.m
//  LAB1
//
//  Created by Andrea Dancek on 2020-06-08.
//  Copyright © 2020 Melisa Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}
int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSString *input = getUserInput(16, @"Enter your name:");
    NSLog(@"input was: %@", [input uppercaseString]);
      
    NSString *secondInput = getUserInput(16, @"Enter your name again:");
    NSLog(@"input was: %@", [secondInput lowercaseString]);
      
    NSString *inputString = getUserInput(16, @"Enter a number");
    int value = [inputString intValue];
    NSLog(@"input was: %i", value);
    
    NSString *canadianize = @", eh?";
    NSString *inputCanadianize = getUserInput(16, @"Enter a word:");
    NSLog(@"input was: %@ %@", inputCanadianize, canadianize);
            
    NSString *inputRespond = getUserInput(16, @"Enter a question or a sentence with !");
      if ([inputRespond characterAtIndex:[inputRespond length] - 1] == '?') {
          NSLog(@"%@", @"I don't know.");
      } else ([inputRespond characterAtIndex:[inputRespond length] - 1] == '!'); {
          NSLog(@"%@", @"Whoa, clam down!");
      }
    NSString *inputReplace = getUserInput(16, @"Enter a sentence");
      NSString *newString = [inputReplace stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    NSLog(@"input was: %@", newString);
  }
  return 0;
}
