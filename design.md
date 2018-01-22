# Toys on Tracks - Design Documentation

## Project Summary

***Toys on Tracks*** (*ToT*) is a website for people to buy and sell toys. Both buyers and sellers can register for the site using their email address, and can access the site using a password chosen by themselves. 

Users who sell toys (*sellers*) are able to put up items for sale on ToT. They are able to specify such details as name, description and category, and even upload photos of their items. Users who buy toys (*buyers*) are able to browse the site, finding toys that match criteria such as category, description, location, and price. It should be stated that users can be both simultaneously buyers and sellers - although not for the same item.

When a seller puts an item up for sale, the user can opt to fix the price for an toy, which can be up for sale indefinitely. Alternately, the seller can put the item up for auction - albeit for a limited time. A starting price is chosen, and different buyers can issue bids of increasing value for the toy; the buyer who issues the highest bid before the auction ends gets the item. Some auctions, however, may have no bidders, and the seller may choose to close the auction, or sell it for a fixed price instead. 

Buyers who decide to purchase an item can pay by credit card. If the payment succeeds, then the buyer is redirected to a “Payment successful” screen and a receipt is emailed to both buyer and seller. If the payment fails, then the buyer is directed to a “Payment unsuccessful” screen. (Sellers may not be immediately aware of this, but would be notified by email.) 

***Toys on Tracks*** is a simple project that is meant to be a demonstration of Ruby on Rails. In a **real** website, the following features would be at least *considered* if not *implemented*:

* **Delivery**: how does the seller get the toy to the buyer? Does ToT provide its own shipping and handling? What if the seller doesn’t deliver the toy? Or what if the toy arrives broken?
* **Reputation**: can buyers and sellers have their reputation up-voted and down-voted by other users?
* **Reporting and Abuse**: what if ToT users engage in abusive or offensive behavior? How do other users complain? Toys on Tracks is a website for *toys* - dolls, trinkets, games, teddy bears and other items - but not a website for the ***toys*** which one finds at "Adult" shops and Sexpos. Some users may not get the difference. Some may deliberately ignore it. They need to be taught not to do that sort of thing.

## User Stories

I am providing user stories for the features I am delivering in the project (rather than the “nice-to-have” features such as “Delivery” and “Reputation”). As much as possible, I decided to express user stories using the following template:

As a *type of user*, I want *some goal or objective* [so that *some benefit or value accrues*].

Where the “so that” clause is optional. All user stories are grouped into epics. 

### As a user I want to supply information about myself so that other users know who I am.

1. As a user, I want to register using my email address.
2. As a user, I want to choose my own password. 
3. As a user, I want to give myself a unique identifier – a name – so that others can identity me on the site, and I can identify them in turn. This may or may not be my legal name (which I should have the freedom to share it with others, or abstain from doing so).
4. As a user, I want to have the option of providing a legal name in addition to my unique identifier, so that any legal disputes with ToT and other users are settled in a timely fashion. 
5. As a user, I would like to have the option of specifying my gender, but I would also like to have the option of not supplying my gender, because ultimately it’s my business and nobody else’s. 
6. As a user, I want to supply my postal address, so that if I buy something, ToT will know where to send it. 
7. As a user, I would like to have the option of supplying my postal address either by typing or by geolocation, so that I don’t waste my time in tedious typing.
8. As a user, I would like to have the ability to supply a phone number as well, so that people can phone me if necessary.
9. As a user, I would like to have the individual, independent choices of either hiding my email, address and phone number from other users, or showing them to other users, so that I can keep my privacy as much as practicable. I would be delighted if “hide” was the default choice for each of these options. 
10. As a user, I would like to be able to supply descriptions of myself and upload photos of myself, so that people know who I am dealing with. 
11. As a user, I would like to be able to have my own page on the site, so so that I can display my identifier, my description and photo, and other identifiers I choose to make public as well. 
12. As a user, I would like to be able to change all information I have supplied of myself for public display, with the understanding that ToT would keep a record of all changes for legal purposes. In particular, I should be able to change:
    1. My email;
    2. My password;
    3. My unique identifying name and/or legal name;
    4. My gender;
    5. My postal address;
    6. My phone number;
    7. Privacy settings for phone number, email address and postal address;
    8. A description of myself; and,
    9. A photo of myself (assuming I have supplied it). In particular, if I have a photo, I should be able to change it, delete it, and resupply another photo (or the same) at any time.

