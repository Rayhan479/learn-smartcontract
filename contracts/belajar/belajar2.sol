// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Belajar2 {
    
    // string private nama = "Rayhan";
    // uint public umur = 22;
    // string public makananFavorit = "Padang";
    // bool public isActive = true;

    struct Orang {
        string nama;
        uint umur;
        string makananFavorit;
    }

    // Orang manusia2 = Orang("Joni",67,"Tikus Panggang");
    // Orang manusia3 = Orang("IlhamGod",69,"Memek Kulub");
    // Orang manusia1 = Orang("Rayhan",22,"Babi Guling");
    
    // string[] public  heroes = ["Spiderman","Loki","HomeLander"];

    Orang[] public  humans;

    function tambahHuman() public {
        humans.push(Orang("Rayhan",22,"Babi"));
    }

    function tambahGelo() public {
        humans.push(Orang("Edan",22,"Memek Kulub"));
    }

}