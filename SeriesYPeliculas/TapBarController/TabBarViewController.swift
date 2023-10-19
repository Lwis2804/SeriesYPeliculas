
import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view1 = self.createNavController(for: PlayingNowViewController(), title: "Playing Now", image: UIImage(systemName: "play.fill") ?? UIImage())
        let view2 = self.createNavController(for: MostPopularViewController(), title: "Most popular", image: UIImage(systemName: "star.fill") ?? UIImage())
        let view3 = self.createNavController(for: TopRatedViewController(), title: "Top Rated", image: UIImage(systemName: "square.3.stack.3d.top.fill") ?? UIImage())
        let view4 = self.createNavController(for: UpcomingViewController(), title: "Upcoming", image: UIImage(systemName: "arrowshape.zigzag.forward.fill") ?? UIImage())
        let view5 = self.createNavController(for: SearchBarViewController(), title: "Search", image: UIImage(systemName: "magnifyingglass") ?? UIImage())
        self.viewControllers = [ view1, view2, view3, view4, view5]
    }

    func createNavController(for mainViewController: UIViewController, title: String, image : UIImage ) -> UIViewController {
        let navController = UINavigationController(rootViewController: mainViewController)
        navController.tabBarItem.title = "\(title)"
        mainViewController.navigationItem.title = "\(title)"
        navController.tabBarItem.image = image
        mainViewController.navigationItem.backButtonTitle = "Atras"
        return navController
    }
}
