#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    //to binary
        NSMutableString * string = [[NSMutableString alloc] init];
    
        int spacing = pow(2, 3);
        int width = (sizeof(n)) *spacing;
        int binaryDigit = 0;
        int integer = n;
    
        while(binaryDigit < width) {
            binaryDigit++;
            [string insertString:((integer & 1) ? @"1" : @"0")atIndex:0];
            integer = integer >> 1;
        }
        
    //reverse string
        NSMutableString *reversedString = [NSMutableString string];
        NSInteger charIndex = [string length];
        while (charIndex > 0) {
            charIndex--;
            NSRange subStrRange = NSMakeRange(charIndex, 1);
            [reversedString appendString:[string substringWithRange:subStrRange]];
        }
        
    //to int/long
        long v = strtol([reversedString UTF8String], NULL, 2);
        
    return v;
}
