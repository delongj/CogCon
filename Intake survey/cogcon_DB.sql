-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2013 at 10:55 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cogcon_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `DS`
--

CREATE TABLE IF NOT EXISTS `DS` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `DS`
--

INSERT INTO `DS` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'Thinking on your feet', 'Timing of Self', 'ThinkFast', 'CDC'),
(2, 'Getting tired easily', 'Paces Self', 'Cognitive training - (Pong) Brain Matrix', 'CDS'),
(3, 'Task initiation', 'Budgets time', 'Lexia Logical Reasoning', 'CDS'),
(4, 'Response Inhibition (self control)', 'Efficient', 'Brain Reflection - Brain Matrix', 'CDS'),
(5, 'Working slowly or speeding through carelessly', 'Paces Self', 'Flight Simulator', 'CDS'),
(6, 'Perseverates (repeats action and/or comments w/o conscious awareness)', 'Prioritizes', 'Concentration Game - Brain Matrix', 'CDS'),
(7, 'Procrastinates ', 'Arousal, consciousness of environment', 'Pong, PacMan', 'CDS');

-- --------------------------------------------------------

--
-- Table structure for table `FA`
--

CREATE TABLE IF NOT EXISTS `FA` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `FA`
--

INSERT INTO `FA` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'Shifting approaches on demand', 'Changes gears and solves immediate concerns', 'Cars', 'CFF'),
(2, 'Paying attention to two things at once', 'Ability to SHIFT attention', 'BrainFitness Pro', 'CFF'),
(3, 'Attention and focus', 'Ability to SHIFT attention', 'Mind260 - Task Switching - Think Fast', 'CFF'),
(4, 'Holding several thoughts at one time', 'Sustained Attention', 'Mind 360 - Divided attention - Bird Alert', 'CFF'),
(5, 'Needing prompting to get on with things', 'Ability to SHIFT attention', 'Mind 360 - Selective Attention - Switch Ball', 'CFF'),
(6, 'Losing track in the middle of a coversation', 'Sustained Attention', 'Brain Fitness Pro', 'CFF'),
(7, 'Missing important details in tasks', 'Integration of Specifics', 'The Problem Site - Addlers', 'CFF');

-- --------------------------------------------------------

--
-- Table structure for table `initQ`
--

CREATE TABLE IF NOT EXISTS `initQ` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Mag7` text NOT NULL,
  `Question` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `initQ`
--

INSERT INTO `initQ` (`QNum`, `Mag7`, `Question`) VALUES
(1, 'DS', 'Do you have a slow reaction time?'),
(2, 'DS', 'Is it difficult to think fast enough to respond before others do?'),
(3, 'FA', 'Do you get an idea stuck in your head without being able to drop it?'),
(4, 'FA', 'Are you able to comfortably switch your thinking to change plans at the last minute?'),
(5, 'PL', 'Do you understand what is appropriate in a variety of different social situations?'),
(6, 'PL', 'Do you violate other people''s personal space?'),
(7, 'PS', 'Can you plan strategically how to accomplish a large project with many components?'),
(8, 'PS', 'Do you have trouble generating ideas and solutions to problems?'),
(9, 'RD', 'Can you easily think of several different options to a problem or concern?'),
(10, 'RD', 'Can you develop a plan of logic to reason through an argument?'),
(11, 'SL', 'Do you have problems remembering the correct structure of written language?'),
(12, 'SL', 'Do you have problems with the "rules" of language?'),
(13, 'TR', 'Are you usually on time to appointments?'),
(14, 'TR', 'Can you accurately judge the amount of time it takes to complete a task?');

-- --------------------------------------------------------

--
-- Table structure for table `newClient_TB`
--

CREATE TABLE IF NOT EXISTS `newClient_TB` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `age` int(11) NOT NULL,
  `DS` tinyint(1) NOT NULL,
  `FA` tinyint(1) NOT NULL,
  `PL` tinyint(1) NOT NULL,
  `PS` tinyint(1) NOT NULL,
  `RD` tinyint(1) NOT NULL,
  `SL` tinyint(1) NOT NULL,
  `TR` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PL`
--

CREATE TABLE IF NOT EXISTS `PL` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `PL`
--

INSERT INTO `PL` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'Exercising good judgement', 'Reflection of Past Experiences', '', 'CPL'),
(2, 'Identifying personal strengths and weaknesses accurately', 'Accurate Self-Assessment/MetaCognition\r\n', '', 'CPL'),
(3, 'Seeing things from another person’s point of view', 'Empathy', '', 'CPL'),
(4, 'Understanding subtle or abstract communication', 'Assimilation of context', '', 'CPL'),
(5, 'Correcting personal mistakes', 'Reflection of Past Experiences', '', 'CPL'),
(6, 'Monitoring personal behavior and adjusting it accordingly', 'Accurate Self-Assessment/MetaCognition', '', 'CPL'),
(7, 'Adjusting to unexpected changes', 'Changes Gear and Solves immediate concerns', '', 'CPL');

