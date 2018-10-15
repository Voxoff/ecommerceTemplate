Todo:
# Pagination
# Pages: Home, Order show, payment, sign in, sign up, 


# An ecommerce template

Gems
*Devise
*Stripe - *NEED VALID APIKEYS*
*ActiveAdmin
*Cloudinary - *NEED VALID APIKEYS*
*CarrierWave
*MoneyRails
*Validations
*Facebook Login - *NEED VALID APIKEYS*
*Acts As Votable for Add to Favorites w/ AJAX*
*ElasticSearch (If E-Commerce has Blog)*
*Browser*

Components:
1. Google Maps for Location and AutocompleteAddress
2. MailChimp for Newsteller
3. Mailer Folder (Ruby Folder)
4. Filters
5. Rails Internationalization (multiple languages)
6. Action Cable for items displayed.
7. Google & FaceBook Sign Up

Optional Components:
BackEnd Admin
	- User Analytics
	- Content Change & Upload
	- Delete User
LiveChat


Pages:
About Us
Privacy Policy
Terms and Conditions
FAQ
How it Works
Contact Us

Models:
- User 
- Items
- Reviews
- Pages
- Order 
- Payment

Basic Model Attributes:
1. User:
    1. First Name: string
    2. Last Name: string
    3. Email: string
    4. Admin: boolean, default:  0, null: false
2. Items:
    1. Name: string
    2. Description: string
    3. Size: string or integer
    4. Availability: boolean or string
    5. Amount in Stock: integer or string
    6. Photo: string
    7. Color: string
    8. Price: integer
    9. Category:
    10. SKU (if stripe added - see Order model)
3. Orders:
    1. State  - string
    2. Item_sku - string
    3. amount_cents - integer
    4. amount_currency - string
    5. payment - json
    6. User_id
    7. Item_id
4. Reviews:
    1. Content
    2. Rating
    3. Item_id
    4. User_id

HTML Structure Convention:
- Every page should have a main <div> followed by <section> tags that divide the page.
    - Inside <section> tags it is important to use <header> in case there are multiple <h> tags
    - https://www.html-5-tutorial.com/all-html-tags.htm for more tags

StylingSheets Convention:
- One SCSS file per page
- Setting primary and secondary colors for color schemes($)
- Nesting Classes i.e:
    - <div> class=“card”   <header class=“card_header”> Name of Item </header>         <p class=“card_content”> Item Description </p> </div> 
	          in CSS the above code is styled like this:
	
	.card {
		color: blue;
		background-color: white;
		
		&_header {
			font-size: 1.3rem;
			font-family: Comic Sans;
		}

		&_content {
			line-height: 10px;
			font-size: 1.3rem;
		}
	}

- Use of VH and REM are very important instead of using PX convention to maximize web responsivenes
    - Setting Width and Height in vh
    - Setting Font Size in Rem
- Use of Pseudo Classes is very important in order to refactor styling code: 
	- :before and :after

VIEWS:
1. Item:
	1. Show, Index if admin: Update, Delete
