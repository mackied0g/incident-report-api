Company.destroy_all
Manager.destroy_all
Complaintant.destroy_all
Aggressor.destroy_all
Incident.destroy_all

nasa = Company.create(name: "NASA")
ihop = Company.create(name: "IHOP")
flatiron = Company.create(name: "Flatiron School")

kevin = Manager.create(name: "Kevin Stursburg", title: "Regional Manager", gender: "M", age: 42, race: "white", email: "kstursburg@nasa.gov", company_id: nasa.id)
stella = Manager.create(name: "Stella Preston", title: "Manager of Sales", gender: "F", age: 33, race: "white", email: "@nasa.gov", company_id: nasa.id)
david = Manager.create(name: "David Wallace", title: "Regional Manager", gender: "M", age: 42, race: "white", email: "dwallace@dundermifflin.com", company_id: nasa.id)

sally = Complaintant.create(name: "Sally Greenswald", title: "Accounts Payable",  manager_id: kevin.id, gender: "F", age: 64, race: "hispanic", email: "sgreenswald@ihop.com", check_in: false)
jamal = Complaintant.create(name: "Jamal Brown", title: "Sr. Financial Adviser", manager_id: kevin.id, gender: "M", age: 31, race: "black", email: "jbrown@canadaair.com", check_in: true)
naomi = Complaintant.create(name: "Naomi Vaarmark", title: "Assistant to the Regional Manager", manager_id: kevin.id, gender: "NB", age: 23, race: "white", email: "nvaarmark@ihop.com", check_in: true)


amos = Aggressor.create(manager_id: kevin.id, issuecount: 3, name: "Amos Lee", title: "Accountant", gender: "M", age: 36, race: "white", email: "amos@lee.com")
joey = Aggressor.create(manager_id: stella.id, issuecount: 3, name: "Joey Sativa", title: "Sales Representative", gender: "M", age: 27, race: "asian", email: "joey@joey.com")
rebecca = Aggressor.create(manager_id: kevin.id, issuecount: 3, name: "Rebecca Donner", title: "Phys Ed. Teacher", gender: "F", age: 30, race: "white", email: "frank@frank.edu")

incident1 = Incident.create(complaintant_id: naomi.id, aggressor_id: rebecca.id, severity: 7, description: "She keeps calling my by incorrect pronouns.", datetime: "05-04-2019 15:44:23", location: "water cooler", witnesses: "Lisa Frank and Ken Barba")
incident2 = Incident.create(complaintant_id: sally.id, aggressor_id: amos.id, severity: 10, description: "He made me cry because he made fun of my Pokemon collection.", datetime: "05-04-2019 15:44:23", location: "My office", witnesses: "Nobody")
incident1 = Incident.create(complaintant_id: sally.id, aggressor_id: amos.id, severity: 1, description: "He made a joke about poltics that made me uncomfortable.", datetime: "05-04-2019 15:44:23", location: "lunchroom", witnesses: "Will and Grace")


