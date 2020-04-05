# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



c1 = Customer.create(name:"Matias",last_name: "Ponce",email: "maponce@miuandes.cl",phone: "+569324342", password:"1234",address:"ca1")
c2 = Customer.create(name:"Andres",last_name: "Vial",email: "avial5@miuandes.cl",phone: "+569324344", password:"1233",address:"ca2")

ev1 = EventVenue.create(name:"SpaceJojo",address:"Street1",capacity:100)
ev2 = EventVenue.create(name:"SpaceWeb",address:"Street2",capacity:200)
ev3 = EventVenue.create(name:"SpaceHello",address:"Street3",capacity:300)

e1 = Event.new(name:"Jojo-Con",description:"jojo",start_date:DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"))
e2 = Event.new(name:"Web-Con",description:"web",start_date:DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"))
e3 = Event.new(name:"Hello-Con",description:"hello",start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"))

e1.event_venue = ev1
e2.event_venue = ev2
e3.event_venue = ev3

e1.save!
e2.save!
e3.save!

t1 = TicketType.new(ticket_price:3000,t_type:"golden")
t2 = TicketType.new(ticket_price:4000,t_type:"general")
t3 = TicketType.new(ticket_price:3000,t_type:"special")
t4 = TicketType.new(ticket_price:4000,t_type:"normal")
t5 = TicketType.new(ticket_price:3000,t_type:"red")
t6 = TicketType.new(ticket_price:4000,t_type:"blue")

t1.event=e1
t2.event=e1
t3.event=e2
t4.event=e2
t5.event=e3
t6.event=e3

t1.save!
t2.save!
t3.save!
t4.save!
t5.save!
t6.save!


o1 = TicketOrder.new()
o2 = TicketOrder.new()
o3 = TicketOrder.new()
o4 = TicketOrder.new()

o1.customer = c1
o1.ticket_types = t1
o1.ticket_types = t3

o1.customer = c2
o1.ticket_types = t2
o1.ticket_types = t4

o1.customer = c1
o1.ticket_types = t5
o1.ticket_types = t3

o1.customer = c2
o1.ticket_types = t2
o1.ticket_types = t4

o1.save!
o2.save!
o3.save!
o4.save!

