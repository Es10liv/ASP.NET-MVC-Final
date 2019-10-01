using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharacterBuilder5E
{
    public class clsCharacter
    {
        string characterName { get; set; }
        string playerName { get; set; }
        string characterClass { get; set; }
        string characterSubClass { get; set; }
        string characterAlignment { get; set; }
        string characterBackground { get; set; }
        int level { get; set; }
        int experience { get; set; }
        int strAttribute { get; set; }
        int dexAttribute { get; set; }
        int conAttribute { get; set; }
        int intAttribute { get; set; }
        int wisAttribute { get; set; }
        int chaAttribute { get; set; }
        int profBonus { get; set; }
        int strSave { get; set; }
        int dexSave { get; set; }
        int conSave { get; set; }
        int intSave { get; set; }
        int wisSave { get; set; }
        int chaSave { get; set; }
        bool strProf { get; set; }
        bool dexProf { get; set; }
        bool conProf { get; set; }
        bool intProf { get; set; }
        bool wisProf { get; set; }
        bool chaProf { get; set; }
        int acrobatics { get; set; }
        int animalHandling { get; set; }
        int arcana { get; set; }
        int athletics { get; set; }
        int deception { get; set; }
        int history { get; set; }
        int insight { get; set; }
        int intimidation { get; set; }
        int investigation { get; set; }
        int medicine { get; set; }
        int nature { get; set; }
        int perception { get; set; }
        int persuasion { get; set; }
        int performance { get; set; }
        int religion { get; set; }
        int sleightOfHand { get; set; }
        int stealth { get; set; }
        int survival { get; set; }
        bool acroProf { get; set; }
        bool animProf { get; set; }
        bool arcaProf { get; set; }
        bool athlProf { get; set; }
        bool deceProf { get; set; }
        bool histProf { get; set; }
        bool insiProf { get; set; }
        bool intiProf { get; set; }
        bool inveProf { get; set; }
        bool mediProf { get; set; }
        bool natuProf { get; set; }
        bool percProf { get; set; }
        bool persProf { get; set; }
        bool reliProf { get; set; }
        bool sleiProf { get; set; }
        bool steaProf { get; set; }
        bool survProf { get; set; }
        int maxHP { get; set; }
        int tempHP { get; set; }
        string hitDiceTotal { get; set; }
        string hitDice { get; set; }
        string race { get; set; }


    }
}