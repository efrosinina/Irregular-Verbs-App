//
//  SelectVerbsTableViewCell.swift
//  IrregularVerbsApp
//
//  Created by Елизавета Ефросинина on 21/04/2023.
//

import UIKit
import SnapKit

final class  SelectVerbsTableViewCell: UITableViewCell {
    
    enum State {
        case select, unselect
        
        var image: UIImage {
            switch self {
            case .select:
                return UIImage.checkmark
            case .unselect:
                return UIImage(systemName: "circlebadge") ?? UIImage.add
            }
        }
    }
    
    //MARK: -- GUI Variables
    private lazy var checkboxImageView: UIImageView = {
        let view = UIImageView()
        
        view.image = State.unselect.image
        view.contentMode = .center
        
        
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        
        view.axis = .horizontal // Вертикальный стэк
        view.distribution = .fillEqually // Выравнивание элементов в стэке
        view.alignment = .center // вертикальное выравнивание контента в стэке
        view.spacing = 5 // Расстояние между объектами в стэке
        
        return view
    }()
    
    private lazy var infinitiveView = UIView()
    
    private lazy var infinitiveLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        
        return label
    }()
    
    private lazy var translationLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .systemGray4
        
        return label
    }()
    
    private lazy var pastLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var participleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        
        return label
    }()
    
    //MARK: -- Initializations
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -- Methods
    func configure(with verb: Verb, isSelected: Bool) {
        infinitiveLabel.text = verb.infinitive
        translationLabel.text = verb.translation
        pastLabel.text = verb.pastSimple
        participleLabel.text = verb.participle
        
        checkboxImageView.image = isSelected ? State.select.image : State.unselect.image
    }
    
    //MARK: -- Private methods
    private func setupUI() {
        selectionStyle = .none
        
        infinitiveView.addSubviews([infinitiveLabel, translationLabel])
        stackView.addArrangedSubviews([infinitiveView, pastLabel, participleLabel])
        addSubviews([checkboxImageView, stackView]) // Add elements to the view itself
        
        setupConstraints()
    }
    
   private func setupConstraints() {
        checkboxImageView.snp.makeConstraints { make in
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().inset(20)
        }
        infinitiveLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        translationLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(infinitiveLabel.snp.bottom).offset(0)
        }
        
        infinitiveView.snp.makeConstraints { make in
            make.height.equalTo(69)
        }
        
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(checkboxImageView.snp.trailing).offset(5)
            make.top.right.bottom.equalToSuperview()
        }
    }
}
