// SPDX-License-Identifier: GPL-3.0
pragma experimental ABIEncoderV2;
pragma solidity >=0.4.25 <0.9.0;

abstract contract InitData {

    struct Image {
        string name;
        string avatar;
        string url_1;
        string url_2;
        string url_3;
        string description;
        uint256 amountVote;
    }

    mapping(uint256 => address) public artistId;
    mapping(uint256 => Image) public imageId;

    string public baseURI;

    /**
     * Dummy data for event
     * In the future, we can accept the same from construction,
     * which will be called at the time of deployment
     */
    function _initializeData() internal {

        imageId[1] = Image({
            name: "Ha Giang",
            avatar: "https://img.theculturetrip.com/wp-content/uploads/2021/03/g30ck3.jpg",
            url_1: "https://cdn3.dhht.vn/wp-content/uploads/2022/09/9-30-canh-dep-ha-giang-hung-vi-nhat-du-lich-ha-giang-an-gi.jpg",
            url_2: "https://top10hagiang.com/wp-content/uploads/2022/10/hinh-anh-ha-giang-10.jpg",
            url_3: "https://dulichchat.com/wp-content/uploads/2020/10/du-lich-ha-giang-dulichchat-134.jpg",
            description: "Ha Giang is rugged, remote and spectacular. This area features some of the best views in the country, overlooking terraced rice paddies and deep valleys that have been carved into the limestone mountains for thousands of years. If you love motorbike rides, be sure to check out either the Quan Ba Pass or the Ma Pi Leng Pass for an exhilarating way to take in the area's natural beauty.",
            amountVote: 0
        });
        artistId[1] = 0x7e43f90bED8fD75BfF186Ae199c77F8dF55fD898;

        imageId[2] = Image({
            name: "Sa Pa",
            avatar: "https://img.theculturetrip.com/450x/smart/wp-content/uploads/2021/03/jkpp2r.jpg",
            url_1: "https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-sapa-dep-tho-mong-nhu-tron-tien-canh-bong-lai-2-820x565.jpg",
            url_2: "https://img.thuthuatphanmem.vn/uploads/2018/09/26/anh-dep-mot-goc-nha-tho-co-nhin-tu-tren-cao_052040628.jpg",
            url_3: "https://tackexinh.com/wp-content/uploads/2021/05/hinh-anh-Fansipan.jpg",
            description: "Sa Pa has grown substantially in the past few years. While some are put off by the tourism boom in this once-quiet mountain town, there are still many great reasons to visit. Seek out a homestay in one of the surrounding villages to keep your experience authentic, and if the weather permits and you're looking for an adventure, climb Fansipan, the tallest mountain in all of Indochina.",
            amountVote: 0
        });
        artistId[2] = 0x895d54c0C99de41b31bc9B1e0b4a92Bc3190d256;

        imageId[3] = Image({
            name: "Ha Long Bay",
            avatar: "https://img.theculturetrip.com/450x/smart/wp-content/uploads/2021/03/cf2fm1.jpg",
            url_1: "https://antimatter.vn/wp-content/uploads/2022/05/anh-ha-long.jpg",
            url_2: "https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2023/2/13/1147154/007_Rs.jpg",
            url_3: "https://thdtravel.com.vn/wp-content/uploads/2021/10/hinh-nen-vinh-ha-long-quang-ninh-dep.jpg",
            description: "When it comes to Vietnamese tourism there's no avoiding Ha Long Bay. The rampant commercialisation of this natural wonder may have turned it into a bit of a cliche, but you can't deny the sheer beauty of the Unesco World Heritage Site. Try to get on a reputable tour boat, or stay on Cat Ba island. For a similar experience with a little less hustle and bustle, try the nearby Bai Tu Long Bay",
            amountVote: 0
        });
        artistId[3] = 0xA84937C6F5f6ad83d885E977262d8d7A237D012A;

        imageId[4] = Image({
            name: "Ninh Binh",
            avatar: "https://img.theculturetrip.com/450x/smart/wp-content/uploads/2021/03/kchdnd.jpg",
            url_1: "https://motogo.vn/wp-content/uploads/2019/10/a2_IENS.jpg",
            url_2: "https://motogo.vn/wp-content/uploads/2019/10/trang-an-ninh-binh.jpg",
            url_3: "https://motogo.vn/wp-content/uploads/2020/02/kinh-nghiem-du-lich-trang-an.jpg",
            description: "Of all the excellent day trip options from Hanoi, this is likely the most popular ~ and it's no wonder why. The limestone karsts, serpentine rivers and lush scenery of Ninh Binh are loved by adventurous types and make for great holiday photos. Most trips to the area are combined with a visit to the Trang An caves and grottoes, too.",
            amountVote: 0
        });
        artistId[4] = 0xb28B3C557a3D0CE38CA0dDfe988ab355473C4130;

        imageId[5] = Image({
            name: "Phong Nha ~ Ke Bang National Park",
            avatar: "https://img.theculturetrip.com/450x/smart/wp-content/uploads/2021/03/2c6b9ra.jpg",
            url_1: "https://img4.thuthuatphanmem.vn/uploads/2020/11/09/hinh-anh-phong-nha-ke-bang-dep_044040406.jpg",
            url_2: "https://img4.thuthuatphanmem.vn/uploads/2020/12/26/anh-da-voi-phong-nha-ke-bang_101200585.jpg",
            url_3: "https://img4.thuthuatphanmem.vn/uploads/2020/12/26/anh-hang-dong-phong-nha-ke-bang_101201580.jpg",
            description: "Unless you're making your way through all of Vietnam, this national park is pretty far out of the way. But those who do make the effort to get here will be rewarded with some of the most unique experiences in all of Vietnam. This park is famous for its caves, and even boasts the largest cave in the world, Son Doong, which at its tallest reaches 198m (650ft).",
            amountVote: 0
        });
        artistId[5] = 0x9C5232D1db9EAa4B87c8b8D1846A9bBC2A7AF91E;

        imageId[6] = Image({
            name: "Hue",
            avatar: "https://img.theculturetrip.com/450x/smart/wp-content/uploads/2021/03/ey48hw.jpg",
            url_1: "https://toquoc.mediacdn.vn/Uploaded/hangcinet/2018_06_30/anh_dep_hue_EGXC.jpg",
            url_2: "https://ik.imagekit.io/tvlk/blog/2018/03/dia-diem-chup-anh-dep-o-hue-pha-tam-giang-1.jpg?tr=dpr-2,w-675",
            url_3: "https://ik.imagekit.io/tvlk/blog/2018/03/dia-diem-chup-anh-dep-o-hue-pha-tam-giang-3.jpg?tr=dpr-2,w-675",
            description: "This city was once the capital of imperial Vietnam and much of its rich history still remains. The centrepiece is the Citadel and the enclosed Imperial City. Sadly, much of it was destroyed by American bombers during the war, but plenty remains to give you an idea of the city's former splendour",
            amountVote: 0
        });
        artistId[6] = 0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5;
    }
}