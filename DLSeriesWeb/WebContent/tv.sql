SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `tv` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tv`;

CREATE TABLE IF NOT EXISTS `series` (
	`idSerie` int(10) NOT NULL AUTO_INCREMENT,
	`nom` varchar(100) NOT NULL,
	`url` varchar(200) NOT NULL,
	`jour` varchar(10) NOT NULL,
	`dateDiff` date,
	PRIMARY KEY(`idSerie`)
)CHARSET=utf8 AUTO_INCREMENT=52 ;


INSERT INTO `series` (`idSerie`, `nom`, `url`, `jour`, `dateDiff`) VALUES
(1, '12 Monkeys', 'http://en.wikipedia.org/wiki/12_Monkeys_%28TV_series%29#Episodes', 'Vendredi', null),
(2, 'American Horror Story', 'http://en.wikipedia.org/wiki/List_of_American_Horror_Story_episodes#Season_4:_Freak_Show_.282014.29', 'Mercredi', null),
(3, 'Arrow', 'http://en.wikipedia.org/wiki/List_of_Arrow_episodes#Season_3_.282014.E2.80.9315.29', 'Mercredi', '2015,10,7'),
(4, 'Banshee', 'http://en.wikipedia.org/wiki/List_of_Banshee_episodes#Season_3_.282015.29', 'Vendredi', null),
(5, 'Better Call Saul', 'http://en.wikipedia.org/wiki/Better_Call_Saul#Episodes', 'Lundi', null),
(6, 'Bitten', 'http://en.wikipedia.org/wiki/Bitten_%28TV_series%29#Season_2_.282015.29', 'Samedi', null),
(7, 'Black Sails', 'http://en.wikipedia.org/wiki/List_of_Black_Sails_episodes#Season_2_.282015.29', 'Samedi', null),
(8, 'Brooklyn Nine-Nine', 'http://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_episodes#Season_2_.282014.E2.80.9315.29', 'Dimanche', null),
(9, 'Community', 'http://en.wikipedia.org/wiki/List_of_Community_episodes#Season_6_.282015.29', 'Mardi', null),
(10, 'Dark Matter', 'https://en.wikipedia.org/wiki/Dark_Matter_%28TV_series%29#Episodes', 'Vendredi', '2015,6,12'),
(11, 'Defiance', 'https://en.wikipedia.org/wiki/List_of_Defiance_episodes#Season_3_.282015.29', 'Vendredi', '2015,6,12'),
(12, 'Doctor Who', 'http://en.wikipedia.org/wiki/List_of_Doctor_Who_serials#Series_8_.282014.29', 'Samedi', null),
(13, 'Elementary', 'http://en.wikipedia.org/wiki/List_of_Elementary_episodes#Season_3_.282014.E2.80.9315.29', 'Jeudi', null),
(14, 'Episodes', 'http://en.wikipedia.org/wiki/List_of_Episodes_episodes#Series_4_.282015.29', 'Dimanche', null),
(15, 'Extant', 'https://en.wikipedia.org/wiki/List_of_Extant_episodes#Season_2_.282015.29', 'Mercredi', '2015,7,1'),
(16, 'Falling Skies', 'https://en.wikipedia.org/wiki/List_of_Falling_Skies_episodes#Season_5_.282015.29', 'Dimanche', '2015,6,28'),
(17, 'From Dusk till Dawn', 'http://en.wikipedia.org/wiki/List_of_From_Dusk_till_Dawn_episodes#Season_1_.282014.29', 'Mardi', null),
(18, 'Game of Thrones', 'http://en.wikipedia.org/wiki/List_of_Game_of_Thrones_episodes#Season_5_.282015.29', 'Dimanche', null),
(19, 'Gotham', 'http://en.wikipedia.org/wiki/Gotham_%28TV_series%29#Episodes', 'Lundi', '2015,9,21'),
(20, 'Greys Anatomy', 'http://en.wikipedia.org/wiki/List_of_Grey%27s_Anatomy_episodes#Season_11_.282014.E2.80.9315.29', 'Jeudi', null),
(21, 'Grimm', 'http://en.wikipedia.org/wiki/List_of_Grimm_episodes#Season_4_.282014.E2.80.9315.29', 'Vendredi', null),
(22, 'Hemlock Grove', 'http://en.wikipedia.org/wiki/List_of_Hemlock_Grove_episodes#Season_2_.282014.29', 'Vendredi', null),
(23, 'Homeland', 'http://en.wikipedia.org/wiki/List_of_Homeland_episodes#Season_4_.282014.29', 'Dimanche', null),
(24, 'House of Fools', 'http://en.wikipedia.org/wiki/List_of_House_of_Fools_episodes#Series_2_.282015.29', 'Lundi', null),
(25, 'iZombie', 'http://en.wikipedia.org/wiki/IZombie_\(TV_series\)#Episodes', 'Mardi', '2015,10,6'),
(26, 'Jonathan Strange and Mr Norrell', 'http://en.wikipedia.org/wiki/Jonathan_Strange_%26_Mr_Norrell_%28TV_series%29#Episode_list', 'Dimanche', null),
(27, 'Killjoys', 'https://en.wikipedia.org/wiki/Killjoys_%28TV_series%29#Episodes', 'Vendredi', '2015,6,19'),
(28, 'Legends', 'http://en.wikipedia.org/wiki/Legends_%28TV_series%29#Episodes', 'Mercredi', null),
(29, 'Mr. Robot', 'http://en.wikipedia.org/wiki/Mr._Robot_%28TV_series%29#Episodes', 'Mercredi', '2015,6,24'),
(30, 'New Girl', 'http://en.wikipedia.org/wiki/List_of_New_Girl_episodes#Season_4_.282014.E2.80.9315.29', 'Mardi', null),
(31, 'Once Upon a Time', 'http://en.wikipedia.org/wiki/List_of_Once_Upon_a_Time_episodes#Season_4_.282014.E2.80.9315.29', 'Dimanche', null),
(32, 'Orange Is the New Black', 'http://en.wikipedia.org/wiki/List_of_Orange_Is_the_New_Black_episodes#Season_3_.282015.29', 'Vendredi', null),
(33, 'Orphan Black', 'http://en.wikipedia.org/wiki/List_of_Orphan_Black_episodes#Season_3_.282015.29', 'Samedi', null),
(34, 'Penny Dreadful', 'http://en.wikipedia.org/wiki/List_of_Penny_Dreadful_episodes#Season_2_.282015.29', 'Dimanche', null),
(35, 'Plebs', 'http://en.wikipedia.org/wiki/Plebs_%28TV_series%29#Episodes', 'Lundi', null),
(36, 'River Monsters', 'http://en.wikipedia.org/wiki/River_Monsters#Season_Seven_.282015.29', 'Dimanche', null),
(37, 'Salem', 'http://en.wikipedia.org/wiki/List_of_Salem_episodes#Season_2_.282015.29', 'Dimanche', null),
(38, 'Sherlock', 'http://en.wikipedia.org/wiki/List_of_Sherlock_episodes#Series_3_.282014.29', 'Dimanche', null),
(39, 'Supergirl', 'http://en.wikipedia.org/wiki/Supergirl_%28U.S._TV_series%29#Episodes', 'Lundi', '2015,10,26'),
(40, 'Survivor', 'http://en.wikipedia.org/wiki/Survivor:_Worlds_Apart#Episodes', 'Mercredi', '2015,9,23'),
(41, 'The Amazing Race', 'http://en.wikipedia.org/wiki/The_Amazing_Race_26#Race_summary', 'Vendredi', '2015,9,25'),
(42, 'The Americans', 'http://en.wikipedia.org/wiki/List_of_The_Americans_episodes#Season_3_.282015.29', 'Mercredi', null),
(43, 'The Big Bang Theory', 'http://en.wikipedia.org/wiki/List_of_The_Big_Bang_Theory_episodes#Season_8_.282014.E2.80.9315.29', 'Lundi', '2015,9,21'),
(44, 'The Fall', 'http://en.wikipedia.org/wiki/The_Fall_%28TV_series%29#Series_2_.282014.29', 'Dimanche', null),
(45, 'The Flash', 'http://en.wikipedia.org/wiki/The_Flash_%282014_TV_series%29#Episodes', 'Mardi', '2015,10,6'),
(46, 'The Making of the Mob', 'https://en.wikipedia.org/wiki/The_Making_of_the_Mob:_New_York#Episodes', 'Lundi', '2015,6,15'),
(47, 'The Strain', 'https://en.wikipedia.org/wiki/List_of_The_Strain_episodes#Season_2_.282015.29', 'Dimanche', '2015,7,12'),
(48, 'The Walking Dead', 'http://en.wikipedia.org/wiki/List_of_The_Walking_Dead_episodes#Season_5_.282014.E2.80.9315.29', 'Dimanche', null),   
(49, 'The Whispers', 'http://en.wikipedia.org/wiki/The_Whispers_%28TV_series%29#Episodes', 'Lundi', '2015,6,1'),
(50, 'UnREAL', 'http://en.wikipedia.org/wiki/UnREAL#Episodes', 'Lundi', '2015,6,1'),
(51, 'Vikings', 'http://en.wikipedia.org/wiki/List_of_Vikings_episodes#Season_3_.282015.29', 'Jeudi', null);

