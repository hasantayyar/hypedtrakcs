#import <Foundation/Foundation.h>

@interface Film : NSObject{
    NSString * ad;
    NSString * yonetmen;
    NSString * ulke;
    NSURL *afisURL;
    int yapimYili;
}

@property(nonatomic, copy) NSString *yonetmen;
@property(nonatomic, copy) NSString *ulke;
@property(nonatomic, assign) int yapimYili;
@property(nonatomic, copy) NSString* ad;
@property(nonatomic, copy) NSURL *afisURL;




-(void) yazdir;
@end
