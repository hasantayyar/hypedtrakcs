#import <UIKit/UIKit.h>
#import "Song.h"

@interface ArtistiPictureViewController : UIViewController{
        Track* selectedTrack;
    UIImageView *imageView;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property(nonatomic,strong) Track* selectedTrack;
@end
