//
//  PNWeatherTableViewCell.swift
//  Prompt Now Interview
//
//  Created by Peter Beans on 1/11/23.
//

import UIKit

class PNWeatherTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        contentConfiguration = nil
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with viewModel: ) {
        
    }
    
}
