//
//  ViewController.swift
//  Ch.01
//
//  Created by hklife_mo on 2021/09/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var quoteList: [Quote] = [Quote(quoteName: "발없는 말이 천리간다.1", name: "작가1"),
                              Quote(quoteName: "아니땐 굴뚝에 연기나랴.2", name: "작가2"),
                              Quote(quoteName: "아무도 믿지 마라.3", name: "작가3"),
                              Quote(quoteName: "명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언4", name: "작가4"),
                              Quote.init(quoteName: "명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언명언5", name: "작가5")]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.quoteLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        self.nameLabel.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        print(#function + " 총 저장되어 있는 명언 갯수 == > \(quoteList.count)")
    }


    @IBAction func create(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        print("random Int => \(random)")
        let lowData = quoteList[random]
        
        print(#function + " == > \(lowData.quoteName)")
        print(#function + " == > \(lowData.name)")
        
        self.quoteLabel.text = lowData.quoteName
        self.nameLabel.text = lowData.name
    }
}

