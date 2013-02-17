
#import "SongDetailViewController.h"

@implementation SongDetailViewController
@synthesize labelYapimYili;
@synthesize labelYonetmen;
@synthesize labelUlke;
@synthesize seciliFilm;
@synthesize labelFilmAdi;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    labelFilmAdi.text = [seciliFilm ad];
    labelUlke.text = [seciliFilm ulke];
    labelYonetmen.text= [seciliFilm yonetmen];
    labelYapimYili.text = [NSString stringWithFormat:@"%d", [seciliFilm yapimYili]];
}
 

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ArtistiPictureViewController *ArtistiPictureViewController = [segue destinationViewController];
    ArtistiPictureViewController.seciliFilm = seciliFilm;
}


- (void)viewDidUnload
{
   
 
    [self setLabelFilmAdi:nil];
    [self setLabelYapimYili:nil];
    [self setLabelYonetmen:nil];
    [self setLabelUlke:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
