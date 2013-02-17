#import "Song.h"
@implementation Film

@synthesize yonetmen;
@synthesize ulke;
@synthesize yapimYili;
@synthesize ad;
@synthesize afisURL;


- (id)init
{
    self = [super init];
    if (self) {
        ad = @"-";
        yonetmen = @"-";
        ulke = @"-";
        yapimYili = 1900;
    }
    return self;
}


-(void) yazdir{
    NSLog(@"Film Adi  :%@",ad);
    NSLog(@"Yonetmen  :%@",yonetmen);
    NSLog(@"Ülke      :%@",ulke);
    NSLog(@"Yapim Yili:%i",yapimYili);
}

-(void)dealloc{
  
}
@end
