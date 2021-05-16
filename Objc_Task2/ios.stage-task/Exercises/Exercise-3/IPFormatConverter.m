#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableArray* array = [[NSMutableArray alloc] initWithObjects: @"0", @"0", @"0", @"0", nil];
    
    if ((numbersArray == nil) || numbersArray.count > 4 || numbersArray.count == 0){
        return @"";
    } else {
        for (int i = 0; i < numbersArray.count; i++){
            NSNumber* number = numbersArray[i];
            if ([number intValue] >= 0 && [number intValue] <= 255){
                [array replaceObjectAtIndex:i withObject:[number stringValue]];
            } else if ([number intValue] > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            } else if ([number intValue] < 0) {
                return @"Negative numbers are not valid for input.";
            }
        }
    }
    
    NSString *greeting = [array componentsJoinedByString:@"."];
    
    return greeting;
}

@end
