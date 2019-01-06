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