*Note*: the following additional user stories would be implemented in a real product, but are not being implemented in the current project.

1. As a user, I want ToT to let me store a residential address separate from a postal address. 
2. As a user, I expect ToT to send me a confirmatory email upon registering for the site.
3. As a user, I expect ToT to provide me a “Forget my Password” function, so that the site sends me an email with a link for changing the password.
4. As a user, I expect ToT to provide me the functionality of two factor authentication (using authentication both by logging in and also responding to tokens sent by SMS).

### As a user I want to be able to be both a buyer and a seller.

1. As a user, I want to be able to buy items from other users.
2. As a user, I want to be able to sell items to other users.
3. As a user, I want to be able to sell items to other users at the same time I am buying items from other users. I do not want ToT to force me to have separate identities for buying and selling.
4. As a buyer, I want to be able to register as a buyer using my credit card for validation. 
5. As a buyer, I do not want my full credit card details to be stored on the system, as that makes a target for hackers. I am fine with abbreviated details kept on the system, such as the last four digits of my credit card number, and also the expiry date of the credit card.
6. As a buyer, I really, really, really do not want my credit card details ever visible to other users, either in full form or abbreviated form.
7. As a buyer, I would like to be reminded of when my credit cards's expiry date comes around, so that I know when it is time to change. I would also like to be informed of when the credit card becomes invalid for other reasons.
8. As a buyer, I expect to be able to change the details for my credit card on the system, or delete it for that matter. I understand that the abbreviated details I supply are only for registration as a buyer, and that I will have to enter my full details any time I try to purchase on ToT. However, I understand that there are advantages of providing credit card details (such as automatic reminders for expired cards). 
9. As a seller, I want to be able to register as a seller by using the details of an account for receiving the proceeds of any successful sale. Details may include such things as the name of the bank, the account name, the BSB and the account number.
10. As a seller, I want to be able to change and delete my bank account details at any time, as long as I understand that I need an actual bank account to receive the proceeds of any sale I make.

### As a seller I want to be able to advertise the toys I want to sell.

1. As a seller, I want to able to advertise the toys I want to sell on my own user's page. 
2. As a seller, I would also like to be able to advertise the toys I want to sell on the home page of ToT.
3. As a seller, I would like to advertise the toys I want to sell now, and the toys I want to sell later, on both the home page and my own home page. For example, I may wish to repair the toys that I am advertising before selling them.
4. As a seller, I want buyers able to search for toys they want on the home page, list them, and filter and sort the listing.
5. As a seller, I want every toy I advertise on ToT to have its own page. For each toy, its page will include (but is not limited to) the following data:
    1. The name of the toy;
    2. A description of the toy;
    3. A photo of the toy;
    4. A category for the toy;
    5. The date that the toy was first advertised; and, 
    6. Whether the toy is available for sale or auction now.
6. As a seller, I want to be able to change the data for a toy any time I like, except when in the middle of an auction. 
7. As a seller, I want to be the only person able to sell the items and toys I sell.
8. As a seller, I want to be able to cease advertising my toys any time I like, except in the middle of an auction.
9. As a seller, I want to be able to put an item up for outright sale, and specify the sale price; the price should be displayed on the item’s web page.
10. As a seller, I want to able to withdraw items from sale at any time, as long as sale has occurred.
11. As a seller, I want also to be able to put an item up for auction, and specify the following criteria for an auction, which should be displayed on the item’s web page: 
    1. Starting date and time for auction;
    2 Final date and time for auction
    3. Opening price for auction; and,
    4. Current biding price;
