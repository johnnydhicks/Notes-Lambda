//
//  NoteDetailViewController.swift
//  Notes (iOSPT1)
//
//  Created by Johnny Hicks on 4/29/19.
//  Copyright © 2019 Johnny Hicks. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    var note: Note? {
        didSet {
            self.updateViews()
        }
    }
    @IBOutlet weak var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateViews()
    }
    
    private func updateViews() {
        guard let note = self.note, isViewLoaded else { return }
        
        noteTextView.text = note.text
    }
}
