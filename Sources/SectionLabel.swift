//
//  SectionLabel.swift
//  Demo
//
//  Created by Marijn Schilling on 06/06/16.
//
//

import UIKit

class SectionLabel: UIView {

    static let RightOffsetForSectionLabel : CGFloat = 90.0
    private static let Margin : CGFloat = 19.0

    var sectionlabelWidth : CGFloat {
        return self.textLabel.width() + (2 * SectionLabel.Margin) + 4
    }

    private let sectionLabelImageView = UIImageView()

    private let textLabel = UILabel()

    var labelImage: UIImage? {
        didSet {

            if let labelImage = self.labelImage {
                sectionLabelImageView.image = labelImage
                sectionLabelImageView.frame = self.bounds
                self.addSubview(sectionLabelImageView)

                self.bringSubviewToFront(self.textLabel)
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.textLabel.textColor = UIColor.grayColor()
        self.addSubview(self.textLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
          self.textLabel.frame = CGRectMake(SectionLabel.Margin, SectionLabel.Margin, self.textLabel.width(), 22)
    }

    func setFont(font : UIFont){
         self.textLabel.font = font
    }

    func setText(text: String){
        self.textLabel.text = text
        self.setNeedsLayout()
    }

    func hide(){}

    func show(){}

}
