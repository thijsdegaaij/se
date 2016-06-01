
namespace :export do
  desc "Prints Bedrijfstak.all in a seeds.rb way."
  task :seeds_format => :environment do
    Bedrijfstak.order(:id).all.each do |bedrijfstak|
      puts "Bedrijfstak.create(#{bedrijfstak.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
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

namespace :export do
  desc "Prints Mens.all in a seeds.rb way."
  task :seeds_format => :environment do
    Mens.order(:id).all.each do |mens|
      puts "Mens.create(#{mens.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
