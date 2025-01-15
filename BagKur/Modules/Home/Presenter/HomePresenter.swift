//
//  HomePresenter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

final class HomePresenter {
  weak var view: HomeView?
  var router: HomeWireframe!
  var interactor: HomeInteractorInput!
  
  var homeItems: [HomeItem] = [
    HomeItem(image: Styles.Image.family, title: "Aile", subtitle: "Bir aile, sevginin filizlendiği ve huzurun kök saldığı yerdir. Zorluklar paylaşıldıkça hafifler, mutluluklar paylaşıldıkça büyür. Aile, hayatın fırtınalarında sığınılacak limandır.", activityGroups: [
      ActivityGroup(type: .banner, activities: [
        Activity(image: Styles.Image.babamVeOglum, title: "Babam ve Oğlum"),
        Activity(image: Styles.Image.denizeGitmek, title: "Denize Gitmek"),
        Activity(image: Styles.Image.ilkDusenAk, title: "İlk Düşen Ak"),
        Activity(image: Styles.Image.jenga, title: "Jenga")
      ]),
      ActivityGroup(type: .films, activities: [
        Activity(image: Styles.Image.babamVeOglum, title: "Babam ve Oğlum"),
        Activity(image: Styles.Image.dedeminInsanlari, title: "Dedemin İnsanları"),
        Activity(image: Styles.Image.guleGule, title: "Güle Güle"),
        Activity(image: Styles.Image.selviBoylumAlYazmalim, title: "Selvi Boylum Al Yazmalım"),
        Activity(image: Styles.Image.kardesimBenim, title: "Kardeşim Benim"),
        Activity(image: Styles.Image.neseliGunler, title: "Neşeli Günler"),
        Activity(image: Styles.Image.hababamSinifi, title: "Hababam Sınıfı"),
        Activity(image: Styles.Image.eyvahEyvah, title: "Eyvah Eyvah"),
        Activity(image: Styles.Image.bizimAile, title: "Bizim Aile"),
        Activity(image: Styles.Image.surgunInek, title: "Sürgün İnek")
      ]),
      ActivityGroup(type: .events, activities: [
        Activity(image: Styles.Image.balikTutmak, title: "Balık Tutmak"),
        Activity(image: Styles.Image.denizeGitmek, title: "Denize Gitmek"),
        Activity(image: Styles.Image.agacDikmek, title: "ağaç dikmek"),
        Activity(image: Styles.Image.piknik, title: "Piknik"),
        Activity(image: Styles.Image.denizKabuguToplamak, title: "kumsalda deniz taşı toplamak"),
        Activity(image: Styles.Image.arabaylaGezmek, title: "arabayla gezmek"),
        Activity(image: Styles.Image.meyveYemek, title: "meyve yemek"),
        Activity(image: Styles.Image.dersCalismak, title: "ders çalışmak"),
        Activity(image: Styles.Image.kampYapmak, title: "kamp yapmak"),
        Activity(image: Styles.Image.kutuphaneyeGitmek, title: "kütüphaneye gitmek")
      ]),
      ActivityGroup(type: .books, activities: [
        Activity(image: Styles.Image.ilkDusenAk, title: "İlk Düşen Ak"),
        Activity(image: Styles.Image.avareYillar, title: "Avare Yıllar"),
        Activity(image: Styles.Image.parasizYatili, title: "Parasız Yatılı"),
        Activity(image: Styles.Image.cakircaliEfe, title: "Çakırcalı Efe"),
        Activity(image: Styles.Image.dagaCikanKurt, title: "Dağa Çıkan Kurt"),
        Activity(image: Styles.Image.degirmen, title: "Değirmen"),
        Activity(image: Styles.Image.halikarnasBalikcisi, title: "Halikarnas Balıkçısı"),
        Activity(image: Styles.Image.herSeySendeGizli, title: "Her Şey Sende Gizli"),
        Activity(image: Styles.Image.kuvayiMilliye, title: "Kuvayi Milliye Destanı"),
        Activity(image: Styles.Image.hasretindenPrangalarEskittim, title: "Hasretinden Prangalar Eskittim")
    
      ]),
      ActivityGroup(type: .games, activities: [
        Activity(image: Styles.Image.jenga, title: "Jenga"),
        Activity(image: Styles.Image.monopoly, title: "Monopoly"),
        Activity(image: Styles.Image.tombala, title: "tombala"),
        Activity(image: Styles.Image.kelimeTuretme, title: "kelime türetme"),
        Activity(image: Styles.Image.uno, title: "Uno"),
        Activity(image: Styles.Image.tabu, title: "Tabu"),
        Activity(image: Styles.Image.vampirKoylu, title: "Vampir köylü"),
        Activity(image: Styles.Image.dokunVeTahminEt, title: "Dokun ve tahmin et"),
        Activity(image: Styles.Image.isimSehirHayvan, title: "isim-şehir-hayvan"),
        Activity(image: Styles.Image.satranc, title: "Satranç")
      ])
    ]),
    
    HomeItem(image: Styles.Image.friends, title: "Arkadaşlar", subtitle: "Gerçek arkadaşlık, mesafeleri unutturur, zamanı durdurur. Güzel anılar biriktirilir, zor zamanlar birlikte aşılır. Arkadaşlar, hayatın renklerini daha parlak gösteren birer hazine gibidir.", activityGroups: [
      ActivityGroup(type: .banner, activities: [
        Activity(image: Styles.Image.vizontele, title: "Vizontele"),
        Activity(image: Styles.Image.dogaKesifTuru, title: "Doğada Keşif Turu"),
        Activity(image: Styles.Image.kuyucakliYusuf, title: "Kuyucaklı Yusuf"),
        Activity(image: Styles.Image.ipAtlamak, title: "İp Atlama Turnuvası")
      ]),
      ActivityGroup(type: .films, activities: [
        Activity(image: Styles.Image.vizontele, title: "Vizontele"),
        Activity(image: Styles.Image.calgiCengi, title: "Çalgı Çengi"),
        Activity(image: Styles.Image.gora, title: "G.O.R.A"),
        Activity(image: Styles.Image.kardesimBenim, title: "Kardeşim Benim"),
        Activity(image: Styles.Image.eyvahEyvah, title: "Eyvah Eyvah"),
        Activity(image: Styles.Image.dugunDernek, title: "Düğün Dernek"),
        Activity(image: Styles.Image.arifV216, title: "Arif V 216"),
        Activity(image: Styles.Image.ailecekSaskiniz, title: "Ailecek Şaşkınız"),
        Activity(image: Styles.Image.bizimIcinSampiyon, title: "Bizim İçin Şampiyon"),
        Activity(image: Styles.Image.thePerksOfBeingaWallflower, title: "The Perks of Being a Wallflower")
      ]),
      ActivityGroup(type: .events, activities: [
        Activity(image: Styles.Image.dogaKesifTuru, title: "Doğada Keşif Turu"),
        Activity(image: Styles.Image.filmGecesiYapmak, title: "Film Gecesi Yapmak"),
        Activity(image: Styles.Image.geceYildizlariIzlemek, title: "Gece Yıldızları İzlemek"),
        Activity(image: Styles.Image.sanalGercekcilikDeneyimi, title: "Sanal Gerçeklik Deneyimi"),
        Activity(image: Styles.Image.ilgincYemeklerYapmak, title: "İlginç Yemekler Yapmak"),
        Activity(image: Styles.Image.hazineAviDuzenlemek, title: "Hazine Avı Düzenlemek"),
        Activity(image: Styles.Image.bilardo, title: "Bilardo Oynamak"),
        Activity(image: Styles.Image.podcastCekmek, title: "Birlikte Podcast Çekmek"),
        Activity(image: Styles.Image.acikHavaTiyatrosu, title: "Açık Hava Tiyatrosu İzlemek"),
        Activity(image: Styles.Image.evdeMiniYarismalarDuzenlemek, title: "Evde Mini Yarışmalar Düzenlemek")
      ]),
      ActivityGroup(type: .books, activities: [
        Activity(image: Styles.Image.kuyucakliYusuf, title: "Kuyucaklı Yusuf"),
        Activity(image: Styles.Image.calikusu, title: "Çalıkuşu"),
        Activity(image: Styles.Image.sinekliBakkal, title: "Sinekli Bakkal"),
        Activity(image: Styles.Image.yaban, title: "Yaban"),
        Activity(image: Styles.Image.atestenGomlek, title: "Ateşten Gömlek"),
        Activity(image: Styles.Image.inceMemed, title: "İnce Memed"),
        Activity(image: Styles.Image.yeniSehirdeBirOgleVakti, title: "Yenişehirde Bir Öğle Vakti"),
        Activity(image: Styles.Image.kiralikKonak, title: "Kiralık Konak"),
        Activity(image: Styles.Image.tutunamayanlar, title: "Tutunamayanlar"),
        Activity(image: Styles.Image.maiVeSiyah, title: "Mai ve Siyah")
      ]),
      ActivityGroup(type: .games, activities: [
        Activity(image: Styles.Image.ipAtlamak, title: "İp Atlama Turnuvası"),
        Activity(image: Styles.Image.kimMilyonerOlmakIster, title: "Kim Milyoner Olmak İster?"),
        Activity(image: Styles.Image.riskyDice, title: "Risky Dice"),
        Activity(image: Styles.Image.satranc, title: "Satranç"),
        Activity(image: Styles.Image.hangiYil, title: "Hangi Yıl?"),
        Activity(image: Styles.Image.kutuKutuPense, title: "Kutu Kutu Pense"),
        Activity(image: Styles.Image.balonPatlatma, title: "Balon Patlatma Yarışı"),
        Activity(image: Styles.Image.puzzle, title: "Puzzle yapmak"),
        Activity(image: Styles.Image.kelimeAvi, title: "Kelime Avı"),
        Activity(image: Styles.Image.carkifelek, title: "Çarkıfelek")
      ])
    ])
  ]
}

extension HomePresenter: HomePresentation {
  func viewDidLoad() {
    view?.setupUI(with: homeItems)
  }
  
  func didSelectHomeItem(index: Int) {
    let homeItem = homeItems[index]
    
    router.routeToActivities(homeItem: homeItem)
  }
  
  func settingsButtonTapped() {
    // TODO: Settigs tapped logics
  }
}

extension HomePresenter: HomeInteractorOutput {
  
}
