ActiveAdmin.register Vehicle do
  permit_params :vehicle_make, :vehicle_category,
                :vehicle_model, :vehicle_condition,
                :vehicle_registration_date, :vehicle_engine,
                :vehicle_power, :vehicle_drive_type, :vehicle_fuel_type,
                :vehicle_doors, :vehicle_color, :vehicle_interior_type,
                :vehicle_airbags, :vehicle_euroclass, :vehicle_price,
                :vehicle_life_cycle, :image

  form do |f|
    f.inputs do
      f.input :image
      f.input :vehicle_make, collection: ['Alfa Romeo', 'Audi', 'BMW','Citroen','Fiat',
                                          'Ford', 'Hyundai', 'Mercedes-Benz', 'Nissan', 'Opel',
                                          'Peygeot', 'Renault', 'Seat' ,'Suzuki', 'Toyota' ,'Volkswagen'],
          prompt: 'Select make'
      f.input :vehicle_category, collection: ['Passenger','Jeep','SUV','Caravan',
                                              'Commercial Passenger','Roadster',
                                              'Coupe sport','Van'],
              prompt: 'Select category'
      f.input :vehicle_model
      f.input :vehicle_condition, collection: ['New', 'Used'],
              prompt: 'Select condition'
      f.input :vehicle_registration_date, :start_year => 1970, :end_year => Time.now.year + 2
      #f.date_select :vehicle_registration_date, :start_year => Time.now.year - 40, :end_year => Time.now.year + 10
      f.input :vehicle_engine, collection: ['300 cc', '400 cc', '500 cc', '600 cc', '700 cc', '800 cc',
                                            '900 cc', '1000 cc', '1100 cc', '1200 cc', '1300 cc',
                                            '1400 cc', '1500 cc', '1600 cc', '1700 cc', '1800 cc',
                                            '1900 cc', '2000 cc', '2250 cc', '2500 cc', '3000 cc',
                                            '3500 cc', '4000 cc', ],
              prompt: 'Select engine'
      f.input :vehicle_power, collection: ['35 bhp', '50 bhp', '60 bhp', '75 bhp', '90 bhp', '100 bhp',
                                           '110 bhp', '120 bhp', '130 bhp', '140 bhp', '150 bhp', '160 bhp',
                                           '170 bhp', '180 bhp', '190 bhp', '200 bhp', '250 bhp', '300 bhp',
                                           '350 bhp', '400 bhp', '450 bhp'],
              prompt: 'Select power'
      f.input :vehicle_drive_type, collection: ['4x4', 'FWD', 'RWD']
      f.input :vehicle_fuel_type, collection: ['Electric','Gas/LPG','Gasoline','Hybrid Gas','Hybrid Petrol',
                                               'Natural Gas','Petroleum','Other'],
              prompt: 'Select fuel type'
      f.input :vehicle_doors, collection: ['2-3 Doors', '4-5 Doors', '6-7 Doors', 'Other'],
              prompt: 'Select number of doors'
      f.input :vehicle_color, as: :color_picker
      #f.input :vehicle_color, collection: ['Beige','Black','Blue','Bordeaux','Brown','Chromium','Dark Green',
      #                                     'Dark Red','Dark Blue','Gold','Green','Grey','Lemon','Light Blue',
      #                                     'Orange','Ping','Purple-Violet','Red','Silver','White','Yellow',
      #                                     'Other'],
      #        prompt: 'Select color'
      f.input :vehicle_interior_type, collection: ['Alcantar','Full leather','Part leather',
                                                   'Velour','Leatherette','Cloth','Other'],
              prompt: 'Select interior type'
      f.input :vehicle_airbags, collection: ['N/A','over 1','over 2', 'over 4', 'over 6', 'over 8', 'over 10'],
              prompt: 'Select number of airbags'
      f.input :vehicle_euroclass, collection: ['Euro 1','Euro 2','Euro 3','Euro 4','Euro 5','Euro 6',
                                               'Euro 6c','Euro 6d','Euro 6d-TEMP'],
              prompt: 'Select Euroclass'
      f.input :vehicle_life_cycle,:input_html => {'rows' => 5}
      f.input :vehicle_price, label: 'Price (€)',placeholder: '0.00'
    end
    f.actions
  end

  index do
    id_column
    column :image do |ad|
      image_tag ad.image.thumb
    end
    column :vehicle_color
    column :vehicle_make
    column :vehicle_model
    column :vehicle_condition
    column :vehicle_engine
    column :vehicle_power
    number_column :vehicle_price, as: :currency, unit: "€", separator: ","
    actions
  end

  show do
    attributes_table do
      row :image do |ad|
        image_tag ad.image.medium
      end
      row :vehicle_make
      row :vehicle_category
      row :vehicle_model
      row :vehicle_condition
      row :vehicle_registration_date
      row :vehicle_engine
      row :vehicle_power
      row :vehicle_drive_type
      row :vehicle_fuel_type
      row :vehicle_doors
      row :vehicle_color, as: :color_picker
      row :vehicle_interior_type
      row :vehicle_airbags
      row :vehicle_euroclass
      row :vehicle_price
      row :vehicle_life_cycle
    end

    active_admin_comments
  end
end