12. As a seller, I want buyers to bid on items, and any bid price must exceed that of any bid before, or the opening price.
13. As a seller, I want to be able to see the name of any buyer that makes a bid on an item.
14. As a seller, I want to be able to withdraw an item from auction if no bids have been made on it.
15. As a seller, I want the pages for items I have withdrawn or sold off or auctioned off not to be visible to any other buyer or seller. In particular, they should be removed from the home page's listing, and should also be removed from my listing of items for sale. 

An [example](http://url.com/ "Title")

*Note* 1: a lot of the ideas for the data each item needs comes from the [eBay Field Index API Reference](https://developer.ebay.com/devzone/xml/docs/Reference/eBay/fieldindex.html ).

*Note* 2: these user stories assume that each item can only be sold once, and that toy sellers are not making nor selling multiple copies of the same toy.

### As a buyer, I want to be able to buy toys.

1. As a buyer, I want to be able to immediately buy items available for immediate sale.
2. As a buyer, I want to be able to make bids on items being auctioned, with the understanding that any bids must be greater than any bids before.
3. As a buyer, I want to be emailed automatically if I make the winning bid on an auction, with a link to a page where I can purchase the toy. 
4. As a buyer, when I see a purchase page for a toy, I want to see the name of the item, the price and the seller, a form for entering my credit card details, and a submit button.
5. As a buyer, I want to see a confirmation / thank you page if I was able to pay for the toy using my credit card.  
6. As a buyer, I want to see a failure page if there was any problems paying for an item.
7. As a buyer, I want to be emailed a receipt if I was able to pay for a toy using my credit card.
8. As a seller, I want to have the money from a successful sale deposited in my bank account. 
9. As a seller, I want to be notified if a sale is successful or a failure. 
10. As a seller, I want to have the option of putting a toy up for sale again if there are any issues with sale. 
 
Entities and Relationships
From the user stories above, we can derive the following entities for the domain for Toys on Trains.

User

This represents registered users in the system – people who can log in and browse items in the system. Information contains includes such things as Gender and Email Address (and Privacy settings for same). 

Buyer

This is one of the subtypes of User that can buy items on Toys on Tracks. To register as a buyer, Users must provide a credit card, and Buyer information is basically abbreviated credit card information. It is unnecessary, obtrusive and insecure for Buyers to be forced to store their full credit card information.

Seller

This is the other subtype of User, but those who can sell items on Toys on Tracks. Registering as a seller means disclosing one’s bank account details, and Seller information is the bank account information. This information is unabbreviated, because the full details are necessary for the seller to receive funds, and because these details can’t be used to transfer funds from the seller’s account.
 
Item

This represents an item being sold by a seller. It represents such information as name, description, category, photo, and the time the item was advertised (or perhaps withdrawn)

Sale

This represents the sale of an Item (or an attempted sale of an Item) to a Buyer.  This information also records the success (or failure) of transferring information from the Buyer to the Seller. There are two types of Sales in the system.

Outright Sale

These are Sales from one Seller to one Buyer at a particular time, at a fixed price. 

Auction

An Auction represents an auction on an Item by a Seller, with a starting price, for a fixed point of time. There may be several bids before the Auction expires. However, there may be auctions where no Buyer makes a bid, and thus no transaction occurs.

Bid

A Bid represents a bid on an item in an Auction by a Buyer

Note: in practice, there would be an additional Transaction entity, which recorded the results of a transaction between buyer and seller in addition to a Sale entity. The reason for this is that the information for buyers and sellers – such as addresses, emails and phone numbers - often change over their lifetime. For the benefit of ToT (and any staff visiting from the ATO and Police), and there needs to be a permanent record of their values at the time the transactions happened. The existing Entity model refer to the current addresses and phone numbers of Users, but do not store earlier records; without Transaction, it would often be impossible to access this information.  

In practice, there would be additional constraints in the system, such as that a Buyer cannot buy from themselves, or bid on items auctioned by themselves. Trying to mark up their own price would probably be illegal.
