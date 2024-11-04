require 'ffaker'

FactoryBot.define do
  factory :pulppo_property, class: OpenStruct do
    type { 'Casa' }

    listing {
      {
        price: { price: FFaker::Random.rand(50000..1000000), currency: 'MXN', value: FFaker::Random.rand(50000..1000000) },
        operation: 'sale',
        title: FFaker::Lorem.words(3).join(' ')
      }
    }

    attributes {
      {
        yearBuild: FFaker::Vehicle.year,
        expenses: FFaker::Random.rand(500..5000),
        expensesDescription: FFaker::Lorem.sentence,
        rooms: FFaker::Random.rand(1..10),
        ampliation: FFaker::Boolean.random,
        suites: FFaker::Random.rand(1..5),
        bathrooms: FFaker::Random.rand(1..5),
        toilettes: FFaker::Random.rand(1..3),
        parkings: FFaker::Random.rand(0..5),
        zonification: FFaker::Address.city,
        roofedSurface: FFaker::Random.rand(50..500),
        semiroofedSurface: FFaker::Random.rand(50..200),
        totalSurface: FFaker::Random.rand(100..500),
        unroofedSurface: FFaker::Random.rand(50..300)
      }
    }

    address {
      {
        zip: FFaker::Address.zip_code,
        city: FFaker::Address.city,
        street: FFaker::Address.street_name,
        state: FFaker::AddressUS.state,
        neighborhood: FFaker::Address.neighborhood,
        floor: FFaker::Random.rand(1..20).to_s,
        apartment: FFaker::Random.rand(1..10).to_s,
        location: { type: 'Point', coordinates: [FFaker::Geolocation.lat, FFaker::Geolocation.lng] }
      }
    }

    pictures {
      [{
        url: FFaker::Internet.http_url,
        description: FFaker::Lorem.sentence,
        type: 'main'
      }]
    }

    videos {
      [{
        url: FFaker::Internet.http_url,
        description: FFaker::Lorem.sentence,
        type: 'main'
      }]
    }
  end
end
