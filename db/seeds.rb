Product.destroy_all
Category.destroy_all
User.destroy_all

Size.create(name: 'XS')
Size.create(name: 'S')
Size.create(name: 'M')
Size.create(name: 'L')
Size.create(name: 'XL')
Size.create(name: 'XXL')
Size.create(name: 'XXXL')

Category.create(name: 'T-Shirt', image:"https://5.imimg.com/data5/OY/OP/MY-21273442/mens-blank-t-shirt-500x500.png")

Category.create(name: 'Denim', image:"https://5.imimg.com/data5/RQ/PU/MY-15306275/mens-blue-plain-denim-jeans-500x500.jpg")

Category.create(name: 'Skirt', image: "https://i.pinimg.com/564x/60/01/e2/6001e29177d6b80023bae7f830f0c3ec.jpg" )

Category.create(name: 'Jacket', image: "https://5.imimg.com/data5/NM/LX/MY-42532489/mens-black-jacket-500x500.jpg")

Category.create(name: 'Shoes', image: "https://mupi.com.co/wp-content/uploads/2022/03/tenis-celeste-cuadros-dama-mupi-shoes-500x500.jpg")

Category.create(name: 'Socks', image: "https://5.imimg.com/data5/XK/UI/GP/SELLER-10700814/cotton-sport-socks-500x500.jpg")

Category.create(name: 'Tights', image: "https://i.etsystatic.com/16750192/r/il/f05284/3308001205/il_500x500.3308001205_2zfc.jpg")
