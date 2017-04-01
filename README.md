# Tab-Bar-ControllerSB
a TabBarController done programmatically


setting the tab bar controller as the rootViewController
```
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let tabBar = TabBarController()
        tabBar.viewControllers = self.getArrayOfViewControllers()
        self.customiseTabItems(tabBar: tabBar.tabBar)
        // set tabBar as root
  
        self.window?.rootViewController = tabBar
        self.window?.makeKeyAndVisible()
        return true
    }

```

```
```
