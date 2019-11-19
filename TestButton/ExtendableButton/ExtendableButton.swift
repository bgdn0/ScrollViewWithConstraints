//
//  ExtendableButton.swift
//  TestButton
//
//  Created by Administrator on 19.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ExtendableButton: UIControl {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var disclosureImageView: UIImageView!
    @IBOutlet private weak var separator: UIView!
    
    @IBOutlet private weak var leftOffsetConstraint: NSLayoutConstraint!
    @IBOutlet private weak var rightOffsetConstraint: NSLayoutConstraint!
    @IBOutlet private weak var disclosureRightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var titleLeftConstraint: NSLayoutConstraint!
    @IBOutlet private weak var iconWidthConstraint: NSLayoutConstraint!
    @IBOutlet private weak var iconHeightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var disclosureWidthConstraint: NSLayoutConstraint!
    @IBOutlet private weak var disclosureHeightConstraint: NSLayoutConstraint!
    
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    private func initialize() {
        guard let topView = Bundle.main.loadNibNamed("ExtendableButton",
                                                     owner: self,
                                                     options: nil)?.first as? UIView else { return }
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(topView)
        
        topView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        topView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        topView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        topView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    // MARK: - UIProperties
    
    var leftOffset: CGFloat {
        get { return leftOffsetConstraint.constant }
        set { leftOffsetConstraint.constant = newValue }
    }
    
    var rightOffset: CGFloat {
        get { return rightOffsetConstraint.constant }
        set { rightOffsetConstraint.constant = newValue }
    }
    
    var titleLeftOffset: CGFloat {
        get { return titleLeftConstraint.constant }
        set { titleLeftConstraint.constant = newValue }
    }
    
    @IBInspectable var useSeparator: Bool {
        get { return !separator.isHidden }
        set { separator.isHidden = !newValue }
    }
    
    @IBInspectable var separatorColor: UIColor? {
        get { return separator.backgroundColor }
        set { separator.backgroundColor = newValue }
    }
    
    @IBInspectable var iconImage: UIImage? {
        get { return iconImageView.image }
        set {
            iconImageView.image = newValue
            
            if let imgSize = newValue?.size {
                iconWidthConstraint.constant = imgSize.width
                iconHeightConstraint.constant = imgSize.height
            } else {
                iconWidthConstraint.constant = 0
                iconHeightConstraint.constant = 0
            }
        }
    }
    
    @IBInspectable var disclosureImage: UIImage? {
        get { return disclosureImageView.image }
        set {
            disclosureImageView.image = newValue
            
            if let imgSize = newValue?.size {
                disclosureWidthConstraint.constant = imgSize.width
                disclosureHeightConstraint.constant = imgSize.height
            } else {
                disclosureWidthConstraint.constant = 0
                disclosureWidthConstraint.constant = 0
            }
        }
    }
}
