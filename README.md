# 🤍Val'kyr Twins Special Ability order🖤

 _Discord_: `Discfordge` <sup>[_Vivax (Pagle-US)_]</sup> <br />
 _Discord_: `cat_nip` 

> Is the sequence of special abilities for the Val'Kyr Twins "random"?

The following document describes the unequal probability of "Val'Kyr Twins" special ability cast order in their Classic version of World of Warcraft: Wrath of the Lich King (2023) - Phase 3.

There is a pattern on their sequence, but we say it is "random" because we can't establish a causal (?) relationship.

> Why would they not be random anyways?

## Introduction

The Val'kyr Twins are the 4th Boss encounter within the raid of the Trial of the Crusader (ToC). 

Throughout this encounter, one (1) of the following four (4) abilities is cast every 45 seconds:

- [Shield of Darkness (SoD)](https://www.wowhead.com/wotlk/spell=65874/shield-of-darkness)
- [Dark Vortex (DV)](https://www.wowhead.com/wotlk/spell=66058/dark-vortex#comments)
- [Shield of Lights (SoL)](https://www.wowhead.com/wotlk/spell=65858/shield-of-lights)
- [Light Vortex (LV)](https://www.wowhead.com/wotlk/spell=66046/light-vortex#comments)

The four (4) abilities are cycled through before repeating.

<img src="_img/Abilities.jpg" /> <br />

## Background

On September 6, 2023, `cat_nip` (Discord User) conducted an [exploratory analysis](https://discord.com/channels/253212375790911489/954035835249000509/1148965319256309790) into the distribution of these abilities. 

His findings suggested that there is a distinct bias towards certain abilities, specifically Shield of Darkness (SoD), which was the most frequently observed initial ability cast. 

<img src="_img/Catnip.png" /> <br />

Despite the use of a sampling method that should have guaranteed some degree of independence on each sample, the analysis was met with skepticism due to its sample size, lack of stratification, and lack of causal explanation. 

<img src="_img/Feedback.jpg" /> <br />

Let's fix that.

## Results

Using 6,704 Val'kyr Twins encounters (wipes and kills) we can explore the patterns of the boss.


## Methodology

All the data was collected using the [Warcraft Logs Classic API v2](https://articles.classic.warcraftlogs.com/help/api-documentation) and processed with R v.4.2 (R Development Core Team).

Trial of the Crusader (ToC) raids were located in this zone: https://classic.warcraftlogs.com/zone/reports?zone=1018

Duplicated encounters were excluded based on: "Encounter Name", "Difficulty", "Size", "Kill/Wipe", "Boss %", "Fight Length", and "Avg. ilvl".

<img src="_img/data_filtering.jpg"/>



