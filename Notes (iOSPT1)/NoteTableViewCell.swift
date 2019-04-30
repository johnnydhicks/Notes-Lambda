//
//  NoteTableViewCell.swift
//  Notes (iOSPT1)
//
//  Created by Johnny Hicks on 4/29/19.
//  Copyright © 2019 Johnny Hicks. All rights reserved.
//

import UIKit
// Steps
// 1. Create Protocol
// 2. Weak Var Delegate of protocol type
// 3. Call delegate method in IBAction
// 4. Assign the delegate

protocol NoteTableViewCellDelegate: AnyObject {
    func shareNote(for cell: NoteTableViewCell)
}

class NoteTableViewCell: UITableViewCell {
    @IBOutlet weak var noteLabel: UILabel!
    
    var note: Note? {
        didSet {
            self.updateViews()
        }
    }
    
    weak var delegate: NoteTableViewCellDelegate?
    
    private func updateViews() {
        guard let note = self.note else { return }
        self.noteLabel.text = note.text
    }

    @IBAction func shareButtonTapped(_ sender: Any) {
        self.delegate?.shareNote(for: self)
    }
}
