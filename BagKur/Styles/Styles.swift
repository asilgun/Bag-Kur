//
//  Styles.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import Foundation
import UIKit

struct Styles {
  struct Color {
    static let codGray = UIColor(hex: "0C0B0B")
    static let manateeGray = UIColor(hex: "8D8D92")
  }
  
  struct Image {
    // Onboarding
    static let bored = UIImage(named: "Bored")!
    static let family = UIImage(named: "Family")!
    static let friends = UIImage(named: "Friends")!
    
    // Family Films
    static let babamVeOglum = UIImage(named: "BabamVeOglum")!
    static let bizimAile = UIImage(named: "BizimAile")!
    static let dedeminInsanlari = UIImage(named: "DedeminInsanlari")!
    static let eyvahEyvah = UIImage(named: "EyvahEyvah")!
    static let guleGule = UIImage(named: "GuleGule")!
    static let hababamSinifi = UIImage(named: "HababamSinifi")!
    static let kardesimBenim = UIImage(named: "KardesimBenim")!
    static let neseliGunler = UIImage(named: "NeseliGunler")!
    static let selviBoylumAlYazmalim = UIImage(named: "SelviBoylumAlYazmalim")!
    static let surgunInek = UIImage(named: "SurgunInek")!
    
    // Family Books
    static let avareYillar = UIImage(named: "AvareYillar")!
    static let cakircaliEfe = UIImage(named: "CakircaliEfe")!
    static let dagaCikanKurt = UIImage(named: "DagaCikanKurt")!
    static let degirmen = UIImage(named: "Degirmen")!
    static let halikarnasBalikcisi = UIImage(named: "HalikarnasBalikcisi")!
    static let hasretindenPrangalarEskittim = UIImage(named: "HasretindenPrangalarEskittim")!
    static let herSeySendeGizli = UIImage(named: "HerSeySendeGizli")!
    static let ilkDusenAk = UIImage(named: "IlkDusenAk")!
    static let kuvayiMilliye = UIImage(named: "KuvayiMilliye")!
    static let parasizYatili = UIImage(named: "ParasizYatili")!
    
    // Family Games
    static let dokunVeTahminEt = UIImage(named: "DokunVeTahminEt")!
    static let isimSehirHayvan = UIImage(named: "IsimSehirHayvan")!
    static let jenga = UIImage(named: "Jenga")!
    static let kelimeTuretme = UIImage(named: "KelimeTuretme")!
    static let monopoly = UIImage(named: "Monopoly")!
    static let satranc = UIImage(named: "Satranc")!
    static let tabu = UIImage(named: "Tabu")!
    static let tombala = UIImage(named: "Tombala")!
    static let uno = UIImage(named: "Uno")!
    static let vampirKoylu = UIImage(named: "VampirKoylu")!
    
    // Family Events
    static let agacDikmek = UIImage(named: "AgacDikmek")!
    static let arabaylaGezmek = UIImage(named: "ArabaylaGezmek")!
    static let balikTutmak = UIImage(named: "BalikTutmak")!
    static let denizeGitmek = UIImage(named: "DenizeGitmek")!
    static let denizKabuguToplamak = UIImage(named: "DenizKabuguToplamak")!
    static let dersCalismak = UIImage(named: "DersCalismak")!
    static let kampYapmak = UIImage(named: "KampYapmak")!
    static let kutuphaneyeGitmek = UIImage(named: "KutuphaneyeGitmek")!
    static let meyveYemek = UIImage(named: "MeyveYemek")!
    static let piknik = UIImage(named: "Piknik")!
    
    // Friends Events
    static let acikHavaTiyatrosu = UIImage(named: "AcikHavaTiyatrosu")!
    static let bilardo = UIImage(named: "Bilardo")!
    static let dogaKesifTuru = UIImage(named: "DogaKesifTuru")!
    static let evdeMiniYarismalarDuzenlemek = UIImage(named: "EvdeMiniYarismalarDuzenlemek")!
    static let filmGecesiYapmak = UIImage(named: "FilmGecesiYapmak")!
    static let geceYildizlariIzlemek = UIImage(named: "GeceYildizlariIzlemek")!
    static let hazineAviDuzenlemek = UIImage(named: "HazineAviDuzenlemek")!
    static let ilgincYemeklerYapmak = UIImage(named: "IlgincYemeklerYapmak")!
    static let podcastCekmek = UIImage(named: "PodcastCekmek")!
    static let sanalGercekcilikDeneyimi = UIImage(named: "SanalGercekcilikDeneyimi")!
    
    
    // Friends Films
    static let ailecekSaskiniz = UIImage(named: "AilecekSaskiniz")!
    static let arifV216 = UIImage(named: "ArifV216")!
    static let bizimIcinSampiyon = UIImage(named: "BizimIcinSampiyon")!
    static let calgiCengi = UIImage(named: "CalgiCengi")!
    static let dugunDernek = UIImage(named: "DugunDernek")!
    static let gora = UIImage(named: "Gora")!
    static let thePerksOfBeingaWallflower = UIImage(named: "ThePerksOfBeingaWallflower")!
    static let vizontele = UIImage(named: "Vizontele")!
    
    // Friends Books
    static let atestenGomlek = UIImage(named: "AtestenGomlek")!
    static let calikusu = UIImage(named: "Calikusu")!
    static let inceMemed = UIImage(named: "InceMemed")!
    static let kiralikKonak = UIImage(named: "KiralikKonak")!
    static let kuyucakliYusuf = UIImage(named: "KuyucakliYusuf")!
    static let maiVeSiyah = UIImage(named: "MaiVeSiyah")!
    static let sinekliBakkal = UIImage(named: "SinekliBakkal")!
    static let tutunamayanlar = UIImage(named: "Tutunamayanlar")!
    static let yaban = UIImage(named: "Yaban")!
    static let yeniSehirdeBirOgleVakti = UIImage(named: "YenisehirdeBirOgleVakti")!
    
    // Friends Games
    static let balonPatlatma = UIImage(named: "BalonPatlatma")!
    static let carkifelek = UIImage(named: "Carkifelek")!
    static let hangiYil = UIImage(named: "HangiYil")!
    static let ipAtlamak = UIImage(named: "IpAtlamak")!
    static let kelimeAvi = UIImage(named: "KelimeAvi")!
    static let kimMilyonerOlmakIster = UIImage(named: "KimMilyonerOlmakIster")!
    static let kutuKutuPense = UIImage(named: "KutuKutuPense")!
    static let puzzle = UIImage(named: "Puzzle")!
    static let riskyDice = UIImage(named: "RiskyDice")!
  }
}
