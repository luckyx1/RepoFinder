//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Rob Hernandez on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    @IBOutlet weak var starSlider: UISlider!
    
    var settings: GithubRepoSearchSettings!
    weak var delegate: SettingsPresentingViewControllerDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.starSlider.value = Float(settings.minStars)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        self.delegate?.didSaveSettings(settings: self.settings)
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }
    

}


