namespace :export do
  desc "Prints Bedrijfstak.all in a seeds.rb way."
  task :seeds_format => :environment do
    Bedrijfstak.order(:id).all.each do |bedrijfstak|
      puts "Bedrijfstak.create(#{bedrijfstak.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Boeking.all in a seeds.rb way."
  task :seeds_format => :environment do
    Boeking.order(:id).all.each do |boeking|
      puts "Boeking.create(#{boeking.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Boekproces.all in a seeds.rb way."
  task :seeds_format => :environment do
    Boekproces.order(:id).all.each do |boekproces|
      puts "Boekproces.create(#{boekproces.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Grootboekrekening.all in a seeds.rb way."
  task :seeds_format => :environment do
    Grootboekrekening.order(:id).all.each do |grootboekrekening|
      puts "Grootboekrekening.create(#{grootboekrekening.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Grootboektype.all in a seeds.rb way."
  task :seeds_format => :environment do
    Grootboektype.order(:id).all.each do |grootboektype|
      puts "Grootboektype.create(#{grootboektype.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Journaal.all in a seeds.rb way."
  task :seeds_format => :environment do
    Journaal.order(:id).all.each do |journaal|
      puts "Journaal.create(#{journaal.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Journaaltype.all in a seeds.rb way."
  task :seeds_format => :environment do
    Journaaltype.order(:id).all.each do |journaaltype|
      puts "Journaaltype.create(#{journaaltype.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Mens.all in a seeds.rb way."
  task :seeds_format => :environment do
    Mens.order(:id).all.each do |mens|
      puts "Mens.create(#{mens.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Organisatie.all in a seeds.rb way."
  task :seeds_format => :environment do
    Organisatie.order(:id).all.each do |organisatie|
      puts "Organisatie.create(#{organisatie.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Product.all in a seeds.rb way."
  task :seeds_format => :environment do
    Product.order(:id).all.each do |product|
      puts "Product.create(#{product.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
namespace :export do
  desc "Prints Rechtsvorm.all in a seeds.rb way."
  task :seeds_format => :environment do
    Rechtsvorm.order(:id).all.each do |rechtsvorm|
      puts "Rechtsvorm.create(#{rechtsvorm.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
