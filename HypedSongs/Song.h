#import <Foundation/Foundation.h>

@interface Track : NSObject{
    NSString * ad;
    NSString * artist;
    NSString * album;
    NSURL *albumCover;
    NSString * genre;
}

@property(nonatomic, copy) NSString *artist;
@property(nonatomic, copy) NSString *album;
@property(nonatomic, copy) NSString *genre;
@property(nonatomic, copy) NSString *ad;
@property(nonatomic, copy) NSURL *albumCover;




-(void) debuglog;
@end
