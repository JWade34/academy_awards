require 'csv'

desc "blah"
task :import_file  => [:environment] do

  csv_text = File.read('app/files/academy_awards.csv')
  csv = CSV.parse(csv_text, :headers => true)
#  puts "starting with: #{Nomination.count}"
  csv.each do |row|
     nom = Nomination.create!(
     year: row["Year"],
     category: row["Category"],
     nominee: row["Nominee"],
     additional_info: row["Additional Info"],
     won?: row["Won?"]
     )
  puts nom.attributes
  end
#  puts "starting with: #{Nomination.count}"

end
