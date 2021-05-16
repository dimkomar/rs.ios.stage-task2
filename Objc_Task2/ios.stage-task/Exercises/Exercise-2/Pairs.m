#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger counter = 0;
    
    /*
    for (NSNumber *n1 in array) {
        for (NSNumber *n2 in array) {
            if (([n1 intValue]-[n2 intValue]) == [number intValue]){
                counter++;
            }
        }
    }
    */
    
    //v2
    for (int i = 0; i < array.count; i++) {
        for (int k = i + 1; k < array.count; k++) {
            if (abs(array[k].intValue - array[i].intValue) == number.intValue) {
                counter++;
            }
        }
    }
    
    return counter;
}

@end
