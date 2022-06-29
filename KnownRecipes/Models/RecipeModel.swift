//
//  RecipeModel.swift
//  KnownRecipes
//
//  Created by Robert Ďurica on 28.06.2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case main = "Main"
    case dessert = "Desert"
    case snack = "Snacl"
    
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dateCreated: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Bryndzové halušky", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/16x9_2048_y67SMYo.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Main", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/"),
        Recipe(name: "Grilovaná pražma", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/2048_27RH8zv.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Main", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/"),
        Recipe(name: "Grilované kuře na medové hořčici", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/16_2048_logo.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Main", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/"),
        Recipe(name: "Pečené koleno na černém pivě", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/16x9_2048_jVhnPj8.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Main", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/"),
        Recipe(name: "Kachna na badyánu", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/16x9_2048_1NXm7Q2.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Main", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/"),
        Recipe(name: "Vepřové kotlety na houbách", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/16x9_2048_qHZbH38.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Main", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/"),
        Recipe(name: "Veganský cheesecake", image: "https://recepty.cuketka.cz/media/recipe/main_imgs/vegan_cheesecake_2048.jpg", description: "Tohle je absolutně kouzelné jídlo ze sousedního Slovenska a není složité. ", ingredients: "500 g strouhaných brambor, 225 g polohrubé mouky, 150 ml zakysané smetany, 200 g uzené slaniny, 250 g bryndzy, 1 vejce, sůl", directions: "1 Připravte si větší hrnec s vroucí osolenou vodou. Slaninu nakrájejte na kostičky a vyškvařte. 2 Do mísy dejte strouhané brambory, mouku, sůl a vejce. Vypracujte řídké těsto – tak nějak na půl cesty k řidšímu těstíčku.3 Připravené těsto dávkujte pomocí cedníku na halušky přímo do vroucí vody. Pokud cedník nemáte, nandejte si těsto na prkénko a odkrajujte halušky do vody přes okraj nožem. Vařte, dokud nevyplavou napovrch. Poté sceďte. 4 Do mísy dejte bryndzu a zakysanou smetanu. Přidejte halušky a promíchejte. Můžete přidat i trochu tuku ze špeku dle libosti. Halušky podávejte s opečenou slaninkou.", category: "Desert", dateCreated: "2022-06-27", url: "https://recepty.cuketka.cz/bryndzove-halusky/")
    ]
}
