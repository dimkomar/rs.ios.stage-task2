#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    //NSArray *array = @[@[@3,@2,@1],@[@1,@5,@3],@[@"Ben", @"Alex", @"Cris"], @[@"Desmond", @"Evan"],@[@8,@2,@7,@9]];
        
    NSMutableArray* numbers = [NSMutableArray array];
    NSMutableArray* strings = [NSMutableArray array];
    
    if (array == nil || array.count == 0 || ![array[0] isKindOfClass:NSArray.class]) {
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
        
    if (strings.count == 0) {
        NSArray* sortedNumericalArray = [numbers sortedArrayUsingSelector:@selector(compare:)];
        return sortedNumericalArray;
    } else if (numbers.count == 0)  {
        NSArray* sortedStringArrayAsc = [strings sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        return sortedStringArrayAsc;
    }
    
    NSMutableArray *result = [NSMutableArray arrayWithArray:[numbers sortedArrayUsingSelector:@selector(compare:)]];
    [strings sortUsingDescriptors:[NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO selector:@selector(localizedCaseInsensitiveCompare:)]]];
    [result addObjectsFromArray:strings];
   
    return result;
}

@end
