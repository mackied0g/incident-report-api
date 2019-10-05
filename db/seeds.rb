nasa = Company.create(name: "NASA")
ihop = Company.create(name: "IHOP")
flatiron = Company.create(name: "Flatiron School")

kevin = Manager.create(name: "Kevin Stursburg", title: "Regional Manager", employeenum: 000000, gender: "M", age: 42, race: "white", email: "kstursburg@nasa.gov", company_id: nasa.id)
stella = Manager.create(name: "Stella Preston", title: "Manager of Sales", employeenum: 1231, gender: "F", age: 33, race: "white", email: "@nasa.gov", company_id: nasa.id)
david = Manager.create(name: "David Wallace", title: "Regional Manager", employeenum: 000000, gender: "M", age: 42, race: "white", email: "dwallace@dundermifflin.com", company_id: nasa.id)

sally = Complaintant.create(name: "Sally Greenswald", title: "Accounts Payable", employeenum: 123123, manager_id: kevin.id, gender: "F", age: 64, race: "hispanic", email: "sgreenswald@ihop.com", check_in: false, check_in2: false)
jamal = Complaintant.create(name: "Jamal Brown", title: "Sr. Financial Adviser", employeenum: 456456, manager_id: kevin.id, gender: "M", age: 31, race: "black", email: "jbrown@canadaair.com", check_in: true, check_in2: false)
naomi = Complaintant.create(name: "Naomi Vaarmark", title: "Assistant to the Regional Manager", employeenum: 789789, manager_id: kevin.id, gender: "NB", age: 23, race: "white", email: "nvaarmark@ihop.com", check_in: true, check_in2: true)

amos = Aggressor.create(name: "Amos Lee",)
joey = Aggressor.create(name: "Joey Sativa")
frank = Aggressor.create(name: "Frank Cifarelli")

incident1 = Incident.create(complaintant: sally, aggressor: amos, severity: 7, description: "He made fun of my weight.", location: "water cooler", witnesses: "Lisa Frank and Ken Barba", comments: "")
incident2 = Incident.create(complaintant: sally, aggressor: amos, severity: 10, description: "He made me cry because he made fun of my dead dad.", location: "My office", witnesses: "Nobody", comments: "")
incident1 = Incident.create(complaintant: jamal, aggressor: frank, severity: 1, description: "He made a joke about poltics that made me uncomfortable.", location: "lunchroom", witnesses: "Will and Grace", comments: "")



