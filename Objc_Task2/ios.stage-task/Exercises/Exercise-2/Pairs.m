#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger counter = 0;
    
    for (NSNumber *n1 in array) {
        for (NSNumber *n2 in array) {
            if (([n1 intValue]-[n2 intValue]) == [number intValue]){
                counter++;
            }
        }
    }
    
    return counter;
}

@end
