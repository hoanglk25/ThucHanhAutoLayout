//
//  ViewController.swift
//  ThucHanhAutoLayout2
//
//  Created by Hoàng Đức on 01/11/2022.
//

import UIKit

class ViewController: UIViewController {
    var containerView:UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var topView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9378479123, green: 0.977761209, blue: 0.9339237809, alpha: 1)
        return view
    
    }()
        var circleViewLeft:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    var backButton:UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(.init(systemName: "chevron.backward"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    var circleViewRight:UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .white
    return view
    }()
    
    var listButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(.init(systemName: "list.bullet.rectangle.portrait"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    var posterView:UIView = {
        let poster = UIView()
        poster.translatesAutoresizingMaskIntoConstraints = false
        poster.backgroundColor = .white
        return poster
    }()
    
    var posterImageView:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "poster")
        image.translatesAutoresizingMaskIntoConstraints = false
       image.contentMode = .scaleToFill
       return image
    }()
    
    var titleLbl:UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Little Fires Everywhere"
        label.textAlignment = .center
        label.font = UIFont(name: "AvenirNext-Bold", size: 20)
        return label
    }()
    
    var nameLbl:UILabel = {
        let label = UILabel()
        label.text = "By John j.Gobbell"
        label.textColor = .lightGray
        label.font = UIFont(name: "avenir next", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let authStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 5
        return stackView
    }()
    
    let starImageViewFirst:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "star.fill")
        image.contentMode = .scaleAspectFit
        image.tintColor = .yellow
        return image
    }()
    let starImageViewSecond:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "star.fill")
        image.contentMode = .scaleAspectFit
        image.tintColor = .yellow
        return image
    }()
    let starImageViewThird:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "star.fill")
        image.contentMode = .scaleAspectFit
        image.tintColor = .yellow
        return image
    }()
    let starImageViewFour:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "star.fill")
        image.contentMode = .scaleAspectFit
        image.tintColor = .yellow
        return image
    }()
    let starImageViewFith:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "star.fill")
        image.contentMode = .scaleAspectFit
        image.tintColor = .lightGray
        image.layer.opacity = 0.5
        return image
    }()
    let descriptionLbl:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        label.textColor = .black
        label.font = UIFont(name: "AvenirNext-Bold", size: 20)
        return label
    }()
    let priceLbl:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name: "AvenirNext-Bold", size: 20)
       label.layer.opacity = 0.7
        label.text = "$25.00"
        return label
    }()
    
    let descriptionTxt:UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
     
        textView.text = """
Little Fires Everywhere explores the weight of
secerts, the natrue of art and identity, and the
ferocious pull of motherhood-and the danger of
believing that following the...See more
"""
       let mutableAttributedString = NSMutableAttributedString(string: textView.text)
       mutableAttributedString.setAsLink(textToFind: "See more", linkName: "FindReseller")
       textView.attributedText = mutableAttributedString
       textView.font = UIFont(name: "avenir next", size: 15)
       textView.isScrollEnabled = false
       textView.textColor = .darkGray
       textView.isEditable = false
       textView.backgroundColor = .clear
       textView.layer.opacity = 0.8
      
       return textView
    }()
    let ButBtn:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.07145098597, green: 0.3981918097, blue: 0.3390673399, alpha: 1)
        button.tintColor = .white
        button.setTitle("But Now", for: .normal)
        return button
    }()
    
    let steppView:UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9306592345, green: 0.9455890059, blue: 0.9410204887, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let qtyStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.backgroundColor = .clear
        stepper.tintColor = .black
        return stepper
    }()
    let qtyLbl:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "QTY"
        label.font = UIFont(name: "avenir next", size: 17)
        label.textColor = .black
        return label
    }()
    
    let stepStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 7
        return stackView
    }()
    
    let subBtn:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .lightGray
        return button
    }()
    var number:Int = 2
    let resultTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.text = "2"
        textField.font = UIFont(name: "avenir next", size: 17)
        return textField
    }()
    let addBtn:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .lightGray
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        topView.layer.cornerRadius = 15
        circleViewLeft.layer.cornerRadius = circleViewLeft.bounds.width/2
        circleViewRight.layer.cornerRadius = circleViewRight.bounds.width/2
        posterView.layer.masksToBounds = true
        posterView.layer.cornerRadius = 15
        posterView.layer.shadowRadius = 0
        posterView.layer.shadowOffset = .init(width: 10, height: 10)
        posterView.layer.shadowColor = UIColor.black.cgColor
        posterView.layer.shadowOpacity = 1
        posterView.layer.shadowPath = UIBezierPath(rect: posterView.bounds).cgPath
        ButBtn.layer.cornerRadius = 15
        steppView.layer.cornerRadius = 15
      addBtn.addTarget(self, action: #selector(onTapAddBtn), for: .touchUpInside)
       subBtn.addTarget(self, action: #selector(onTapSubBtn), for: .touchUpInside)

    }

    func setUpTopView(){
        view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        containerView.addSubview(topView)
        topView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40).isActive = true
        topView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        topView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        topView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 3/5).isActive = true
        
        topView.addSubview(circleViewLeft)
        circleViewLeft.leftAnchor.constraint(equalTo: topView.leftAnchor, constant: 20).isActive = true
        circleViewLeft.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        circleViewLeft.widthAnchor.constraint(equalToConstant: 50).isActive = true
        circleViewLeft.heightAnchor.constraint(equalTo: circleViewLeft.widthAnchor, multiplier: 1).isActive = true
        
        circleViewLeft.addSubview(backButton)
        backButton.centerXAnchor.constraint(equalTo: circleViewLeft.centerXAnchor, constant: 0).isActive = true
        backButton.centerYAnchor.constraint(equalTo: circleViewLeft.centerYAnchor, constant: 0).isActive = true

        topView.addSubview(circleViewRight)
        circleViewRight.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        circleViewRight.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: -20).isActive = true
        circleViewRight.widthAnchor.constraint(equalTo: circleViewLeft.widthAnchor, multiplier: 1).isActive = true
        circleViewRight.heightAnchor.constraint(equalTo: circleViewRight.widthAnchor, multiplier: 1).isActive = true
        
        circleViewRight.addSubview(listButton)
        listButton.centerXAnchor.constraint(equalTo: circleViewRight.centerXAnchor, constant: 0).isActive = true
        listButton.centerYAnchor.constraint(equalTo: circleViewRight.centerYAnchor, constant: 0).isActive = true
        
        topView.addSubview(posterView)
        posterView.topAnchor.constraint(equalTo: circleViewRight.bottomAnchor, constant: 20).isActive = true
        posterView.centerXAnchor.constraint(equalTo: topView.centerXAnchor, constant: 0).isActive = true
        posterView.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 3/5).isActive = true
        posterView.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 1/2).isActive = true
      
        posterView.addSubview(posterImageView)
        posterImageView.topAnchor.constraint(equalTo: posterView.topAnchor, constant: 0).isActive = true
        posterImageView.bottomAnchor.constraint(equalTo: posterView.bottomAnchor, constant: 0).isActive = true
        posterImageView.leftAnchor.constraint(equalTo: posterView.leftAnchor, constant: 0).isActive = true
        posterImageView.rightAnchor.constraint(equalTo: posterView.rightAnchor, constant: 0).isActive = true
        
        topView.addSubview(titleLbl)
        titleLbl.topAnchor.constraint(equalTo: posterView.bottomAnchor, constant: 15).isActive = true
        titleLbl.centerXAnchor.constraint(equalTo: topView.centerXAnchor, constant: 0).isActive = true
        
        topView.addSubview(nameLbl)
        nameLbl.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 10).isActive = true
        nameLbl.centerXAnchor.constraint(equalTo: topView.centerXAnchor, constant: 0).isActive = true
        
        topView.addSubview(authStackView)
        authStackView.topAnchor.constraint(equalTo: nameLbl.bottomAnchor, constant: 10).isActive = true
        authStackView.centerXAnchor.constraint(equalTo: topView.centerXAnchor, constant: 0).isActive = true
        authStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        authStackView.addArrangedSubview(starImageViewFirst)
        authStackView.addArrangedSubview(starImageViewSecond)
        authStackView.addArrangedSubview(starImageViewThird)
        authStackView.addArrangedSubview(starImageViewFour)
        authStackView.addArrangedSubview(starImageViewFith)
        
        starImageViewFirst.heightAnchor.constraint(equalToConstant: 20).isActive = true
        starImageViewFirst.widthAnchor.constraint(equalTo: starImageViewFirst.heightAnchor, multiplier: 1).isActive = true
        
        topView.addSubview(descriptionLbl)
        descriptionLbl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        descriptionLbl.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20).isActive = true
        
        topView.addSubview(priceLbl)
        priceLbl.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20).isActive = true
        priceLbl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(descriptionTxt)
        descriptionTxt.topAnchor.constraint(equalTo: descriptionLbl.bottomAnchor, constant: 10).isActive = true
        descriptionTxt.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        descriptionTxt.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        descriptionTxt.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 1).isActive = true
        
        view.addSubview(ButBtn)
        ButBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        ButBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        ButBtn.widthAnchor.constraint(equalToConstant: 140).isActive = true
        ButBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(steppView)
        steppView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        steppView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        steppView.heightAnchor.constraint(equalTo: ButBtn.heightAnchor, multiplier: 1).isActive = true
        steppView.rightAnchor.constraint(equalTo: ButBtn.leftAnchor, constant: -20).isActive = true

        steppView.addSubview(qtyLbl)
        qtyLbl.leftAnchor.constraint(equalTo: steppView.leftAnchor, constant: 20).isActive = true
        qtyLbl.centerYAnchor.constraint(equalTo: steppView.centerYAnchor, constant: 0).isActive = true
        
        steppView.addSubview(stepStackView)
        stepStackView.rightAnchor.constraint(equalTo: steppView.rightAnchor, constant: -20).isActive = true
        stepStackView.leftAnchor.constraint(equalTo: qtyLbl.rightAnchor, constant: 40).isActive = true
        stepStackView.centerYAnchor.constraint(equalTo: steppView.centerYAnchor, constant: 0).isActive = true
        
        stepStackView.addArrangedSubview(subBtn)
        stepStackView.addArrangedSubview(resultTextField)
        stepStackView.addArrangedSubview(addBtn)
    }
    
    @objc func onTapAddBtn() {
        number += 1
        resultTextField.text = "\(number)"
       if number <= 0 {
          number = 0
          resultTextField.text = "0"
       }
    }
   @objc func onTapSubBtn() {
         number -= 1
         resultTextField.text = "\(number)"
      if number <= 0 {
         number = 0
         resultTextField.text = "0"
      }
      
      
   }

}
extension NSMutableAttributedString {
       func setAsLink(textToFind:String, linkName:String) {
          let foundRange = self.mutableString.range(of: textToFind)
          if foundRange.location != NSNotFound {
             self.addAttribute(NSAttributedString.Key.link, value: linkName, range: foundRange)
          }
       }
    }