-- --------------------------------------------------------

--
-- Table structure for table `PS`
--

CREATE TABLE IF NOT EXISTS `PS` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `PS`
--

INSERT INTO `PS` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'Planning the day', 'Organization', 'Mastermind', 'CPC'),
(2, 'Starts many things but completes very few of them', 'Planning', '9 man morris', 'CPC'),
(3, 'Adding up lists of numbers in head', 'Mental Sorting', 'Quick Math- Brain Matrix', 'CPC'),
(4, 'Difficulty being quick-witted', 'Changes Gear and Solves immediate concerns', 'Trivial Pursuit', 'CPC'),
(5, 'Going off on tangents in conversations', 'Cognitive Focus', 'Pentago', 'CPC'),
(6, 'Can’t hold several thoughts at one time', 'Diverted Attention', 'Quattero', 'CPC'),
(7, 'Cannot prepare for future events', 'Organization', 'Rush Hour', 'CPC');

-- --------------------------------------------------------

--
-- Table structure for table `RD`
--

CREATE TABLE IF NOT EXISTS `RD` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `RD`
--

INSERT INTO `RD` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'Coming up with a formula to reach a conclusion', 'Inference Reasoning', 'Mind 360 - Inductive Reasoning - Bistro Balance\r\n', 'CRD'),
(2, 'Using several components of logic to derive at a solution', 'Analogical Reasoning', 'The problem site - Jr estimation\r\n', 'CRD'),
(3, 'Understanding what steps it takes to solve a problem', 'Problem Analysis', 'The Tower of Hanoi', 'CRD'),
(4, 'The drawing of a conclusion by reasoning', 'Analogical Reasoning', 'Logical Journey of the Zoombinis', 'CRD'),
(5, 'Creating plans', 'Inference Reasoning', 'Silver Sphere - Brain Matrix', 'CRD'),
(6, 'Reasoning through the logic of a problem', 'Problem Analysis', '', 'CRD'),
(7, 'With ''if this…then this'' statements', 'Problem Analysis', '', 'CRD');

-- --------------------------------------------------------

--
-- Table structure for table `SL`
--

CREATE TABLE IF NOT EXISTS `SL` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `SL`
--

INSERT INTO `SL` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'The arrangement of the words in a sentence', 'Written Expression', '', 'CSL'),
(2, 'Phrases, clauses in sentences', 'Written Reception', '', 'CSL'),
(3, 'Remembering the rules for contractions of words', 'Written Reception', '', 'CSL'),
(4, 'Leaving the endings off words', 'Written Expression', '', 'CSL'),
(5, 'Remembering the specific rules Ie; ''I before e except after c''', 'Written Expression', '', 'CSL'),
(6, 'Poor memory, frequent feeling of being scattered', 'Oral Reception', 'Brain Fitness Pro', 'CSL'),
(7, 'Trouble writing, even though they may be able to say what they are thinking', 'Written Expression', 'Interactive Metronome', 'CSL');

-- --------------------------------------------------------

--
-- Table structure for table `TR`
--

CREATE TABLE IF NOT EXISTS `TR` (
  `QNum` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` text NOT NULL,
  `Indication` text NOT NULL,
  `InOffice` text NOT NULL,
  `Home` text NOT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `TR`
--

INSERT INTO `TR` (`QNum`, `Questions`, `Indication`, `InOffice`, `Home`) VALUES
(1, 'Slowness in responding', 'Tracking sense of self in space and time', 'Reflex Test Brain Matrix - Interactive Metronome', 'CTR'),
(2, 'Having to do things slowly in order to understand them', 'Tracking sense of self in space and time', 'Interactive Metronome', 'CTR'),
(3, 'Completing complex tasks in the right order', 'Planning', 'Brain Gym', 'CTR'),
(4, 'Often being late or in a hurry', 'Tracking sense of self in space and time', 'Interactive Metronome', 'CTR'),
(5, 'Problems completing things', 'Planning', 'Board Game Operation', 'CTR'),
(6, 'Often appearing unmotivated', 'Goal setting', 'Brain Gym', 'CTR'),
(7, 'Frequently being sluggish or slow moving', 'Goal setting', 'Boogle- Games with timers', 'CTR');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
