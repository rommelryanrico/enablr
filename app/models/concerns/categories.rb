module Categories
  @software_categories = [
                          '-- Software --',
                          'Mobile App',
                          'Mobile Game',
                          'Antivirus and Security',
                          'Data Storage',
                          'Development',
                          'Web App',
                          'Console Game',
                          'Computer Game',
                          'Operating System',
                          'Office and Business',
                          'Image, Video and Audio',
                          'Personal Finance, Tax and Legal',
                          'Education',
                          'Web and Desktop Publishing',
                          'Virtual Reality'
                         ]

  @hardware_categories = [
                          '-- Hardware --',
                          'Cameras & Photo',
                          'Cell Phones',
                          'Smart Watches',
                          'Accessories',
                          'Computers',
                          'Tablets',
                          'Network Hardware',
                          'TV, Video and Home Audio',
                          'Portable Audio and Headphones',
                          'Car Electronics',
                          'Home Surveillance',
                          'Smart Home',
                          'Video and PC Gaming',
                          'Virtual Reality'
                        ]

  def self.categories
    (@software_categories + @hardware_categories).map do |category|
      [category, category]
    end
  end

  def self.valid_categories
    invalid = [@software_categories.first, @hardware_categories.first]

    (@software_categories + @hardware_categories) - invalid
  end

  def self.hardware?(category)
    @hardware_categories.include?(category)
  end
end
