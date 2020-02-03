# Pollfish iOS SDK

**Requirements:** Pollfish framework works with iOS version 10.0 and above, as mentioned in Limitations point.


## Quick Quide

* Download Pollfish iOS SDK and unzip it

* You will find two framework for both iPhone device as well as iPhone simulator

* Import Pollfish.framework to your project (Drag and drop in Project -> General -> Frameworks)

* Add "import Pollfish" & call "PollfishDelegate" where you want to show this panel
ex : - import Pollfish
ex : - class FirstViewController: UIViewController, PollfishDelegate {
}

* Call init Pollfish where you want to add in the App’s Delegate or within a View Controller 
ex : - let pollfish = Pollfish.init(frame: self.view.frame) 
self.view.addSubview(pollfish)

* Set delegate as self for getting callbacks from framework
ex : - pollfish.delegate = self

* Pass link which you want to open in parameter "link"
ex : - pollfish.link = "https://www.pollfish.com/"

* Pass parametere if you want to, in parameteres "param1", "param2", "param3", "param4", "param5"
ex : - pollfish.param1 = "Hi"
pollfish.param2 = "Hello"
pollfish.param3 = "Have good day!"

* Or just add following function in your code : -
func addPollfishView() {

    let pollfish = Pollfish.init(frame: self.view.frame)
    pollfish.delegate = self
    pollfish.link = "https://www.pollfish.com/"
    pollfish.param1 = "PARAM 1"
    pollfish.param2 = "PARAM 2"
    pollfish.param3 = "PARAM 3"
    pollfish.param4 = "PARAM 4"
    pollfish.param5 = "PARAM 5"
    self.view.addSubview(pollfish)
}

* And call above function from you want to like self.addPollfishView()

* Add all delegate methods to get callbacks as mentioned in requirement docs   
// MARK: - Open/Close panel delegate methods
func panelOpened() {
    print("Panel Opened")
}

func panelClosed(param1: String, param2: String, param3: String) {
    print("Panel Closed")
    print("param3 : ", param1)
    print("param4 : ", param2)
    print("param5 : ", param3)
}

// MARK: - WebView delegate methods
func webViewFinishLoadingSuccessfully() {
    print("Finished navigating to url")
}

func webViewFinishLoadingFailed() {
    print("Failed navigating to url")
}

