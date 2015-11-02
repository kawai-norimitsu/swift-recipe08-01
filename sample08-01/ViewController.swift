//
//  ViewController.swift
//  sample08-01
//
//  Created by 河合 徳光 on 2015/11/01.
//  Copyright © 2015年 norimitsu kawai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ----- CSVファイル読み込み
        let csvBundle = NSBundle.mainBundle().pathForResource("data", ofType: "csv")
        do {
            var csvData: String = try String(contentsOfFile: csvBundle!, encoding: NSUTF8StringEncoding)
            csvData = csvData.stringByReplacingOccurrencesOfString("\r", withString: "")
            let csvArray = csvData.componentsSeparatedByString("\n")
            for line in csvArray {
                let parts = line.componentsSeparatedByString(",")
                for part in parts {
                    print(part)
                }
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

