# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nasa = Company.create(name: "NASA")
ihop = Company.create(name: "IHOP")
flatiron = Company.create(name: "Flatiron School")

kevin = Manager.create(name: "Kevin Stursburg", title: "Regional Manager", employeenum: 000000, gender: "M", age: 42, race: "white", email: "kstursburg@nasa.gov", check_in: false, company_id: nasa.id)
stella = Manager.create(name: "Stella Preston", title: "Manager of Sales", employeenum: 1231, gender: "F", age: 33, race: "white", email: "@nasa.gov", check_in: false, company_id: nasa.id)
kevin = Manager.create(name: "Kevin Stursburg", title: "Regional Manager", employeenum: 000000, gender: "M", age: 42, race: "white", email: "kstursburg@nasa.gov", check_in: false, company_id: nasa.id)

sally = Complaintant.create(name: "Sally Greenswald", title: "Accounts Payable", employeenum: 123123, manager_id: kevin.id, gender: "F", age: 64, race: "hispanic", email: "sgreenswald@ihop.com", check_in: false, check_in2: false)
jamal = Complaintant.create(name: "Jamal Brown", title: "Sr. Financial Adviser", employeenum: 456456, manager_id: kevin.id, gender: "M", age: 31, race: "black", email: "jbrown@canadaair.com", check_in: true, check_in2: false)
naomi = Complaintant.create(name: "Naomi Vaarmark", title: "Assistant to the Regional Manager", employeenum: 789789, manager_id: kevin.id, gender: "NB", age: 23, race: "white", email: "nvaarmark@ihop.com", check_in: true, check_in2: true)
