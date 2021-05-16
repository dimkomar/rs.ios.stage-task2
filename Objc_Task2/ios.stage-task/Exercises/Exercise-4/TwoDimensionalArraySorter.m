#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
        
    NSMutableArray* numbers = [NSMutableArray array];
    NSMutableArray* strings = [NSMutableArray array];
    
    if (array == nil) {
        return @[];
    }
    
    for (NSArray* subarray in array) {
        if ([subarray isKindOfClass:[NSArray class]]) {
            for (NSArray *value in subarray) {
                if ([value isKindOfClass:[NSNumber class]]) {
                    [numbers addObject:value];
                } else if ([value isKindOfClass:[NSString class]]){
                    [strings addObject:value];
                }
            }
        } else {
            return @[];
        }
    }
    
    NSArray* sortedNumericalArray = [numbers sortedArrayUsingSelector:@selector(compare:)];
    NSArray* sortedStringArray = [strings sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSMutableArray *result = [NSMutableArray arrayWithArray:sortedNumericalArray];
    [result addObjectsFromArray:sortedStringArray];

    return result;
}

@end
