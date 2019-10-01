<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCharacterSheet.aspx.cs" Inherits="CharacterBuilder5E.frmCharacterSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Character Name:&nbsp;
            <asp:TextBox ID="txtCharacterName" runat="server"></asp:TextBox>
&nbsp;Class Name:
            <asp:DropDownList ID="lstClassName" runat="server" DataSourceID="SqlDataSource1" DataTextField="ClassName" DataValueField="ClassName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCharacterListConnectionStringClasses %>" ProviderName="<%$ ConnectionStrings:dbCharacterListConnectionStringClasses.ProviderName %>" SelectCommand="SELECT * FROM [tblClasses]"></asp:SqlDataSource>
&nbsp;Subclass Name:
            <asp:DropDownList ID="lstSubclassName" runat="server" DataSourceID="SqlDataSource3" DataTextField="SubClassName" DataValueField="SubClassName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbCharacterListConnectionStringSubclass %>" ProviderName="<%$ ConnectionStrings:dbCharacterListConnectionStringSubclass.ProviderName %>" SelectCommand="SELECT * FROM [tblSubClasses]"></asp:SqlDataSource>
            Race:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="RaceDataSource" DataTextField="RaceName" DataValueField="RaceName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="RaceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RaceConnectionString %>" ProviderName="<%$ ConnectionStrings:RaceConnectionString.ProviderName %>" SelectCommand="SELECT [RaceName] FROM [tblRaces]"></asp:SqlDataSource>
&nbsp;Level:
            <asp:TextBox ID="txtLevel" runat="server"></asp:TextBox>
            <br />
            Player Name:
            <asp:TextBox ID="txtPlayerName" runat="server"></asp:TextBox>
&nbsp;Alignment:
            <asp:DropDownList ID="lstAlignment" runat="server" DataSourceID="AlignmentDataSource" DataTextField="Alignment" DataValueField="Alignment">
            </asp:DropDownList>
            <asp:SqlDataSource ID="AlignmentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbCharacterListConnectionStringAlignment %>" ProviderName="<%$ ConnectionStrings:dbCharacterListConnectionStringAlignment.ProviderName %>" SelectCommand="SELECT * FROM [tblAlignment]"></asp:SqlDataSource>
&nbsp;Background:
            <asp:DropDownList ID="lstBackground" runat="server" DataSourceID="BackgroundDataSource" DataTextField="Backgrounds" DataValueField="Backgrounds">
            </asp:DropDownList>
            <asp:SqlDataSource ID="BackgroundDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbCharacterListConnectionStringBackgrounds %>" ProviderName="<%$ ConnectionStrings:dbCharacterListConnectionStringBackgrounds.ProviderName %>" SelectCommand="SELECT * FROM [tblBackgrounds]"></asp:SqlDataSource>
