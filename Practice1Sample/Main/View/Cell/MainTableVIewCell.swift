import UIKit
import Foundation

final class MainTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    public var isShowingBack = false
    
    //MARK: - View
    private lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var frontView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var cityImageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    private lazy var backView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var cityTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 42)
        label.textColor = .black
        return label
    }()
    
    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    override func prepareForReuse() {
        super.prepareForReuse()
        isShowingBack = false
        
//        there is probably no need for removing and setupping everything for reuse, we can just flip the card
        
//        removeAllSubviews()
//        setup()
        
    }
    
    private func setup() {
        setupViews()
        makeConstraints()
        configureTapping()
    }
    
    private func setupViews() {
        contentView.addSubview(containerView)
        
        [frontView, backView].forEach {
            containerView.addSubview($0)
        }
        
        frontView.addSubview(cityTitleLabel)
        backView.addSubview(cityImageView)
        
        //one of the bugs is over here with the views, but, couldn't figure it out
    }
    
    private func makeConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        [frontView, backView].forEach {
            $0.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        }
        
        cityImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        cityTitleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    public func configureTapping() {
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(flip))
        singleTap.numberOfTapsRequired = 1
        containerView.addGestureRecognizer(singleTap)
        containerView.isUserInteractionEnabled = true
    }
    
    @objc public func flip() {
        //in case we switch frontView and backView, it works well, but it shows image first and title on the other side
        //however, in this case, subview cityImageView lays on the top of both sides
        let toView = isShowingBack ? frontView : backView
        let fromView = isShowingBack ? backView : frontView
        UIView.transition(from: fromView, to: toView, duration: 1, options: .transitionFlipFromRight, completion: nil)
        isShowingBack.toggle()
    }
    
    //if i'm not mistakes, there is no need for this function
    private func removeAllSubviews() {
        containerView.subviews.forEach { $0.removeFromSuperview() }
        frontView.subviews.forEach { $0.removeFromSuperview() }
        backView.subviews.forEach { $0.removeFromSuperview() }
    }
    
    public func configure(model: City) {
        isShowingBack = model.isFlipped
        cityImageView.downloaded(from: model.imageUrl)
        cityTitleLabel.text = model.name
    }
}
