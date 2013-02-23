

#import <UIKit/UIKit.h>
#import "Song.h"
#import "ArtistPictureViewController.h"

@interface SongDetailViewController : UIViewController{
    Track * selectedTrack;
    UILabel *labelTrackName;
    UILabel *labelGenre;
    UILabel *labelArtsit;
    UILabel *labelAlbum;
}
@property (strong, nonatomic) IBOutlet UILabel *labelTrackName;
@property (strong, nonatomic) IBOutlet UILabel *labelGenre;
@property (strong, nonatomic) IBOutlet UILabel *labelArtsit;
@property (strong, nonatomic) IBOutlet UILabel *labelAlbum;

@property(nonatomic,strong) Track* selectedTrack;
@end
