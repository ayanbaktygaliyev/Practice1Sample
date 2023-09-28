import Foundation

struct City {
    let id = UUID()
    var name: String
    var imageUrl: String
    var isFlipped: Bool = false
    
    static var cities: [City] = [
        .init(name: "Taldykorgan", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIX-jdX8oV_ymd3c2oBudKlhzDJIcmAKRgRyPB5k36jT7Ss2_Pmjb4mhxzgUVakkmLwu0&usqp=CAU"),
        .init(name: "Almaty", imageUrl: "https://vecher.kz/cache/imagine/1200/uploads/news/2023/07/64a3e540ddb80307653166.jpg"),
        .init(name: "Astana", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQZEpf1Lfy-0MO8tGyMhWaqA8I9GoN_XcMpT7iI8FkQxj3tTEAm4NputiVogDyUcPRLrA&usqp=CAU"),
        .init(name: "Shymkent", imageUrl: "https://img.kapital.kz/U8L_fa9Po2U/bG9jYWw6Ly8vbGVnYWN5L2ltYWdlcy81LzkvYi8zL2MvOGQ0YTJjZjA3ZjhiODUzN2ZmMjA5M2ZkOGEwLmpwZWc"),
        .init(name: "Qaraghandy", imageUrl: "https://c8.alamy.com/comp/RYP14F/historical-and-cultural-center-park-of-first-president-nursultan-nazarbayev-with-monument-of-metallurgist-temirtau-karganda-region-qaraghandy-RYP14F.jpg"),
        .init(name: "Aqtobe", imageUrl: "https://baigenews.kz/storage/storage/news/2022/05/29/mainphoto/3086/1200xauto_bJbChyXP7THMKwobOGOBkV8ubYrX7OCVFGr7Ie2r.jpg"),
        .init(name: "Taraz", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGoq7J8DeuaIIH3asPqA7TrkzmFXiSELk6Bj0bTkxiWXgHiAPkK2db1d5ekM_d4ogJZK8&usqp=CAU"),
        .init(name: "Pavlodar", imageUrl: "https://static.365info.kz/uploads/2021/05/8d57977ef9cec11fbe98090d7410804a.jpg"),
        .init(name: "Semey", imageUrl: "https://vestisemey.kz/wp-content/uploads/2022/10/1647411844x8xsv_1000x768-750x533.jpg"),
        .init(name: "Öskemen", imageUrl: "https://cf.bstatic.com/xdata/images/hotel/max1024x768/213935002.jpg?k=db62341827912c0857ba0e5aa3a48b15de93c732c6e474d0b353513d6d3d6f8f&o=&hp=1"),
    ]
}
