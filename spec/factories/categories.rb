# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    access_count 1

    factory :category_with_articles do
      after(:build) do |category|
        category.articles = [FactoryGirl.create(:article_with_category,
         :category => category)]
      end
    end
                                                    
    trait :name_aaa do name "Aaa" end
    trait :name_zzz do name "Zzz" end
    trait :access_count_zero do access_count 0 end
    trait :access_count_ten do access_count 10 end
    
    factory :aaa_name_with_low_access_count, traits: [:name_aaa, :access_count_zero]
    factory :aaa_name_with_high_access_count, traits: [:name_aaa, :access_count_ten]
    factory :zzz_name_with_low_access_count, traits: [:name_zzz, :access_count_zero]
    factory :zzz_name_with_high_access_count, traits: [:name_zzz, :access_count_ten]

   end                                            
end
