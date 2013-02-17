#import "HypedSongsTableViewController.h"
NSMutableArray *filmler;


@implementation HypedSongsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    filmler = [NSMutableArray new];
    
    Film *film1 = [Film new];
    [film1 setAd:@"Snatch"];
    [film1 setYonetmen:@"Guy Ritchie"];
    [film1 setUlke:@"İngiltere"];
    [film1 setYapimYili:2000];
    film1.afisURL = [NSURL URLWithString:@"http://ia.media-imdb.com/images/M/MV5BMjAxMzE0MDA4OF5BMl5BanBnXkFtZTYwOTM5Mzk4._V1._SY317_.jpg"];
    [filmler addObject:film1];
    
    film1 = [Film new];
    [film1 setAd:@"Collateral"];
    [film1 setYonetmen:@"Michael Mann"];
    [film1 setUlke:@"A.B.D."];
    [film1 setYapimYili:2004];
     film1.afisURL = [NSURL URLWithString:@"http://ia.media-imdb.com/images/M/MV5BMjE3NjM5OTMxMV5BMl5BanBnXkFtZTcwOTIzMTQyMw@@._V1._SY317_.jpg"];
    [filmler addObject:film1];
    
    film1 = [Film new];
    [film1 setAd:@"Contact"];
    [film1 setYonetmen:@"Robert Zemeckis"];
    [film1 setUlke:@"A.B.D."];
    [film1 setYapimYili:1997];
    film1.afisURL = [NSURL URLWithString:@"http://ia.media-imdb.com/images/M/MV5BMTkxODM2MjI0NF5BMl5BanBnXkFtZTcwMjU3NDEzMQ@@._V1._SY317_CR8,0,214,317_.jpg"];
    [filmler addObject:film1];
    
    
    film1 = [Film new];
    [film1 setAd:@"Seven"];
    [film1 setYonetmen:@"David Fincher"];
    [film1 setUlke:@"A.B.D."];
    [film1 setYapimYili:1995];
    film1.afisURL = [NSURL URLWithString:@"http://ia.media-imdb.com/images/M/MV5BMTQwNTU3MTE4NF5BMl5BanBnXkFtZTcwOTgxNDM2Mg@@._V1._SY317_.jpg"];
    [filmler addObject:film1];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [filmler count];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    SongDetailViewController *filmDetayController = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    int seciliSatir = [path row];
    Film* film = [filmler objectAtIndex:seciliSatir];
    
    filmDetayController.seciliFilm = film;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Film * film = [filmler objectAtIndex:indexPath.row];
    cell.textLabel.text = [film ad];
    
    return cell;
}
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
