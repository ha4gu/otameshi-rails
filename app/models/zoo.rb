class Zoo < Facility
  rails_admin do
    navigation_label "施設"
    weight 3

    object_label_method :name

    list do
      field :id
      field :name
      field :created_at
      field :updated_at
    end

    show do
      field :id
      field :type
      field :name
      field :created_at
      field :updated_at
    end

    edit do
      field :name, :string
      field :ordered_images
    end
  end
end

# == Schema Information
#
# Table name: facilities
#
#  id         :bigint           not null, primary key
#  name       :text(65535)      not null
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
