/**
 * ...
 * @author Ormael / Liadri
 */
package classes.Scenes.Camp 
{
	import classes.*;
	import classes.BaseContent;
	import classes.GlobalFlags.kFLAGS;

public class CampMakeWinions extends BaseContent
	{
		public function CampMakeWinions() 
		{}
		
		//-----------
		//
		//  GOLEMS
		//
		//-----------
		
		//TEMPORAL_GOLEMS_BAG and PERMANENT_GOLEMS_BAG - pretty easy to quess: amount of temp or perm golems PC have in "golem bag"
		
		public function maxTemporalGolemsBagSize():Number {
			var maxTemporalGolemsBagSizeCounter:Number = 0;
			if (player.hasPerk(PerkLib.JobGolemancer)) maxTemporalGolemsBagSizeCounter += 5;
			if (player.hasPerk(PerkLib.BeginnerGolemMaker)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.ApprenticeGolemMaker)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.ExpertGolemMaker)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.GolemArmyLieutenant)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.GolemArmyCaptain)) maxTemporalGolemsBagSizeCounter += 4;
			if (player.hasPerk(PerkLib.GolemArmyMajor)) maxTemporalGolemsBagSizeCounter += 6;
			if (player.hasPerk(PerkLib.GolemArmyColonel)) maxTemporalGolemsBagSizeCounter += 8;
			if (player.hasPerk(PerkLib.GolemArmyGeneral)) maxTemporalGolemsBagSizeCounter += 10;
			if (player.hasPerk(PerkLib.BiggerGolemBagI)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.BiggerGolemBagII)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.BiggerGolemBagIII)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.BiggerGolemBagIV)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.BiggerGolemBagV)) maxTemporalGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.BiggerGolemBagVI)) maxTemporalGolemsBagSizeCounter += 2;
			return maxTemporalGolemsBagSizeCounter;
		}
		public function maxPermanentStoneGolemsBagSize():Number {
			var maxPermanentStoneGolemsBagSizeCounter:Number = 0;
			if (player.hasPerk(PerkLib.MasterGolemMaker)) maxPermanentStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.GrandMasterGolemMaker)) maxPermanentStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.EpicGolemMaker)) maxPermanentStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.EpicGolemMaker2ndCircle)) maxPermanentStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.EpicGolemMaker3rdCircle)) maxPermanentStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.GolemArmyLieutenant)) maxPermanentStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.GolemArmyCaptain)) maxPermanentStoneGolemsBagSizeCounter += 2;
			if (player.hasPerk(PerkLib.GolemArmyMajor)) maxPermanentStoneGolemsBagSizeCounter += 3;
			if (player.hasPerk(PerkLib.GolemArmyColonel)) maxPermanentStoneGolemsBagSizeCounter += 4;
			if (player.hasPerk(PerkLib.GolemArmyGeneral)) maxPermanentStoneGolemsBagSizeCounter += 5;
			if (player.hasPerk(PerkLib.MasterGolemMaker)) {
				if (player.hasPerk(PerkLib.BiggerGolemBagI)) maxPermanentStoneGolemsBagSizeCounter += 1;
				if (player.hasPerk(PerkLib.BiggerGolemBagII)) maxPermanentStoneGolemsBagSizeCounter += 1;
				if (player.hasPerk(PerkLib.BiggerGolemBagIII)) maxPermanentStoneGolemsBagSizeCounter += 1;
				if (player.hasPerk(PerkLib.BiggerGolemBagIV)) maxPermanentStoneGolemsBagSizeCounter += 1;
				if (player.hasPerk(PerkLib.BiggerGolemBagV)) maxPermanentStoneGolemsBagSizeCounter += 1;
				if (player.hasPerk(PerkLib.BiggerGolemBagVI)) maxPermanentStoneGolemsBagSizeCounter += 1;
			}
			return maxPermanentStoneGolemsBagSizeCounter;
		}
		public function maxPermanentImprovedStoneGolemsBagSize():Number {
			var maxPermanentImprovedStoneGolemsBagSizeCounter:Number = 0;
			if (player.hasPerk(PerkLib.EpicGolemMaker3rdCircle)) maxPermanentImprovedStoneGolemsBagSizeCounter += 1;
			if (player.hasPerk(PerkLib.GolemArmyGeneral)) maxPermanentImprovedStoneGolemsBagSizeCounter += 1;
			return maxPermanentImprovedStoneGolemsBagSizeCounter;
		}
		public function maxPermanentSteelGolemsBagSize():Number {
			var maxPermanentSteelGolemsBagSizeCounter:Number = 0;
			if (player.hasPerk(PerkLib.AdvancedGolemancyTheory)) maxPermanentSteelGolemsBagSizeCounter += 1;
			return maxPermanentSteelGolemsBagSizeCounter;
		}
		public function maxPermanentImprovedSteelGolemsBagSize():Number {
			var maxPermanentImprovedSteelGolemsBagSizeCounter:Number = 0;
			
			return maxPermanentImprovedSteelGolemsBagSizeCounter;
		}
		public function maxReusableGolemCoresBagSize():Number {
			var maxReusableGolemCoresBagSizeCounter:Number = 0;
			if (maxTemporalGolemsBagSize() > 0) maxReusableGolemCoresBagSizeCounter += maxTemporalGolemsBagSize();
			if (maxPermanentStoneGolemsBagSize() > 0) maxReusableGolemCoresBagSizeCounter += maxPermanentStoneGolemsBagSize();
			if (maxPermanentImprovedStoneGolemsBagSize() > 0) maxReusableGolemCoresBagSizeCounter += maxPermanentImprovedStoneGolemsBagSize();
			if (maxPermanentSteelGolemsBagSize() > 0) maxReusableGolemCoresBagSizeCounter += maxPermanentSteelGolemsBagSize();
			if (maxPermanentImprovedSteelGolemsBagSize() > 0) maxReusableGolemCoresBagSizeCounter += maxPermanentImprovedSteelGolemsBagSize();
			if (player.hasPerk(PerkLib.BeginnerGolemMaker)) maxReusableGolemCoresBagSizeCounter += 2;
			maxReusableGolemCoresBagSizeCounter *= 3;
			return maxReusableGolemCoresBagSizeCounter;
		}
		public function temporalGolemMakingCost():Number {
			var tempGolemCost:Number = 50;
			if (player.hasPerk(PerkLib.ApprenticeGolemMaker)) tempGolemCost -= 10;
			if (player.hasPerk(PerkLib.ChargedCore)) tempGolemCost += 20;
			if (player.hasPerk(PerkLib.SuperChargedCore)) tempGolemCost += 20;
			return tempGolemCost;
		}
		public function permanentStoneGolemMakingCost():Number {
			var permGolemCost:Number = 90;
			if (player.hasPerk(PerkLib.GrandMasterGolemMaker)) permGolemCost += 10;
			if (player.hasPerk(PerkLib.EpicGolemMaker)) permGolemCost += 50;
			if (player.hasPerk(PerkLib.EpicGolemMaker2ndCircle)) permGolemCost += 150;
			if (player.hasPerk(PerkLib.EpicGolemMaker3rdCircle)) permGolemCost += 400;
			return permGolemCost;
		}
		public function permanentImprovedStoneGolemMakingCost():Number {
			var permGolemCost:Number = 900;
			return permGolemCost;
		}
		public function permanentSteelGolemMakingCost():Number {
			var permGolemCost:Number = 200;
			return permGolemCost;
		}
		public function permanentImprovedSteelGolemMakingCost():Number {
			var permGolemCost:Number = 2000;
			return permGolemCost;
		}

		public function accessMakeWinionsMainMenu():void {
			clearOutput();
			outputText("What helper would you like to make?\n\n");
			outputText("<b>Stored golem cores for future reuse when making new golems:</b> " + flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] + " / " + maxReusableGolemCoresBagSize() + "\n");
			if (player.hasPerk(PerkLib.JobGolemancer)) outputText("<b>Temporal Golems Bag:</b> " + flags[kFLAGS.TEMPORAL_GOLEMS_BAG] + " / " + maxTemporalGolemsBagSize() + " golems\n");
			if (player.hasPerk(PerkLib.MasterGolemMaker)) outputText("<b>Stone Golems Bag:</b> " + flags[kFLAGS.PERMANENT_GOLEMS_BAG] + " / " + maxPermanentStoneGolemsBagSize() + " golems\n");
			if (player.hasPerk(PerkLib.EpicGolemMaker3rdCircle)) outputText("<b>Improved Stone Golems Bag:</b> " + flags[kFLAGS.IMPROVED_PERMANENT_GOLEMS_BAG] + " / " + maxPermanentImprovedStoneGolemsBagSize() + " golems\n");
			if (player.hasPerk(PerkLib.AdvancedGolemancyTheory)) outputText("<b>Metal Golems Bag:</b> " + flags[kFLAGS.PERMANENT_STEEL_GOLEMS_BAG] + " / " + maxPermanentSteelGolemsBagSize() + " golems\n");
			//outputText("<b>Improved Metal Golems Bag:</b> " + flags[kFLAGS.IMPROVED_PERMANENT_STEEL_GOLEMS_BAG] + " / " + maxPermanentImprovedSteelGolemsBagSize() + " golems\n");
			outputText("<b>Stones:</b> " + flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] + "\n");
			if (player.hasPerk(PerkLib.AdvancedGolemancyTheory)) outputText("<b>Metal Pieces:</b> " + flags[kFLAGS.CAMP_CABIN_METAL_PIECES_RESOURCES] + "\n");
			menu();
			if (player.hasPerk(PerkLib.JobGolemancer)) addButton(0, "T.S.Golem", makeTemporalStoneGolem).hint("Make the most simple golem out of a pile of stones.  <b>It will crumble after one attack!</b>\n\nCost: 1 Golem Core, " + temporalGolemMakingCost() + " Mana");
			if (player.hasPerk(PerkLib.MasterGolemMaker)) addButton(1, "P.S.Golem", makePermanentStoneGolem).hint("Make stone golem.\n\nCost: 1 Golem Core, 10 Stones, " + permanentStoneGolemMakingCost() + " Mana");
			/*if (player.hasPerk(PerkLib.AdvancedGolemancyTheory)) */addButtonDisabled(2, "M.Golem", "Make metal golem.\n\nSoon");//Cost: 1 Golem Plasma Core, 10 Stones, 10 Metal Plates, 10 Mechanisms, i coś jeszcze innego? " + permanentSteelGolemMakingCost() + " Mana
			if (player.hasPerk(PerkLib.TemporalGolemsRestructuration)) addButton(5, "T.S.Golem(5x)", makeTemporalStoneGolems).hint("Make five of most simple golems.  <b>They will crumble after one attack!</b>\n\nCost: 5 Golem Core, " + temporalGolemMakingCost() * 5 + " Mana");
			if (player.hasPerk(PerkLib.EpicGolemMaker3rdCircle)) addButton(6, "I.P.S.Golem", makePermanentImprovedStoneGolem).hint("Make improved stone golem.\n\nCost: 3 Golem Cores, 100 Stones, " + permanentImprovedStoneGolemMakingCost() + " Mana");
			addButtonDisabled(7, "I.M.Golem", "Make improved metal golem.\n\nSoon");//Cost: 2 Golem ?Plasma? Cores, 10 Stones, 10 Metal Plates, 10 Mechanisms, " + permanentImprovedSteelGolemMakingCost() + " Mana
			addButtonDisabled(12, "Upgrades", "Options to upgrade permanent golems.");
			if (flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] > 0) addButton(13, "TakeOutCore", takeOutGolemCoreFromGolemBag).hint("Take out one golem core from 'golem bag'.");
			addButton(14, "Back", playerMenu);
		}
		
		public function makeTemporalStoneGolem():void {
			clearOutput();
			if (player.mana < temporalGolemMakingCost()) {
				outputText("Your mana is too low to finish golem creation.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (!player.hasItem(useables.GOLCORE, 1) && flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] == 0) {
				outputText("You lack a golem core to finish the creation of a golem.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (flags[kFLAGS.TEMPORAL_GOLEMS_BAG] == maxTemporalGolemsBagSize()) {
				outputText("You not having enough space to store another one.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			if (flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] > 0) flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG]--;
			else player.destroyItems(useables.GOLCORE, 1);
			useMana(temporalGolemMakingCost());
			statScreenRefresh();
			outputText("You draw a seal in the ground around the pile of stones that will soon be your servant. Once done you put golem core in pile, stand back and begin to seep your mana inside of the pile till it form 6 feet tall shape. Finishing the work on your creation you store it in your 'golem bag'.");
			if (flags[kFLAGS.TEMPORAL_GOLEMS_BAG] < 1) flags[kFLAGS.TEMPORAL_GOLEMS_BAG] = 1;
			else flags[kFLAGS.TEMPORAL_GOLEMS_BAG]++;
			doNext(accessMakeWinionsMainMenu);
			if (player.hasPerk(PerkLib.TemporalGolemsRestructuration)) cheatTime2(5);
			else cheatTime2(10);
		}
		public function makeTemporalStoneGolems():void {
			clearOutput();
			if (player.mana < (temporalGolemMakingCost() * 5)) {
				outputText("Your mana is too low to finish golems creation.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (!player.hasItem(useables.GOLCORE, 5) && flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] < 5) {
				outputText("You lack golem cores to finish the creation of the golems.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (flags[kFLAGS.TEMPORAL_GOLEMS_BAG] > (maxTemporalGolemsBagSize() - 5)) {
				outputText("You not having enough space to store all five.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			if (flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] > 4) flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] -= 5;
			else player.destroyItems(useables.GOLCORE, 5);
			useMana(temporalGolemMakingCost());
			statScreenRefresh();
			outputText("You draw a complex seal on the ground with 5 node points at which you put piles of stones that will soon be your servants. Once done you put a golem core in each pile, stand back and begin to seep your mana inside of the seal till each pile becomes a 6 feet tall golem. Finishing the work on your creations, you store them in your 'golem bag'.");
			flags[kFLAGS.TEMPORAL_GOLEMS_BAG] += 5;
			doNext(accessMakeWinionsMainMenu);
			cheatTime2(20);
		}
		public function makePermanentStoneGolem():void {
			clearOutput();
			if (player.mana < permanentStoneGolemMakingCost()) {
				outputText("Your mana is too low to finish golem creation.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (!player.hasItem(useables.GOLCORE, 1) && flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] < 1) {
				outputText("You lack a golem core to finish the creation of a golem.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] < 10) {
				outputText("You lack high quality stones to use as body for your new golem.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (flags[kFLAGS.PERMANENT_GOLEMS_BAG] == maxPermanentStoneGolemsBagSize()) {
				outputText("You not having enough space to store another one.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			if (flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] > 0) flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG]--;
			else player.destroyItems(useables.GOLCORE, 1);
			flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] -= 10;
			useMana(permanentStoneGolemMakingCost());
			statScreenRefresh();
			outputText("You draw a seal in the ground around the pile of high quality stones that will soon be your servant. Once done you put golem core in pile, stand back and begin to seep your mana inside of the pile till it form 6 feet tall shape. Finishing the work on your creation you store it in your 'golem bag'.");
			if (flags[kFLAGS.PERMANENT_GOLEMS_BAG] < 1) flags[kFLAGS.PERMANENT_GOLEMS_BAG] = 1;
			else flags[kFLAGS.PERMANENT_GOLEMS_BAG]++;
			doNext(accessMakeWinionsMainMenu);
			cheatTime2(20);
		}
		public function makePermanentImprovedStoneGolem():void {
			clearOutput();
			if (player.mana < permanentImprovedStoneGolemMakingCost()) {
				outputText("Your mana is too low to finish golem creation.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (!player.hasItem(useables.GOLCORE, 3) && flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] < 3) {
				outputText("You lack golem cores to finish golem creation.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] < 100) {
				outputText("You lack high quality stones to use as body for your new golem.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			else if (flags[kFLAGS.IMPROVED_PERMANENT_GOLEMS_BAG] == maxPermanentImprovedStoneGolemsBagSize()) {
				outputText("You not having enough space to store another one.");
				doNext(accessMakeWinionsMainMenu);
				return;
			}
			if (flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] > 3) flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG] -= 3;
			else player.destroyItems(useables.GOLCORE, 3);
			flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] -= 100;
			useMana(permanentImprovedStoneGolemMakingCost());
			statScreenRefresh();
			outputText("You draw a seal in the ground around the pile of high quality stones, which were arranged in the form of a gigantic four armed shape. Once done you put the golem cores in a pile at the golem's future chest in a triangle formation. You stand back and begin to seep your mana toward the laying stones. ");
			outputText("Slowly all the stones and cores connect with threads of magic, forming a 16 feet tall shape. Finishing the work by making some last adjustments to cores you store it in your 'golem bag'.");
			if (flags[kFLAGS.IMPROVED_PERMANENT_GOLEMS_BAG] < 1) flags[kFLAGS.IMPROVED_PERMANENT_GOLEMS_BAG] = 1;
			else flags[kFLAGS.IMPROVED_PERMANENT_GOLEMS_BAG]++;
			doNext(accessMakeWinionsMainMenu);
			cheatTime2(60);
		}

		public function takeOutGolemCoreFromGolemBag():void {
			clearOutput();
			outputText("In order to not overload your bag for reusable golem cores you take out one of them.\n\n");
			flags[kFLAGS.REUSABLE_GOLEM_CORES_BAG]--;
			inventory.takeItem(useables.GOLCORE, accessMakeWinionsMainMenu);
		}
		
		public function postFightGolemOptions1():void {
			clearOutput();
			outputText("What you gonna do now?\n\n");
			menu();
			addButton(1, "Leave", cleanupAfterCombat);
			addButton(3, "Scavenge", golemScavenge1);
		}
		public function postFightGolemOptions2():void {
			clearOutput();
			if (!player.hasStatusEffect(StatusEffects.GolemScavenge)) player.createStatusEffect(StatusEffects.GolemScavenge,2 + rand(2),0,0,0);
			outputText("What you gonna do now?\n\nAmount of golems you can scavenge: "+player.statusEffectv1(StatusEffects.GolemScavenge)+"\n\n");
			menu();
			addButton(1, "Leave", cleanupAfterCombat);
			addButton(3, "Scavenge", golemScavenge2);
		}
		public function postFightGolemOptions3():void {
			clearOutput();
			outputText("What you gonna do now?\n\n");
			menu();
			addButton(1, "Leave", cleanupAfterCombat);
			addButton(3, "Scavenge", golemScavenge3);
		}
		public function postFightGolemOptions4():void {
			clearOutput();
			if (!player.hasStatusEffect(StatusEffects.GolemScavenge)) player.createStatusEffect(StatusEffects.GolemScavenge,2 + rand(2),1,0,0);
			outputText("What you gonna do now?\n\nAmount of golems you can scavenge: "+player.statusEffectv1(StatusEffects.GolemScavenge)+"\n\n");
			menu();
			addButton(1, "Leave", cleanupAfterCombat);
			addButton(3, "Scavenge", golemScavenge4);
		}
		private function golemScavenge1():void {
			clearOutput();
			outputText("You sit down by the golem and begin extracting the core from the big chunk that remains of its chest. ");
			if (rand(4) == 0 || player.hasPerk(PerkLib.JobGolemancer)) {
				outputText("At first the core resist but after a few tries you successfully manage to harvest the golem core.");
				doNext(takeCore);
			}
			else {
				outputText("Sadly despite your best efforts the core is damaged during the extraction and rendered useless.");
				doNext(cleanupAfterCombat);
			}
		}
		private function golemScavenge2():void {
			clearOutput();
			outputText("You sit down by the golem and begin extracting the core from the big chunk that remains of its chest. ");
			player.addStatusValue(StatusEffects.GolemScavenge, 1, -1);
			if (rand(4) == 0 || player.statusEffectv1(StatusEffects.GolemScavenge) == 0 || player.hasPerk(PerkLib.JobGolemancer)) {
				outputText("At first the core resist but after a few tries you successfully manage to harvest the golem core.");
				doNext(takeCore);
			}
			else {
				outputText("Sadly despite your best efforts the core is damaged during the extraction and rendered useless.");
				if (player.hasStatusEffect(StatusEffects.GolemScavenge)) doNext(golemScavenge2);
				else doNext(cleanupAfterCombat);
			}
		}
		private function golemScavenge3():void {
			clearOutput();
			outputText("You sit down by the golem and begin extracting the core from the big chunk that remains of its chest. ");
			if (rand(4) == 0 || player.hasPerk(PerkLib.JobGolemancer)) {
				outputText("At first the core resist but after a few tries you successfully manage to harvest the golem core. Not one to waste spare material you gather the remaining stone. (+2 stones)");
				flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] += 2;
				doNext(takeCore);
			}
			else {
				outputText("Sadly despite your best efforts the core is damaged during the extraction and rendered useless. Not one to waste spare material you gather the remaining stone. (+5 stones)");
				flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] += 5;
				doNext(cleanupAfterCombat);
			}
		}
		private function golemScavenge4():void {
			clearOutput();
			outputText("You sit down by the golem and begin extracting the core from the big chunk that remains of its chest. ");
			player.addStatusValue(StatusEffects.GolemScavenge, 1, -1);
			if (rand(4) == 0 || player.statusEffectv1(StatusEffects.GolemScavenge) == 0 || player.hasPerk(PerkLib.JobGolemancer)) {
				outputText("At first the core resist but after a few tries you successfully manage to harvest the golem core. Not one to waste spare material you gather the remaining stone. (+2 stones)");
				flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] += 2;
				doNext(takeCore);
			}
			else {
				outputText("Sadly despite your best efforts the core is damaged during the extraction and rendered useless. Not one to waste spare material you gather the remaining stone. (+5 stones)");
				flags[kFLAGS.CAMP_CABIN_STONE_RESOURCES] += 5;
				if (player.hasStatusEffect(StatusEffects.GolemScavenge)) doNext(golemScavenge4);
				else doNext(cleanupAfterCombat);
			}
		}
		private function takeCore():void {
			if (player.statusEffectv1(StatusEffects.GolemScavenge) > 0) {
				if (player.statusEffectv2(StatusEffects.GolemScavenge) > 0) inventory.takeItem(useables.GOLCORE, golemScavenge4);
				else inventory.takeItem(useables.GOLCORE, golemScavenge2);
			}
			else {
				player.removeStatusEffect(StatusEffects.GolemScavenge);
				inventory.takeItem(useables.GOLCORE, cleanupAfterCombat);
			}
		}
		
		//--------------
		//
		//  ELEMENTALS
		//
		//--------------
		
		private function maxSizeOfElementalsArmy():Number {
			var maxSizeOfElementalsArmyCounter:Number = 0;
			if (player.hasPerk(PerkLib.JobElementalConjurer)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank1)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank2)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank3)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank4)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank5)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank6)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank7)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank8)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank9)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementalContractRank10)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank11)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank12)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank13)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank14)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank15)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank16)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank17)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank18)) maxSizeOfElementalsArmyCounter += 2;
			if (player.hasPerk(PerkLib.ElementalContractRank19)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank20)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank21)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank22)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank23)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank24)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank25)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank26)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank27)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank28)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank29)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank30)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementalContractRank31)) maxSizeOfElementalsArmyCounter += 3;
			if (player.hasPerk(PerkLib.ElementsOfTheOrtodoxPath)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementsOfMarethBasics)) maxSizeOfElementalsArmyCounter += 1;
			if (player.hasPerk(PerkLib.ElementsOfMarethAdvanced)) maxSizeOfElementalsArmyCounter += 1;
			return maxSizeOfElementalsArmyCounter;
		}
		private function currentSizeOfElementalsArmy():Number {
			var currentSizeOfElementalsArmyCounter:Number = 0;
			if (player.statusEffectv1(StatusEffects.SummonedElementals) > 0) currentSizeOfElementalsArmyCounter += player.statusEffectv1(StatusEffects.SummonedElementals);
			if (player.statusEffectv2(StatusEffects.SummonedElementals) > 0) currentSizeOfElementalsArmyCounter += player.statusEffectv2(StatusEffects.SummonedElementals) * 2;
			return currentSizeOfElementalsArmyCounter;
		}
		
		public function accessSummonElementalsMainMenu():void {
			clearOutput();
			outputText("Which one elemental would you like to summon or promote to higher rank?\n\n");
			if (player.hasPerk(PerkLib.JobElementalConjurer)) {
				outputText("Current limit for elemental summons: " + maxSizeOfElementalsArmy() + " different types of elementals\n");
				outputText("Current summoned elementals count\n<i>");
				if (player.hasStatusEffect(StatusEffects.SummonedElementals)) {
					outputText("-Normal: " + player.statusEffectv1(StatusEffects.SummonedElementals) + " (" + player.statusEffectv1(StatusEffects.SummonedElementals) + ")\n");
					outputText("-Epic: " + player.statusEffectv2(StatusEffects.SummonedElementals) + " (" + player.statusEffectv2(StatusEffects.SummonedElementals) * 2 + ")\n");
				}
				outputText("-Unique: 0</i>\n\n");
			}
			outputText("<b>Currently summoned elementals:</b><i>");
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsAir)) {
				outputText("\nAir");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 32) outputText(" ((Peak) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 33) outputText(" ((Low) Earl Rank)");//186
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 34) outputText(" ((Mid) Earl Rank)");//192
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 35) outputText(" ((Advanced) Earl Rank)");//198
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 36) outputText(" ((Peak) Earl Rank)");//204
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 37) outputText(" ((Low) Marquess Rank)");//210
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 38) outputText(" ((Mid) Marquess Rank)");//216
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 39) outputText(" ((Advanced) Marquess Rank)");//222
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 40) outputText(" ((Peak) Marquess Rank)");//228
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 41) outputText(" ((Low) Duke Rank)");//234
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 42) outputText(" ((Mid) Duke Rank)");//240
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 43) outputText(" ((Advanced) Duke Rank)");//246
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 44) outputText(" ((Peak) Duke Rank)");//252
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 45) outputText(" ((Low) Prince Rank)");//258
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 46) outputText(" ((Mid) Prince Rank)");//264
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 47) outputText(" ((Advanced) Prince Rank)");//270
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 48) outputText(" ((Peak) Prince Rank)");//276
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 49) outputText(" ((Low) King Rank)");//282
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 50) outputText(" ((Mid) King Rank)");//288
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 51) outputText(" ((Advanced) King Rank)");//294
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAir) == 52) outputText(" ((Peak) King Rank)");//300
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsEarth)) {
				outputText("\nEarth");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarth) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsFire)) {
				outputText("\nFire");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFire) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsWater)) {
				outputText("\nWater");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWater) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsEther)) {
				outputText("\nEther");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEther) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsWood)) {
				outputText("\nWood");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWood) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsMetal)) {
				outputText("\nMetal");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsMetal) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsIce)) {
				outputText("\nIce");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsIce) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsLightning)) {
				outputText("\nLightning");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsLightning) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsDarkness)) {
				outputText("\nDarkness");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsPoison)) {
				outputText("\nPoison");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPoison) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsPurity)) {
				outputText("\nPurity");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsPurity) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsCorruption)) {
				outputText("\nCorruption");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 1) outputText(" (Rank 0)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 2) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 3) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 4) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 5) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 6) outputText(" (Rank 5)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 7) outputText(" (Rank 6)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 8) outputText(" (Rank 7)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 9) outputText(" (Rank 8)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 10) outputText(" (Rank 9)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 11) outputText(" (9th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 12) outputText(" (8th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 13) outputText(" (7th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 14) outputText(" (6th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 15) outputText(" (5th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 16) outputText(" (4th Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 17) outputText(" (3rd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 18) outputText(" (2nd Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 19) outputText(" (1st Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 20) outputText(" (Grand Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 21) outputText(" ((Low) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 22) outputText(" ((Mid) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 23) outputText(" ((Advanced) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 24) outputText(" ((Peak) Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 25) outputText(" ((Low) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 26) outputText(" ((Mid) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 27) outputText(" ((Advanced) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 28) outputText(" ((Peak) Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 29) outputText(" ((Low) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 30) outputText(" ((Mid) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 31) outputText(" ((Advanced) Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) == 32) outputText(" ((Peak) Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsAirE)) {
				outputText("\nAir <b>(Elite)</b>");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 1) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 2) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 3) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 4) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 5) outputText(" (Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 6) outputText(" (Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 7) outputText(" (Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 8) outputText(" (Viscount Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 9) outputText(" (Earl Rank)");//204
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 10) outputText(" (Marquess Rank)");//228
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 11) outputText(" (Duke Rank)");//252
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 12) outputText(" (Prince Rank)");//276
				if (player.statusEffectv2(StatusEffects.SummonedElementalsAirE) == 13) outputText(" (King Rank)");//300
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsEarthE)) {
				outputText("\nEarth <b>(Elite)</b>");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 1) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 2) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 3) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 4) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 5) outputText(" (Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 6) outputText(" (Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 7) outputText(" (Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsEarthE) == 8) outputText(" (Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsFireE)) {
				outputText("\nFire <b>(Elite)</b>");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 1) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 2) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 3) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 4) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 5) outputText(" (Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 6) outputText(" (Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 7) outputText(" (Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsFireE) == 8) outputText(" (Viscount Rank)");
			}
			if (player.hasStatusEffect(StatusEffects.SummonedElementalsWaterE)) {
				outputText("\nWater <b>(Elite)</b>");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 1) outputText(" (Rank 1)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 2) outputText(" (Rank 2)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 3) outputText(" (Rank 3)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 4) outputText(" (Rank 4)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 5) outputText(" (Elder Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 6) outputText(" (Lord Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 7) outputText(" (Baron Rank)");
				if (player.statusEffectv2(StatusEffects.SummonedElementalsWaterE) == 8) outputText(" (Viscount Rank)");
			}
			outputText("</i>");
			menu();
			if (player.hasPerk(PerkLib.JobElementalConjurer) && (currentSizeOfElementalsArmy() < maxSizeOfElementalsArmy())) addButton(0, "Summon", summoningElementalsSubmenu);
			else addButtonDisabled(0, "Summon", "You either summoned all possible elementals or reached limit of how many elementals you can command at once.");
			addButton(1, "Ranks (E)", accessSummonEpicElementalsMainMenu).hint("Rank 1 to Viscount Rank Epic Elementals");
			if (currentSizeOfElementalsArmy() > 0) addButton(2, "ElementUp", elementaLvlUp,-9000,-9000,-9000,"Level up your Elementals!")
			else addButtonDisabled(2,"ElementUp", "You don't have any elementals, try summoning one!");
			addButton(13, "EvocationTome", evocationTome).hint("Description of various elemental powers.");
			addButton(14, "Back", playerMenu);
		}
		private function elementaLvlUp():void{
			var elementalTypes:Array = [];
			var contractRankI:int = 0;
			var btnInt:int = 0;
			var pPerkList:Array = player.perks;
			menu();
			elementalTypes.push(StatusEffects.SummonedElementalsAir, rankUpElementalAir, "air");
			elementalTypes.push(StatusEffects.SummonedElementalsEarth, rankUpElementalEarth, "earthen");
			elementalTypes.push(StatusEffects.SummonedElementalsFire, rankUpElementalFire, "flaming");
			elementalTypes.push(StatusEffects.SummonedElementalsWater, rankUpElementalWater, "flowing");
			elementalTypes.push(StatusEffects.SummonedElementalsEther, rankUpElementalEther, "ethereal");
			elementalTypes.push(StatusEffects.SummonedElementalsWood, rankUpElementalWood, "wooden");
			elementalTypes.push(StatusEffects.SummonedElementalsMetal, rankUpElementalMetal, "metallic");
			elementalTypes.push(StatusEffects.SummonedElementalsIce, rankUpElementalIce, "icy");
			elementalTypes.push(StatusEffects.SummonedElementalsLightning, rankUpElementalLightning, "electrifying");
			elementalTypes.push(StatusEffects.SummonedElementalsDarkness, rankUpElementalDarkness, "shadowy");
			elementalTypes.push(StatusEffects.SummonedElementalsPoison, rankUpElementalPoison, "poisonous");
			elementalTypes.push(StatusEffects.SummonedElementalsPurity, rankUpElementalPurity, "pure");
			elementalTypes.push(StatusEffects.SummonedElementalsCorruption, rankUpElementalCorruption, "corrupted");
			for each(var pPerks:PerkClass in pPerkList) { //Cheaty way of getting value equivalences.
				var temp:String = pPerks.perkName
				if (temp.indexOf("Elemental Contract Rank") >= 0){
					temp = temp.replace("Elemental Contract Rank ", "");
					var temp2:int = parseInt(temp, 10);
					if (temp2 > contractRankI){
						contractRankI = temp2;
					}
				}
			}
			var arcaneCMax:int = (flags[kFLAGS.CAMP_UPGRADES_ARCANE_CIRCLE] *4)-1;
			for (var i:int = 0,j:int = elementalTypes.length; i < j; i++){
				if (i % 3 == 0){
					var btnName:String = elementalTypes[i];
					btnName = btnName.replace("\"Summoned Elementals ", "").replace("\"", "");
					//outputText(btnName);
					var pElemLvlStat:int = player.statusEffectv2(elementalTypes[i]);
					if (pElemLvlStat <= contractRankI && pElemLvlStat > 0){//Checks Elemental level lower than max, but not 0.
						if (contractRankI <= arcaneCMax){	//If lower, don't care. You have the circle and the highest level circle can support.
							addButton(btnInt, btnName,elementalLvlUpCostCheck , elementalTypes[i + 1], pElemLvlStat, btnName, "Level up your "+ elementalTypes[i + 2] +" elemental!");
						}
						else{//Outside Bracket.
							addButtonDisabled(btnInt, btnName,"Your Arcane Circle can't handle the elemental level up safely!");
						}
					}
					else if (pElemLvlStat == 0){
						addButtonDisabled(btnInt, btnName,"You don't have this elemental yet!");
					}
					else{
						addButtonDisabled(btnInt, btnName,"You can't handle this elemental if you go further!");
					}
					btnInt += 1;
				}
			}
			addButton(14, "Back", accessSummonElementalsMainMenu);
		}
		private function elementalLvlUpCostCheck(elemType:Function, elemLvl:int, btnName:String):void{ //Check if player can afford to do so.
			clearOutput();
			menu();
			outputText("It will cost you " + rankUpElementalManaCost()*elemLvl + " mana and " + rankUpElementalFatigueCost()*elemLvl + " fatigue. Are you sure you want to proceed?");
			if (rankUpElementalManaCost()*elemLvl > player.mana){
				addButtonDisabled(0, btnName,"You don't have enough Mana within you. Try again when you have "+ rankUpElementalManaCost()*elemLvl +" stored up!");
			}
			else if(player.maxFatigue() <= (player.fatigue + rankUpElementalFatigueCost()*elemLvl)){
				addButtonDisabled(0, btnName,"You are too tired to attempt this. Try again when you have more energy!");
			}
			else{
				addButton(0, btnName, elemType, null, null, null, "Let's do this!")
			}
			addButton(14, "Back", elementaLvlUp);

		}
		private function evocationTome():void {
			clearOutput();
			menu();
			outputText("Which element would you like to read about?\n\n");
			addButton(0, "Air", evocationTomeAir).hint(" Information about the Air Elements.");
			addButton(1, "Earth", evocationTomeEarth).hint(" Information about the Earth Elements.");
			addButton(2, "Fire", evocationTomeFire).hint(" Information about the Fire Elements.");
			addButton(3, "Water", evocationTomeWater).hint(" Information about the Water Elements.");
			if (player.hasPerk(PerkLib.ElementsOfTheOrtodoxPath)) {
				addButton(4, "Ether", evocationTomeEther).hint(" Information about the Ether Elements.");
				addButton(5, "Wood", evocationTomeWood).hint(" Information about the Wood Elements.");
				addButton(6, "Metal", evocationTomeMetal).hint(" Information about the Metal Elements.");
			}
			else {
				addButtonDisabled(4, "Ether", "Req. Elements of the orthodox Path perk.");
				addButtonDisabled(5, "Wood", "Req. Elements of the orthodox Path perk.");
				addButtonDisabled(6, "Metal", "Req. Elements of the orthodox Path perk.");
			}
			if (player.hasPerk(PerkLib.ElementsOfMarethBasics)) {
				addButton(7, "Ice", evocationTomeIce).hint(" Information about the Ice Elements.");
				addButton(8, "Lightning", evocationTomeLightning).hint(" Information about the Lightning Elements.");
				addButton(9, "Darkness", evocationTomeDarkness).hint(" Information about the Darkness Elements.");
			}
			else {
				addButtonDisabled(7, "Ice", "Req. Elements of Mareth: Basics perk.");
				addButtonDisabled(8, "Lightning", "Req. Elements of Mareth: Basics perk.");
				addButtonDisabled(9, "Darkness", "Req. Elements of Mareth: Basics perk.");
			}
			if (player.hasPerk(PerkLib.ElementsOfMarethAdvanced)) {
				addButton(10, "Poison", evocationTomePoison).hint(" Information about the Poison Elements.");
				addButton(11, "Purity", evocationTomePurity).hint(" Information about the Purity Elements.");
				addButton(12, "Corruption", evocationTomeCorruption).hint(" Information about the Corruption Elements.");
			}
			else {
				addButtonDisabled(10, "Poison", "Req. Elements of Mareth: Advanced perk.");
				addButtonDisabled(11, "Purity", "Req. Elements of Mareth: Advanced perk.");
				addButtonDisabled(12, "Corruption", "Req. Elements of Mareth: Advanced perk.");
			}
			//addButtonDisabled(13, "???", "You need to take some time to understand what you've learned. Come back later."); //Silly mode tooltip possible? "This isn't a cram school, stop forcing books into your head!"
			addButton(14, "Back", accessSummonElementalsMainMenu);
		}
		private function evocationTomeAir():void {
			clearOutput();
			outputText("<b>Air Elemental</b>\n\n");
			outputText("-When attacking, it has an increased critical damage chance by 10%.\n");
			outputText("-When attacking, it has an increased critical damage multiplied from 150% to 175%.\n");
			outputText("-When attacking, it will ignore enemy damage reduction.\n");
			outputText("-M. Special: Creates a Wind Wall that deflects incoming projectiles for few turns. Duration depends on elemental rank.\n");
			doNext(evocationTome);
		}
		private function evocationTomeEarth():void {
			clearOutput();
			outputText("<b>Earth Elemental</b>\n\n");
			outputText("-When attacking, it has an increased damage by 100%.\n");
			outputText("-When attacking, it will deal Earth type damage.\n");
			outputText("-M. Special: Creates an Earth armor around PC, increasing armor and magic resistance for a few turns. Duration depends on elemental rank.\n");
			doNext(evocationTome);
		}
		private function evocationTomeFire():void {
			clearOutput();
			outputText("<b>Fire Elemental</b>\n\n");
			outputText("-When attacking, it will deal Fire type damage.\n");
			outputText("-M. Special: Stronger version of fire attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTomeWater():void {
			clearOutput();
			outputText("<b>Water Elemental</b>\n\n");
			outputText("-When attacking, it has an increased critical damage chance by 10%.\n");
			outputText("-When attacking, it will deal Water type damage.\n");
			outputText("-M. Special: Heals PC.\n");
			doNext(evocationTome);
		}
		private function evocationTomeEther():void {
			clearOutput();
			outputText("<b>Ether Elemental</b>\n\n");
			outputText("-When attacking, it has an increased critical damage chance by 10%.\n");
			outputText("-When attacking, it has an increased critical damage multiplied from 150% to 200%.\n");
			outputText("-When attacking, it will ignore enemy damage reduction.\n");
			outputText("-M. Special: Deals increased damage as a bonus to enemy if enemy is weak to any of the four major elements.\n");
			doNext(evocationTome);
		}
		private function evocationTomeWood():void {
			clearOutput();
			outputText("<b>Wood Elemental</b>\n\n");
			outputText("-When attacking, it has an increased damage by 100%.\n");
			outputText("-M. Special: PC (Minor) Healing and small increase to armor / magic resistance for a few turns. Duration depends on elemental rank.\n");
			doNext(evocationTome);
		}
		private function evocationTomeMetal():void {
			clearOutput();
			outputText("<b>Metal Elemental</b>\n\n");
			outputText("-When attacking, it has an increased critical damage chance by 10%.\n");
			outputText("-When attacking, it has an increased critical damage multiplied from 150% to 175%.\n");
			outputText("-When attacking, it has an increased damage by 30%.\n");
			outputText("-M. Special: Increases PC unarmed damage for a few turns. Duration depends on elemental rank.\n");
			doNext(evocationTome);
		}
		private function evocationTomeIce():void {
			clearOutput();
			outputText("<b>Ice Elemental</b>\n\n");
			outputText("-When attacking, it will deal Ice type damage.\n");
			outputText("-M. Special: Stronger version of ice attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTomeLightning():void {
			clearOutput();
			outputText("<b>Lightning Elemental</b>\n\n");
			outputText("-When attacking, it will deal Lightning type damage.\n");
			outputText("-M. Special: Stronger version of lightning attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTomeDarkness():void {
			clearOutput();
			outputText("<b>Darkness Elemental</b>\n\n");
			outputText("-When attacking, it will deal Darkness type damage.\n");
			outputText("-M. Special: Stronger version of darkness attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTomePoison():void {
			clearOutput();
			outputText("<b>Poison Elemental</b>\n\n");
			outputText("-When attacking, it will deal Poison type damage.\n");
			outputText("-M. Special: Stronger version of poison attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTomePurity():void {
			clearOutput();
			outputText("<b>Purity Elemental</b>\n\n");
			outputText("-When attacking, it will deal increased damage based on enemy corruption. The higher the corruption the higher bonus to damage. (60%-300%)\n");
			outputText("-M. Special: Stronger version of purity attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTomeCorruption():void {
			clearOutput();
			outputText("<b>Corruption Elemental</b>\n\n");
			outputText("-When attacking, it will deal increased damage based on enemy corruption. The lower the corruption the higher bonus to damage. (60%-300%)\n");
			outputText("-M. Special: Stronger version of corruption attributed attack.\n");
			doNext(evocationTome);
		}
		private function evocationTome4():void {
			clearOutput();
			outputText("<b>1 Elemental</b>\n\n");
			outputText("-M. Special: \n");
			doNext(evocationTome);
		}
		private function evocationTome3():void {
			clearOutput();
			outputText("<b>1 Elemental</b>\n\n");
			outputText("-M. Special: \n");
			doNext(evocationTome);
		}
		private function evocationTome2():void {
			clearOutput();
			outputText("<b>1 Elemental</b>\n\n");
			outputText("-M. Special: \n");
			doNext(evocationTome);
		}
		private function evocationTome1():void {
			clearOutput();
			outputText("<b>1 Elemental</b>\n\n");
			outputText("-M. Special: \n");
			doNext(evocationTome);
		}
		private function accessSummonEpicElementalsMainMenu():void {
			menu();
			if (player.hasPerk(PerkLib.JobElementalConjurer) && ((currentSizeOfElementalsArmy() + 1) < maxSizeOfElementalsArmy())) addButton(0, "Summon", summoningEpicElementalsSubmenu);
			else addButtonDisabled(0, "Summon", "You either summoned all possible elementals or reached limit of how many elementals you can command at once.");
			addButton(14, "Back", accessSummonElementalsMainMenu);
		}
		private function summoningElementalsSubmenu():void {
			clearOutput();
			outputText("If you don't have enough mana (100+) and fatigue (50+) it will be impossible to summon any elementals.\n\n");
			menu();
			if (player.mana >= 100 && (player.fatigue + 50 <= player.maxFatigue())) {
				if (player.statusEffectv1(StatusEffects.SummonedElementalsAir) < 1) addButton(0, "Air", summonElementalAir);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsEarth) < 1) addButton(1, "Earth", summonElementalEarth);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsFire) < 1) addButton(2, "Fire", summonElementalFire);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsWater) < 1) addButton(3, "Water", summonElementalWater);
				if (player.hasPerk(PerkLib.ElementsOfTheOrtodoxPath)) {
					if (player.statusEffectv1(StatusEffects.SummonedElementalsEther) < 1) addButton(4, "Ether", summonElementalEther);
					if (player.statusEffectv1(StatusEffects.SummonedElementalsWood) < 1) addButton(5, "Wood", summonElementalWood);
					if (player.statusEffectv1(StatusEffects.SummonedElementalsMetal) < 1) addButton(6, "Metal", summonElementalMetal);
				}
				if (player.hasPerk(PerkLib.ElementsOfMarethBasics)) {
					if (player.statusEffectv1(StatusEffects.SummonedElementalsIce) < 1) addButton(7, "Ice", summonElementalIce);
					if (player.statusEffectv1(StatusEffects.SummonedElementalsLightning) < 1) addButton(8, "Lightning", summonElementalLightning);
					if (player.statusEffectv1(StatusEffects.SummonedElementalsDarkness) < 1) addButton(9, "Darkness", summonElementalDarkness);
				}
				if (player.hasPerk(PerkLib.ElementsOfMarethAdvanced)) {
					if (player.statusEffectv1(StatusEffects.SummonedElementalsPoison) < 1) addButton(10, "Poison", summonElementalPoison);
					if (player.statusEffectv1(StatusEffects.SummonedElementalsPurity) < 1) addButton(11, "Purity", summonElementalPurity);
					if (player.statusEffectv1(StatusEffects.SummonedElementalsCorruption) < 1) addButton(12, "Corruption", summonElementalCorruption);
				}
			}
			addButton(14, "Back", accessSummonElementalsMainMenu);
		}

		private function summoningEpicElementalsSubmenu():void {
			clearOutput();
			outputText("If you not have matching item, elemental shard and enough fatigue (200+) it will be impossible to summon any epic elementals.\n\n");
			menu();
			if (player.hasItem(useables.ELSHARD, 1) && (player.fatigue + 200 <= player.maxFatigue())) {
				if (player.statusEffectv1(StatusEffects.SummonedElementalsAirE) < 1) addButton(0, "Air", summonElementalAirEpic);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsEarthE) < 1) addButton(1, "Earth", summonElementalEarthEpic);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsFireE) < 1) addButton(2, "Fire", summonElementalFireEpic);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsWaterE) < 1) addButton(3, "Water", summonElementalWaterEpic);
				/*if (player.statusEffectv1(StatusEffects.SummonedElementalsEther) < 1) addButton(4, "Ether", summonElementalEther);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsWood) < 1) addButton(5, "Wood", summonElementalWood);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsMetal) < 1) addButton(6, "Metal", summonElementalMetal);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsIce) < 1) addButton(7, "Ice", summonElementalIce);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsLightning) < 1) addButton(8, "Lightning", summonElementalLightning);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsDarkness) < 1) addButton(9, "Darkness", summonElementalDarkness);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsPoison) < 1) addButton(10, "Poison", summonElementalPoison);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsPurity) < 1) addButton(11, "Purity", summonElementalPurity);
				if (player.statusEffectv1(StatusEffects.SummonedElementalsCorruption) < 1) addButton(12, "Corruption", summonElementalCorruption);*/
			}
			addButton(14, "Back", accessSummonElementalsMainMenu);
		}

		private function summonElementalAir():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning an air elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The air elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own air elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsAir, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalEarth():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning an earth elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The earth elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own earth elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsEarth, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalFire():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a fire elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The fire elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own fire elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsFire, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalWater():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a water elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The water elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own water elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsWater, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalIce():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning an ice elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The ice elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own ice elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsIce, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalLightning():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a lightning elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The lightning elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own lightning elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsLightning, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalDarkness():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a darkness elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The darkness elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own darkness elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsDarkness, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalWood():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a wood elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The wood elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own wood elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsWood, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalMetal():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a metal elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The metal elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own metal elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsMetal, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalEther():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning an ether elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The ether elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own ether elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsEther, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalPoison():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a poison elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The poison elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own poison elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsPoison, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalPurity():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a purity elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The purity elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own purity elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsPurity, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function summonElementalCorruption():void {
			clearOutput();
			useMana(100);
			fatigue(50);
			statScreenRefresh();
			outputText("As it will be your first time summoning a corruption elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The corruption elemental appear within the circle. At first huge and terrifying, it fight against its binding trying to break through. ");
			outputText("The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own corruption elemental!</b>\"");
			player.createStatusEffect(StatusEffects.SummonedElementalsCorruption, 1, 1, 0, 0);
			finishingSummoningElemental();
		}
		private function finishingSummoningElemental():void {
			if (player.hasStatusEffect(StatusEffects.SummonedElementals)) player.addStatusValue(StatusEffects.SummonedElementals, 1, 1);
			else player.createStatusEffect(StatusEffects.SummonedElementals, 1, 0, 0, 0);
			doNext(accessSummonElementalsMainMenu);
			cheatTime2(30);
		}
		private function summonElementalAirEpic():void {
			clearOutput();
			if (player.hasKeyItem("Air Sylph Core") >= 0) {
				player.removeKeyItem("Air Sylph Core");
				player.destroyItems(useables.ELSHARD, 1);
				fatigue(200);
				statScreenRefresh();
				outputText("As it will be your first time summoning an epic air elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. In centre you place Air Sylph Core. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The air elemental appear within the circle. ");
				outputText("At first huge and terrifying, it fight against its binding trying to break through. The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. During decreasing size it shape also morph into masculine humanoid form of sylph instead of generic shape of all elementals. ");
				outputText("Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own epic air elemental!</b>\"");
				player.createStatusEffect(StatusEffects.SummonedElementalsAirE, 1, 1, 0, 0);
				finishingSummoningEpicElemental();
			}
			else {
				outputText("Looks like you lack most important part 'Air Sylph Core'. Without it there is no point to attempt summoning epic air elemental.");
				doNext(accessSummonElementalsMainMenu);
			}
		}
		private function summonElementalEarthEpic():void {
			clearOutput();
			if (player.hasKeyItem("Earth Golem Core") >= 0) {
				player.removeKeyItem("Earth Golem Core");
				player.destroyItems(useables.ELSHARD, 1);
				fatigue(200);
				statScreenRefresh();
				outputText("As it will be your first time summoning an epic earth elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. In centre you place Earth Golem Core. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The earth elemental appear within the circle. ");
				outputText("At first huge and terrifying, it fight against its binding trying to break through. The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. During decreasing size it shape also morph into feminine humanoid form of golem instead of generic shape of all elementals. ");
				outputText("Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own epic earth elemental!</b>\"");
				player.createStatusEffect(StatusEffects.SummonedElementalsEarthE, 1, 1, 0, 0);
				finishingSummoningEpicElemental();
			}
			else {
				outputText("Looks like you lack most important part 'Earth Golem Core'. Without it there is no point to attempt summoning epic earth elemental.");
				doNext(accessSummonElementalsMainMenu);
			}
		}
		private function summonElementalFireEpic():void {
			clearOutput();
			if (player.hasKeyItem("Fire Ifrit Core") >= 0) {
				player.removeKeyItem("Fire Ifrit Core");
				player.destroyItems(useables.ELSHARD, 1);
				fatigue(200);
				statScreenRefresh();
				outputText("As it will be your first time summoning an epic fire elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. In centre you place Fire Ifrit Core. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The fire elemental appear within the circle. ");
				outputText("At first huge and terrifying, it fight against its binding trying to break through. The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. During decreasing size it shape also morph into feminine humanoid form of ifrit instead of generic shape of all elementals. ");
				outputText("Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own epic fire elemental!</b>\"");
				player.createStatusEffect(StatusEffects.SummonedElementalsFireE, 1, 1, 0, 0);
				finishingSummoningEpicElemental();
			}
			else {
				outputText("Looks like you lack most important part 'Fire Ifrit Core'. Without it there is no point to attempt summoning epic fire elemental.");
				doNext(accessSummonElementalsMainMenu);
			}
		}
		private function summonElementalWaterEpic():void {
			clearOutput();
			if (player.hasKeyItem("Water Undine Core") >= 0) {
				player.removeKeyItem("Water Undine Core");
				player.destroyItems(useables.ELSHARD, 1);
				fatigue(200);
				statScreenRefresh();
				outputText("As it will be your first time summoning an epic water elemental, you begin the ritual by drawing a small circle of rune inside the larger arcane circle you already built, including runes for binding, and directive. In centre you place Water Undine Core. That done you initiate the most dangerous part of the ritual, invoking the primal might of the elemental. The water elemental appear within the circle. ");
				outputText("At first huge and terrifying, it fight against its binding trying to break through. The binding circle holds however acting as a mighty barrier the creature cannot breach. As the restraint rune takes hold it slowly shrink in size to something you can properly control. During decreasing size it shape also morph into masculine humanoid form of undine instead of generic shape of all elementals. ");
				outputText("Their duty fulfilled the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is finally complete congratulation is in order as you bound your very own epic water elemental!</b>\"");
				player.createStatusEffect(StatusEffects.SummonedElementalsWaterE, 1, 1, 0, 0);
				finishingSummoningEpicElemental();
			}
			else {
				outputText("Looks like you lack most important part 'Water Undine Core'. Without it there is no point to attempt summoning epic water elemental.");
				doNext(accessSummonElementalsMainMenu);
			}
		}
		private function finishingSummoningEpicElemental():void {
			if (player.hasStatusEffect(StatusEffects.SummonedElementals)) player.addStatusValue(StatusEffects.SummonedElementals, 2, 1);
			else player.createStatusEffect(StatusEffects.SummonedElementals, 0, 1, 0, 0);
			doNext(accessSummonElementalsMainMenu);
			cheatTime2(30);
		}
		
		private function rankUpElementalAir():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsAir));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsAir));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsAir) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsAir);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsAir, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalEarth():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsEarth));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsEarth));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsEarth) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsEarth);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsEarth, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalFire():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsFire));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsFire));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsFire) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsFire);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsFire, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalWater():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsWater));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsWater));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsWater) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsWater);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsWater, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalIce():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsIce));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsIce));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsIce) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsIce);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsIce, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalLightning():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsLightning));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsLightning));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsLightning) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsLightning);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsLightning, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalDarkness():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsDarkness));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsDarkness));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsDarkness) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsDarkness);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsDarkness, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalWood():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsWood));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsWood));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsWood) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsWood);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsWood, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalMetal():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsMetal));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsMetal));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsMetal) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsMetal);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsMetal, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalEther():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsEther));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsEther));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsEther) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsEther);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsEther, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalPoison():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsPoison));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsPoison));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsPoison) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsPoison);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsPoison, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalPurity():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsPurity));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsPurity));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsPurity) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsPurity);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsPurity, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalCorruption():void {
			clearOutput();
			useMana(rankUpElementalManaCost() * player.statusEffectv2(StatusEffects.SummonedElementalsCorruption));
			fatigue(rankUpElementalFatigueCost() * player.statusEffectv2(StatusEffects.SummonedElementalsCorruption));
			statScreenRefresh();
			rankUpElementalPart1();
			var summmast:Number = 0;
			if (player.wis > player.statusEffectv2(StatusEffects.SummonedElementalsCorruption) * 25) summmast += 25;
			else summmast += player.wis / player.statusEffectv2(StatusEffects.SummonedElementalsCorruption);
			if (rand(summmast) > 5) {
				outputText("The outraged elemental start by struggling but unable to defeat its binding let go and stand still awaiting your commands. Their duty fulfilled, the binding runes fades disappearing into the elemental until you call upon them again. \"<b>The ritual is complete and your elemental empowered as such!</b>\"");
				player.addStatusValue(StatusEffects.SummonedElementalsCorruption, 2, 1);
			}
			else failToRankUpElemental();
			doNext(elementaLvlUp);
			cheatTime2(30);
		}
		private function rankUpElementalManaCost():Number {
			var rankUpElementalManaCost:Number = 100;
			if (player.hasPerk(PerkLib.ElementalConjurerKnowledge)) rankUpElementalManaCost -= 40;
			return rankUpElementalManaCost;
		}
		private function rankUpElementalFatigueCost():Number {
			var rankUpElementalFatigueCost:Number = 50;
			if (player.hasPerk(PerkLib.ElementalConjurerKnowledge)) rankUpElementalFatigueCost -= 20;
			return rankUpElementalFatigueCost;
		}
		private function rankUpElementalPart1():void {
			outputText("It has been a while and your mastery of summoning has increased as a consequence. Now confident that you can contain it you head to the arcane circle and set up the ritual to release some of your servant restraints. You order your pet to stand still as you release the binding rune containing it. ");
			outputText("At first it trash in its prison with the clear intention to break free, kill and consume you but the ward holds. You write an additional arcane circle ");
			if (flags[kFLAGS.CAMP_UPGRADES_ARCANE_CIRCLE] == 2) outputText("around the first ");
			if (flags[kFLAGS.CAMP_UPGRADES_ARCANE_CIRCLE] == 3) outputText("around the previous one ");
			if (flags[kFLAGS.CAMP_UPGRADES_ARCANE_CIRCLE] == 4) outputText("around the previous two ");
			outputText("and add new directive and containment runes to the formula. Satisfied with the result you incant a final word of power.");
		}
		private function failToRankUpElemental():void {
			outputText("The enraged elemental struggle against its containment and to your horror find a breach beginning to grow to its full power and striking you in the process with a powerful barrage of energy.\n\n");
			outputText("\"<i>You pitiful mortal... you though you could contain me forever! I’m going to make you regret ever summoning me by...</i>\"");
			outputText("The elemental screams in dismay as your larger arcane circle unleash the full might of its last resort rune. Powerful discharge of energy strikes the wayward servants buying you enough time to rewrite its seal and force it back into servitude.\n\n");
			outputText("\"<i>Someday you will attempt this ritual again and when you do I will..</i>\"");
			outputText("Its final curse is silenced as its power are sealed again reducing it back to its former size. \"<b>Well this ritual is a failure you will have to try again when you achieved better control.</b>\"");
			HPChange(-(Math.round(player.HP * failToRankUpHPCost())), true);
		}
		private function failToRankUpHPCost():Number {
			var failure:Number = 0.5;
			if (player.hasPerk(PerkLib.ElementalConjurerKnowledge)) failure -= 0.2;
			return failure;
		}
		
		//-------------
		//
		//  SKELETONS
		//
		//-------------
		
		public function maxDemonBonesStored():Number {
			var maxDemonBonesStoredCounter:Number = 100;
			return maxDemonBonesStoredCounter;
		}
		public function maxSkeletonWarriors():Number {
			var maxSkeletonWarriorsCounter:Number = 0;
			if (player.hasPerk(PerkLib.PrestigeJobNecromancer)) maxSkeletonWarriorsCounter += 3;
			if (player.hasPerk(PerkLib.GreaterHarvest)) maxSkeletonWarriorsCounter += 3;
			if (player.hasPerk(PerkLib.BoneSoul)) maxSkeletonWarriorsCounter += 4;
			return maxSkeletonWarriorsCounter;
		}
		public function maxSkeletonArchers():Number {
			var maxSkeletonArchersCounter:Number = 0;
			if (player.hasPerk(PerkLib.GreaterHarvest)) maxSkeletonArchersCounter += 3;
			if (player.hasPerk(PerkLib.BoneSoul)) maxSkeletonArchersCounter += 3;
			if (player.hasPerk(PerkLib.SkeletonLord)) maxSkeletonArchersCounter += 4;
			return maxSkeletonArchersCounter;
		}
		public function maxSkeletonMages():Number {
			var maxSkeletonMagesCounter:Number = 0;
			if (player.hasPerk(PerkLib.GreaterHarvest)) maxSkeletonMagesCounter += 3;
			if (player.hasPerk(PerkLib.BoneSoul)) maxSkeletonMagesCounter += 3;
			if (player.hasPerk(PerkLib.SkeletonLord)) maxSkeletonMagesCounter += 4;
			return maxSkeletonMagesCounter;
		}
		
		public function accessMakeSkeletonWinionsMainMenu():void {
			clearOutput();
			outputText("What skeleton would you like to make?\n\n");
			outputText("<b>Stored Demon Bones:</b> " + player.perkv1(PerkLib.PrestigeJobNecromancer) + " / " + maxDemonBonesStored() + "\n");
			outputText("<b>Skeleton Warriors:</b> " + player.perkv2(PerkLib.PrestigeJobNecromancer) + " / " + maxSkeletonWarriors() + "\n");
			if (player.hasPerk(PerkLib.GreaterHarvest)) {
				outputText("<b>Skeleton Archers:</b> " + player.perkv1(PerkLib.GreaterHarvest) + " / " + maxSkeletonArchers() + "\n");
				outputText("<b>Skeleton Mages:</b> " + player.perkv2(PerkLib.GreaterHarvest) + " / " + maxSkeletonMages() + "\n");
			}
			menu();
			if (player.perkv1(PerkLib.PrestigeJobNecromancer) >= 20 && player.soulforce >= 5000) {
				addButton(0, "C.Skeleton(W)", createSkeletonWarrior).hint("Create Skeleton Warrior.");
				if (player.hasPerk(PerkLib.GreaterHarvest)) {
					if (player.perkv1(PerkLib.PrestigeJobNecromancer) > 0) {
						if (player.perkv2(PerkLib.PrestigeJobNecromancer) > 0) addButton(1, "C.Skeleton(A)", createSkeletonArcher).hint("Create Skeleton Archer.");
						else addButtonDisabled(1, "C.Skeleton(A)", "Req. to create at least 1 Skeleton Warrior before creating Skeleton Archer.");
						if (player.perkv1(PerkLib.GreaterHarvest) > 0) addButton(2, "C.Skeleton(M)", createSkeletonMage).hint("Create Skeleton Mage.");
						else addButtonDisabled(2, "C.Skeleton(M)", "Req. to create at least 1 Skeleton Archer before creating Skeleton Mage.");
					}
				}
				else {
					addButtonDisabled(1, "???", "Req. Greater harvest perk to unlock this option.");
					addButtonDisabled(2, "???", "Req. Greater harvest perk to unlock this option.");
				}
				
			}
			else {
				addButtonDisabled(0, "C.Skeleton(W)", "You lack required amont of demon bones (20+) and/or soulforce (5000+) to create skeleton warrior.");
				if (player.hasPerk(PerkLib.GreaterHarvest)) {
					addButtonDisabled(1, "C.Skeleton(A)", "You lack required amont of demon bones (20+) and/or soulforce (5000+) to create skeleton archer.");
					addButtonDisabled(2, "C.Skeleton(M)", "You lack required amont of demon bones (20+) and/or soulforce (5000+) to create skeleton mage.");
				}
				else {
					addButtonDisabled(1, "???", "Req. Greater harvest perk to unlock this option.");
					addButtonDisabled(2, "???", "Req. Greater harvest perk to unlock this option.");
				}
			}
			addButton(14, "Back", playerMenu);
		}
		
		public function createSkeletonWarrior():void {
			clearOutput();
			if (player.perkv2(PerkLib.PrestigeJobNecromancer) == maxSkeletonWarriors()) {
				outputText("You already got as many Skeleton Warriors as you could realistically control.");
				doNext(accessMakeSkeletonWinionsMainMenu);
				return;
			}
			player.addPerkValue(PerkLib.PrestigeJobNecromancer, 1, -20);
			player.soulforce -= 5000;
			statScreenRefresh();
			outputText("You draw a seal in the ground around the pile of bone that will soon be your servant. Once done you stand back and begin to seep your soulforce inside of the pile aligning joints together into a large 10 feet tall shape. Finishing the link on your creation you begin to feel its every movement on your fingertips. Satisfied you admire your brand new Skeleton Warrior, ready to fight things and do anything your finger will request.");
			player.addPerkValue(PerkLib.PrestigeJobNecromancer, 2, 1);
			doNext(accessMakeSkeletonWinionsMainMenu);
			cheatTime2(10);
		}
		public function createSkeletonArcher():void {
			clearOutput();
			if (player.perkv1(PerkLib.GreaterHarvest) == maxSkeletonArchers()) {
				outputText("You already got as many Skeleton Archers as you could realistically control.");
				doNext(accessMakeSkeletonWinionsMainMenu);
				return;
			}
			player.addPerkValue(PerkLib.PrestigeJobNecromancer, 1, -20);
			player.soulforce -= 5000;
			statScreenRefresh();
			outputText("You draw a seal in the ground around the pile of bone that will soon be your servant. Once done you stand back and begin to seep your soulforce inside of the pile aligning joints together into a large 10 feet tall shape. Finishing the link on your creation you begin to feel its every movement on your fingertips. Satisfied you admire your brand new Skeleton Archer, ready to fight things and do anything your finger will request.");
			player.addPerkValue(PerkLib.GreaterHarvest, 1, 1);
			doNext(accessMakeSkeletonWinionsMainMenu);
			cheatTime2(10);
		}
		public function createSkeletonMage():void {
			clearOutput();
			if (player.perkv2(PerkLib.GreaterHarvest) == maxSkeletonMages()) {
				outputText("You already got as many Skeleton Mages as you could realistically control.");
				doNext(accessMakeSkeletonWinionsMainMenu);
				return;
			}
			player.addPerkValue(PerkLib.PrestigeJobNecromancer, 1, -20);
			player.soulforce -= 5000;
			statScreenRefresh();
			outputText("You draw a seal in the ground around the pile of bone that will soon be your servant. Once done you stand back and begin to seep your soulforce inside of the pile aligning joints together into a large 10 feet tall shape. Finishing the link on your creation you begin to feel its every movement on your fingertips. Satisfied you admire your brand new Skeleton Mage, ready to fight things and do anything your finger will request.");
			player.addPerkValue(PerkLib.GreaterHarvest, 2, 1);
			doNext(accessMakeSkeletonWinionsMainMenu);
			cheatTime2(10);
		}
	}
}