&nbsp;Experience:
            <asp:TextBox ID="txtExperience" runat="server"></asp:TextBox>
            <br />
            <br />
            Ability Scores&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Proficiency Bonus&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HP<br />
            <asp:DropDownList ID="lstStrengthAbility" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            <asp:SqlDataSource ID="AttributeScoreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AttributeScoresConnectionString %>" ProviderName="<%$ ConnectionStrings:AttributeScoresConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblAttributeTotals]"></asp:SqlDataSource>
            STR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="lstProficiencyBonus" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxAcrobatics" runat="server" />
            <asp:DropDownList ID="lstAcrobatics" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            <asp:SqlDataSource ID="StatsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SkillsConnectionString %>" ProviderName="<%$ ConnectionStrings:SkillsConnectionString.ProviderName %>" SelectCommand="SELECT [SkillMods] FROM [tblSkills]"></asp:SqlDataSource>
            Acrobatics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max:<asp:TextBox ID="txtMaxHealth" runat="server" Width="48px"></asp:TextBox>
            <br />
            <asp:DropDownList ID="lstDexterityAbility" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            DEX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxAnimalHandling" runat="server" />
            <asp:DropDownList ID="lstAnimalHandling" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Animal Handling&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Current:<asp:TextBox ID="txtCurrentHealth" runat="server" Width="48px"></asp:TextBox>
            <br />
            <asp:DropDownList ID="lstConstitutionAbility" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            CON&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxArcana" runat="server" />
            <asp:DropDownList ID="lstArcana" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Arcana&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Temp:<asp:TextBox ID="txtTempHealth" runat="server" Width="48px"></asp:TextBox>
            <br />
            <asp:DropDownList ID="lstIntelligenceAbility" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            INT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxAthletics" runat="server" />
            <asp:DropDownList ID="lstAthletics" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Athletics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Hit Dice Total:<asp:TextBox ID="txtHitDiceTotal" runat="server" Width="48px"></asp:TextBox>
            <br />
            <asp:DropDownList ID="lstWisdomAbility" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            WIS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxDeception" runat="server" />
            <asp:DropDownList ID="lstDeception" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Deception&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hit Dice:<asp:TextBox ID="txtHitDice" runat="server" Width="48px"></asp:TextBox>
            <br />
            <asp:DropDownList ID="lstCharismaAbility" runat="server" DataSourceID="AttributeScoreDataSource" DataTextField="Score" DataValueField="Score">
            </asp:DropDownList>
            CHA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxHistory" runat="server" />
            <asp:DropDownList ID="lstHistory" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            History<br />
            Saving Throws&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            <asp:CheckBox ID="cbxInsight" runat="server" />
            <asp:DropDownList ID="lstInsight" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Insight<br />
            <asp:CheckBox ID="cbxStrengthSave" runat="server" />
            <asp:DropDownList ID="lstStrengthSave" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            STR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:CheckBox ID="cbxIntimidation" runat="server" />
            <asp:DropDownList ID="lstIntimidation" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Intimidation<br />
            <asp:CheckBox ID="cbxDexteritySave" runat="server" />
            <asp:DropDownList ID="lstDexteritySave" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            DEX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxInvestigation" runat="server" />
            <asp:DropDownList ID="lstInvestigation" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Investigation<br />
            <asp:CheckBox ID="cbxConstitutionSave" runat="server" />
            <asp:DropDownList ID="lstConstitutionSave" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            CON&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxMedicine" runat="server" />
            <asp:DropDownList ID="lstMedicine" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Medicine<br />
            <asp:CheckBox ID="cbxIntelligenceSave" runat="server" />
            <asp:DropDownList ID="lstIntelligenceSave" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            INT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxNature" runat="server" />
            <asp:DropDownList ID="lstNature" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Nature<br />
            <asp:CheckBox ID="cbxWisdomSave" runat="server" />
            <asp:DropDownList ID="lstWisdomSave" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            WIS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxPerception" runat="server" />
            <asp:DropDownList ID="lstPerception" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Perception<br />
            <asp:CheckBox ID="cbxCharismaSave" runat="server" />
            <asp:DropDownList ID="lstCharismaSave" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            CHA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxPerformance" runat="server" />
            <asp:DropDownList ID="lstPerformance" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Performance<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="cbxPersuasion" runat="server" />
            <asp:DropDownList ID="lstPersuasion" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Persuasion<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:CheckBox ID="cbxReligion" runat="server" />
            <asp:DropDownList ID="lstReligion" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Religion<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <asp:CheckBox ID="cbxSleightOfHand" runat="server" />
            <asp:DropDownList ID="lstSleightOfHand" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Sleight of Hand<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <asp:CheckBox ID="cbxStealth" runat="server" />
            <asp:DropDownList ID="lstStealth" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods" OnSelectedIndexChanged="lstStealth_SelectedIndexChanged">
            </asp:DropDownList>
            Stealth<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbxSurvival" runat="server" />
            <asp:DropDownList ID="lstSurvival" runat="server" DataSourceID="StatsDataSource" DataTextField="SkillMods" DataValueField="SkillMods">
            </asp:DropDownList>
            Survival<br />
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            <asp:Button ID="btnSend" runat="server" Text="Send" />
            <br />
        </div>
    </form>
</body>
</html>
