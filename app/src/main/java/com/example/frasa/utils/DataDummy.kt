package com.example.frasa.utils

import com.example.frasa.R
import com.example.frasa.domain.model.DataModel

object DataDummy {
    fun generateDataDummy(): List<DataModel> {
        val listData = ArrayList<DataModel>()
        listData.add(
            DataModel(
                id = "1",
                judul = "Three Kinds of Knowledge",
                kategori = "Tips Belajar",
                penulis = "Sabda PS",
                gambar = R.drawable.cover1,
                sinopsis = "Membagi ilmu menjadi 3 bagian untuk memahami peta ilmu yang kita semua pelajari sepanjang hidup",
                isi = "1. Fundamental Skills\n" +
                        "Ini knowledge yang penting banget yang sifatnya teknikal, dan berguna untuk ngelatih cara berpikir, tools yang oke banget untuk kemajuan dan progress kita dalam mikir. Ada beberapa hal yang penting bagi fundamental skills ini.\n" +
                        "Yang pertama itu critical thinking dan logic. Critical thinking itu merupakan kemampuan untuk berpikir dengan benar, bisa memilih-milih informasi mana yang bener mana yang salah, intinya how do we know what we know is true. Ini essential banget. Banyak orang berpikir bahwa mereka bisa mikir. Tapi, untuk berpikir logis intinya adalah gimana kita mikir dengan aturan-aturan logika yang secara universal bener dan ngga gampang kejebak. Sebenernya, ada aturan dasar dalam berpikir, gimana kita bisa ngeliat itu informasi akurat atau ngga, gimana caranya ngambil suatu kesimpulan, apakah sumbernya terpercaya atau nggak, dan seterusnya. Gw tekanin sekali lagi, itu hal yang penting banget. Kalo ngga tau aturannya, ya kita mikirnya jadi ngasal, apa yang menurut kita bener aja.\n" +
                        "Yang kedua, matematika. Pengertiannya disini ngga hanya untuk berhitung sehari-hari ya, tapi lebih dari itu. Dengan kita ngerti matematika secara solid, kita bisa menciptakan pola berpikir yang terintegrasi. Secara internal dan konsisten. Kalo kita punya info atau knowledge apapun,  semua yang diterima itu bisa terkoneksi dan terintegrasi dengan baik. Kita tau gimana harus nyambungin semua info yg kita dapet dengan baik, terintegrasi dan konsisten.\n" +
                        "Kalo lo belajar di zenius.net di limit turunan dan integral (termasuk kalkulus masuk integral juga) lo bisa liat bahwa ternyata pemahaman dasar tentang matematika ini tuh nyambung banget ke fisika atau ke ekonomi, terus nyambung juga ke bagian-bagian matematika yg lain. Dengan belajar matematika dengan bener, semua bisa terintegrasi dan terkoneksi, misalnya kita mikir A, di pikiran kita yg lain B, itu kan jelas kontradiktif, tapi kita ngga sadar. Nah, dengan lo jago matematika, lo bisa jadi sadar akan inconsistencydi dalam pikiran kita, yang sebelumnya mungkin lo ga sadar, dan akhirnya lo bisa benerin deh sedikit demi sedikit cara mikir lo.\n" +
                        "Banyak research di berbagai bidang dan profesi misalnya guru dan marketing, yang perform the job better biasanya adalah mereka yang matematika skills-nya lebih jago. Terus, my favorite person, yang punya liverpool, dia mathematician banget tuh. Kebukti deh, bahwa yang matematikanya oke cenderung perform dengan sangat baik di bidangnya.\n" +
                        "Hal yang ketiga yang penting di fundamental skills adalah verbal skills. Terutama bahasa Inggris. Kenapa? Dengan ngerti bahasa selain mother tongue, bisa bikin struktur otak kita berpikir lebih kompleks. Research mengatakan, orang-orang dengan kemampuan bilingual cenderung punya IQ lebih tinggi. Ini penting banget nih, termasuk orang asing yang bisa bahasa lain selain bahasa mereka sendiri. Menurut gw, semua orang harus bisa.\n" +
                        "2. Insightful Knowledge\n" +
                        "Ini penting banget untuk dipelajari, terlepas dari background-nya apapun. Ini guna juga buat membangun pemikiran kita untuk bisa ngeliat dunia apa adanya. See the world as it is. Kita jadi ngga terjebak dengan mitos-mitos, traditional believe, dll. Ini penting untuk ngeliat paradigma yang lebih luas dengan berbagai macam sudut panjang. Apa aja sih yang termasuk di insightful knowledge ini? Ya exposure lo terhadap filosofi, general sciences, dasar-dasar fisika, dari mana asal terbentuknya bumi, gimana adanya makhluk hidup, munculnya manusia, antropologi, sejarah, itu semua merupakan hal-hal yang penting dan menarik banget untuk dipelajari. Lo nggak harus ngedalemin insightful knowledge secara detail, tapi paling nggak, lo ngerti dan tau, sehingga lo bisa ngebentuk pemikiran-pemikiran yang lebih luas dan lebih objektif. Bisa lebih tercerahkan dan wawasan lo jauh lebih luas dan yang pasti lo jadi ngga mikir terlalu sempit dan jadi orang yang jauh lebih menarik dan lebih wise karena cara pandang lo ngga hanya ngeliat dari satu sisi aja. Terlepas dari bidang lo, lo bakal bertemu banyak orang, terlibat dalam proses-proses demokrasi, membuat keputusan-keputusan di bidang-bidang seperti sosial, politik ekonomi, pemerintah, dan masih banyak lagi lainnya.\n" +
                        "Nah, dengan lo nguasain insightful knowledge ini, lo bisa lebih dapet the big picture dari segala hal. Sejujurnya, pendidikan di Indonesia tuh hampir nggak ada yang bener-bener ngajarin murid-muridnya tentang insightful knowledge. Di universitas-universitas juga nggak banyak yang nawarin. Kalaupun ada, malah kesannya jadi nggak dianggap penting sama muridnya. Padahal, di Amerika, justru setengah dari pembelajarannya itu adalah liberal arts education. Pembelajaran ini banyak ngejelasin tentang berbagai insightful knowledge dan ini penting banget (walaupun diajarin juga materi di bidang-bidang khususnya yang juga bagus sih). Pendidikan mereka terutama di level S1, justru insightful knowledge ini yang diperhitungkan dan dinilai seberapa jauh kemampuan murid untuk menyerap insightful knowledge yang dikasih secara bener. Ini menjadi dasar buat lulus sarjana, sarjana itu by definition adalah mereka yang berpengetahuan dan berpikir secara intelektual dengan pengetahuan yang jelas lebih diperhitungkan dan dianggap reliable (lebih terjamin kebenarannya), bukan hanya sekedar baca buku yang dibaca secara sembarangan.\n" +
                        " \n" +
                        "3. Practical Skills (Vocational Knowledge)\n" +
                        "By definition, udah jelas maksud dari practical skills, lo jago di satu bidang yang spesifik (seperti communication, accounting, dokter, engineer, marketer, dan lain-lain). Dengan lo jago dengan skills itu, lo jadi berguna, dan dengan kemampuan yang lo punya ini lo bisa cari duit, berbisnis, pokoknya skills yang lo kuasain deh. Nah, di practical skills ini lo pilih deh, apa skills yang cocok dan sesuai buat lo.\n" +
                        "Ketiga knowledge itu penting buat lo, yang pertama dan kedua wajib banget dikuasain, yang ketiga lo bisa cari tau bidang yang sesuai dengan yang lo pengen dan sesuai. Nah, untuk practical skills, lo bisa ngasah kemampuan lo dengan deliberate practice (DP), seperti yang udah pernah gw tulis di artikel sebelumnya, dimana dengan lo menguasai suatu skills dengan cara DP lo bisa ngasah kemampuan lo sampai bisa sejago mungkin.\n" +
                        "Tapi perlu diingat, dengan practical skills yang jago banget tanpa nguasain fundamental skills dan insightful knowledge juga kurang dan ngga bakal bisa maksimal. Dengan nguasain ketiganya, lo selain bisa expert di satu bidang dengan dasar cara berpikir yang udah bener dan cara mandang yang lebih luas (tidak sempit). Gw rasa di abad 21 ini kita harus bisa belajar dan dapetin semua untuk bener-bener bisa berguna baik bagi diri sendiri maupun bagi masyarakat. Oke segitu dulu, nanti ke depannya gw bakal sering bahas tentang ini, karena bagi gw, ini hal yang penting banget.\n "
            )
        )
        listData.add(
            DataModel(
                id = "2",
                judul = "Perang Dunia 1: Dua Kapal yang mengubah Sejarah Dunia",
                kategori = "Sejarah Dunia",
                penulis = "Marcel Susanto",
                gambar = R.drawable.cover2,
                sinopsis = "Sejarah yang mengherankan: pelarian dua kapal Jerman di laut Mediterania yang memicu perpecahan negara di Timur Tengah dan lahirnya negara komunis di abad 20.",
                isi = "Perang Dunia 1 dipicu oleh serangkaian kekonyolan manusia, yang pada akhirnya membuat Jerman menjalankan operasi militer rahasia Schlieffen Plan yang bahkan tidak bisa dihentikan sekalipun oleh sang Kaisar Jerman sendiri. Sampai akhirnya Jerman gagal menghentikan mobilisasinya, Rusia meneruskan mobilisasi pasukannya, begitu pula Perancis, Inggris, Austria-Hongaria, dan Serbia. Akhirnya dimulailah perang dunia pertama yang menjadi pemicu awal berbagai bentrokan di seluruh dunia pada awal abad 20. Sebagai gambaran kasar, sederhananya Perang Dunia 1 adalah bentrokan antar 2 kubu.\n" +
                        "ovember 1912, 2 tahun sebelum perang dunia pertama dimulai. Kaiser Wilhelm II, seperti kita ketahui dari artikel sebelumnya, adalah kaisar Jerman yang mengutamakan gengsi militer. Saat itu, perang Balkan pertama tengah berkecamuk. Dengan sering adanya bentrokan di wilayah Laut Tengah (Laut Medieterania) dia merasa bahwa Jerman perlu Divisi Laut Tengah dengan membuat 2 kapal perang, bernama SMS Goeben dan SMS Breslau untuk berjaga-jaga di Laut Mediterania.[1]\n" +
                        "\n" +
                        "Kedua kapal perang ini adalah kapal perang tercanggih di eranya. SMS Goeben adalah sebuah penjelajah-tempur (Battle-cruiser) sementara SMS Breslau yg jauh lebih kecil adalah penjelajah ringan (light cruiser). Keduanya adalah kapal berkecepatan tinggi relatif dibandingkan kapal-kapal lain dengan ukuran yang sama. Meriam kedua kapal itu juga berkualitas lebih baik daripada meriam Inggris maupun Perancis. Begitu pula sistem pembidik meriamnya.\n" +
                        "\n" +
                        "Namun, 2 kapal ini biarpun canggih tapi harus sangat berhati-hati karena Jerman gak punya pangkalan di Laut Tengah! Artinya apa? Jerman harus mengandalkan pelabuhan sekutunya (Austria-Hongaria dan Italia) untuk tempat parkir, ngisi BBM, dll. Di sisi lain, armada Inggris dan Perancis punya PULUHAN kapal perang di Laut Tengah. Dua lawan puluhan kapal? Secara teori jelas Inggris dan Perancis ga perlu khawatir. Kedua kapal ini GAK MUNGKIN bisa mengalahkan armada Inggris maupun Perancis! Tak heran pihak Inggris maupun Perancis tidak terlalu mempedulikan kehadiran 2 kapal perang Jerman ini.\n" +
                        "Sebelum perang, pihak sekutu (Inggris dan Perancis) udah bagi-bagi tugas:\n" +
                        "\n" +
                        "Perancis akan menjaga bagian Barat Laut Tengah, Inggris akan menjaga bagian Timur Laut Tengah.\n" +
                        "Perancis akan menghadapi Angkatan Laut Italia, Inggris akan menghadapi Angkatan Laut Austria-Hongaria.\n" +
                        "Jalur pelayaran horizontal (Gibraltar-Suez dan sebaliknya) maupun vertikal (Perancis-Aljazair maupun sebaliknya) harus dilindungi.\n" +
                        "Pemindahan pasukan Perancis dari koloninya di sepanjang pesisir Pantai Utara Afrika harus dilindungi.\n" +
                        "Nah, dalam pembagian tugas ini, armada Kapal perang Jerman yang cuma 2 biji itu tidak disebut sama sekali! Jerman toh cuma punya 2 kapal, emang bisa apa sih? Mending pusingin soal Angkatan Laut Itali dan Austria-Hongaria aja.\n" +
                        "\n" +
                        "Sementara itu, di pihak Jerman, mereka sadar betul 2 kapal perang takkan bisa mengalahkan armada tempur Inggris maupun Perancis. Begitu perang dunia meletus, cuma ada 2 pilihan rasional bagi para awak 2 kapal ini, yaitu bergabung dengan armada Austria-Hongaria di laut Adriatik untuk bersama-sama menghadapi Angkatan Laut Inggris atau nekad berlayar sampai Ottoman untuk membujuk mereka bergabung dengan sekutu Jerman.\n" +
                        "\n" +
                        "Ketika perang meletus, awalnya pusat memerintahkan untuk mencoba berlayar ke Ottoman, namun di tengah jalan akhirnya pemerintah pusat Jerman menilai misi ini TERLALU BERBAHAYA dan segera memerintahkan Goeben & Breslau bergabung ke dengan Austria-Hongaria di laut Adriatik. Sungguh di luar dugaan, Admiral Wilhelm Souchon yang merupakan komandan Goeben dan Breslau sekaligus salah satu perwira angkatan laut terbaik Jerman, memutuskan sesuatu yang sangat radikal, yaitu MENGABAIKAN PERINTAH PUSAT untuk bergabung dengan armada Austria-Hongaria! Alih-alih, Souchon malah memutuskan untuk berlayar terus jauh ke arah Timur menuju pelabuhan Ottoman (sekarang Turki) dengan harapan dapat meminta bantuan mereka untuk bersekutu melawan Inggris, Rusia, dan Perancis!\n"
            )
        )
        listData.add(
            DataModel(
                id = "3",
                judul = "Bahan Kimia Buatan Bisa Lebih Sehat Daripada Bahan Alami",
                kategori = "Bongkar Hoaks, Sains",
                penulis = "Ivan Waskita",
                gambar = R.drawable.cover3,
                sinopsis = "Banyak orang berpikir bahan kimia itu pasti berbahaya, sedangkan bahan alami itu aman dikonsumsi. Padahal kenyataannya tidak sesederhana itu.",
                isi = "Lagi belanja ke supermarket, liat cemilan. Duh kayanya enak deh buat temen nonton TV series ntar di rumah. Baru aja mau ambil, nyokap langsung bereaksi.\n" +
                        "\n" +
                        "“Kamu jangan sering-sering makan gituan deh, itu kan banyak bahan kimianya!”\n" +
                        "atau pas lagi mau beli obat ke toko obat, tiba-tiba tukang obatnya nyeletuk…\n" +
                        "\n" +
                        "“Daripada beli obat buatan pabrik rekomendasi dokter, mending beli produk yang herbal aja mbak/mas. Lebih alami, lebih sehat lho!”\n" +
                        "Dari kecil, lo pasti sering banget denger kata kimia. Tapi biasanya, kimia atau bahan kimia itu artinya jelek, deh. Sampe sekarang kalo denger kata “kimia”, pasti yang kebayang sama orang-orang itu bahan pengawet lah, pewarna makanan, racun di pestisida, micin (MSG/monosodium glutamat), pokoknya semuanya berbahaya buat kesehatan kita. Sampe-sampe ada tren baru dalam berbelanja, maunya alami atau herbal, dari makanan, kosmetik, produk-produk kecantikan, sampe obat-obatan.\n" +
                        "\n" +
                        "Tapi bener ngga sih bahan kimia itu pasti berbahaya? Apa sih yang namanya bahan kimia itu? Apa benar yang alami atau herbal itu selalu lebih sehat atau lebih baik? Nah, di tulisan ini, gue akan ajak lo untuk mengupas dan menjawab pertanyaan-pertanyaan tersebut satu per satu. Yuk, langsung aja.\n" +
                        "\n" +
                        "Apa sih bahan kimia itu?\n" +
                        "Bahan kimia, atau bahasa Inggrisnya chemicals, sebetulnya ada di mana-mana. Bukan berarti banyak bahan “tambahan” seperti di makanan atau obat-obatan itu saja yah. Sebenarnya, segala sesuatu di sekitar kita itu adalah bahan kimia, baik yang masuk ke dalam tubuh kita maupun yang kita peralatan yang kita gunakan sehari-hari. Termasuk segala yang kita anggap alamiah, dari mulai sayur dan buah-buahan, bahan tambang, segala jenis makanan yang kita makan, minuman yang kita minum, udara yang kita hirup, bumbu masakan tradisional, dan segala hal yang terbentuk dari proses perubahan materi ya adalah kimia.\n" +
                        "Ya, segala sesuatu adalah bahan kimia.\n" +
                        "Masih ngga percaya? Coba bayangkan, lo lagi mau bikin telor mata sapi. Bahan udah siap semua nih, yuk, kita masak sambil liat-liat sekeliling dapur.\n" +
                        "\n" +
                        "Nyalain dulu kompornya yang berbahan bakar elpiji atau LPG, liquefied petroleum gas, propana (C3H8) dan butana (C4H10) cair. Siapin wajan anti lengket, yang terbuat dari teflon atau politetrafloroetilena (PTEF, C2F4)n. Tuang minyak goreng yang katanya sehat dong, mengandung omega-9, asam oleat dan isomernya asam elaidat (C18H34O2). Telur yang mau lo pecahin nih? Bahan utama cangkangnya adalah CaCO3 alias kalsium karbonat. Garam yang lo pake? Na+Cl–, sodium klorida. Buat yang mau nambahin vetsin, pasti udah terkenal nih namanya, monosodium glutamat (MSG) atau Na+C5H\u00AD8NO4–. Hayoo coba ingat-ingat lagi pelajaran di sekolah.\n" +
                        "Nah lho, bener kan gua bilang bahwa segala hal di sekitar kita adalah bahan kimia, bahkan ternyata hal yang kita lakukan sehari-hari seperti masak telor mata sapi aja kok jadi banyak melibatkan banyak bahan kimia. Wah, berarti serem, dong? Nggak kok, jangan dipikir segala hal yang terkait bahan kimia itu nggak baik buat tubuh dan berbahaya buat kita. Sebaliknya, jangan berpikir bahwa segala yang selama ini dianggap bahan alami itu bagus buat tubuh dan gak berbahaya buat kita.\n" +
                        "\n" +
                        "Konsep berpikir bahwa bahan kimia itu bahaya sedangkan bahan yang dianggap bahan alami itu lebih sehat adalah kekeliruan yang besar! Kenapa? Karena sebetulnya segala hal di sekitar kita yang kita anggap alami adalah bahan kimia. Sebaliknya, bahan yang kita anggap sebagai bahan kimia ya sebetulnya semua bersumber dari alam juga. Jadi, bahan kimia itu ya sebetulnya dari bahan alami, dan bahan yang kita anggep alami ya itu bahan kimia juga.\n" +
                        "\n" +
                        "Jadi, sebetulnya bukan masalah bahan kimia vs bahan alami. Tapi, justru gimana kita melihat sebuah komposisi materi itu bisa bermanfaat atau berbahaya bagi kita sebagai manusia. Misalnya nih, propana dan butana yang ada di dalem LPG buat masak tadi itu, bahan kimia yang sekaligus bahan alami juga, kan? Nah, itu adalah senyawa alkana yang cocok banget tuh jadi bahan bakar untuk kebutuhan sehari-hari seperti memasak dan manasin air buat mandi. Contoh lain adalah PTEF atau teflon, senyawa sifatnya unik. Dia berbentuk padat tapi nggak bisa basah, juga tidak reaktif dan tahan panas. Nah, jadinya cocok banget tuh digunakan sebagai wajan.\n" +
                        "\n" +
                        "Kalo udah kenyang makan telor ceploknya, lo haus terus minum air. Nah lho, air itu kan H2O, bahan kimia juga kan?\n" +
                        "Jadi, bahan kimia itu nggak berbahaya nih?\n" +
                        "Eits, jangan terlalu cepet ambil kesimpulan dulu. Bahan kimia itu juga bisa berbahaya kalau kita nggak ngerti cara menggunakannya.\n" +
                        "\n" +
                        "Misalnya, propana di LPG itu kan gas yang mudah terbakar. Kalau sampe sambungan gas ke kompornya ada yang bocor, gas itu bisa keluar ke udara sekitar dengan cepat. Secara si propana itu mudah terbakar, kalau ada percikan api sedikit aja dari korek atau stop kontak listrik bisa bikin rumah lo kebakaran.\n" +
                        "\n" +
                        "Contoh lain dari kegiatan masak kita di atas adalah si teflon. Teflon ini cukup tahan panas dan tidak menghasilkan zat yang berbahaya bagi tubuh manusia sampai suhu 260oC. Buat penggorengan, ini oke-oke aja karena kita menggoreng daging di suhu di bawah 230oC. Minyak goreng yang kita pakai juga akan menyerap panas dari api kompor dan menguap (keluar asap) di bawah suhu 250oC. Secara teori, teflon ini aman buat dipakai. Tapi, kalau wajan teflon itu dipanasin tanpa minyak goreng, dia akan mulai terurai di suhu antara 260oC ke atas. Hasil uraian ini bisa nempel di wajan kita dan masuk ke makanan kita waktu wajan itu dipake lagi buat masak. Nah, sekarang baru deh kita tahu bahwa overheated-PTFE bisa berbahaya bagi kesehatan tubuh.\n" +
                        "\n" +
                        "Contoh LPG dan teflon di atas memberikan kesimpulan yang jelas:\n" +
                        "\n" +
                        "Bahaya bahan kimia terletak pada pemahaman kita tentang bagaimana cara menggunakannya.\n" +
                        "Kalau kita tahu sifat-sifat bahan kimia tersebut, batasan penggunaannya, dan berhati-hati dalam batasan tersebut, bahan kimia itu aman kok.\n" +
                        "Ada satu contoh lagi nih yang semoga nggak bikin lo ngeri kalo mau hangout alias nongkrong. Lo pasti pernah denger kafein dong, itu senyawa aktif yang terdapat di dalam biji kopi dan daun teh. Rumus kimianya, C8H10N4O2. Mungkin sebagian dari kalian suka yah minum teh atau kopi. Si kafein ini adalah senyawa yang bikin kita bangun dan fokus abis minum kopi. Kafein ini juga terdapat di dalam banyak minuman bersoda, tapi dengan jumlah yang lebih kecil.\n" +
                        "\n" +
                        "Nah sekarang lo tau nggak bahwa sebetulnya kafein itu BISA berbahaya apabila dikonsumsi? Kuncinya adalah di kata “bisa”. Untuk tubuh manusia, konsumsi kafein lebih dari 400 miligram dalam waktu singkat dapat menimbulkan efek, seperti gelisah, insomnia, aliran darah berlebih ke daerah muka, gangguan sistem pencernaan, detak jantung tidak stabil dan banyak lainnya. Konsumsi di atas 10 gram bahkan bisa menyebabkan kematian. Kok ngeri banget, apa banyak orang meninggal gara-gara kafein? Tentu tidak. Ternyata, 400 miligram itu, walaupun terdengar sedikit (seperduapuluh sendok teh doang!), hitungannya banyak buat kafein.\n"
            )
        )
        return listData
    }
}