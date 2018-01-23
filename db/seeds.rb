Book.destroy_all
Author.destroy_all

@author_1 = Author.create(name: "Bob Cobb")
@author_2 = Author.create(name: "Hal Hope")
@author_3 = Author.create(name: "Jim Jupe")

Book.create(title: "Rainy Days", author: @author_1)
Book.create(title: "Some New Infomration", author: @author_2)
Book.create(title: "Many Items", author: @author_3)
Book.create(title: "Difficult Dogs", author: @author_1)
Book.create(title: "Cat on the Town", author: @author_2)
Book.create(title: "Dropping the Hat", author: @author_3)
Book.create(title: "On the Loose", author: @author_1)
Book.create(title: "Criminal Happenings", author: @author_2)
Book.create(title: "New Evidence, Old Crimes", author: @author_3)
Book.create(title: "Walking Outside", author: @author_1)