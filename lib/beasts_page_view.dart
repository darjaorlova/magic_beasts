import 'package:flutter/material.dart';
import 'package:magic_beasts/beast_view.dart';

class BeastsPageView extends StatelessWidget {
  const BeastsPageView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
          children: const [
            BeastView(
              name: 'Shadowfelis',
              description: '''
The Shadowfelis is a rare and enigmatic magical beast, often found lurking in the depths of ancient, enchanted forests. Resembling a large cat, this creature boasts sleek, mystical fur adorned with dark, shimmering patterns that seem to ripple and change with the light. Its large, hauntingly glowing eyes possess an eerie, otherworldly intelligence, reflecting both wisdom and a hint of mischief.''',
              beastImage: 'resources/images/shadowfelis.png',
              backgroundImage: 'resources/images/bg_forest.webp',
              backgroundSemanticLabel: 'Forest background',
            ),
            BeastView(
              name: 'Zephyra',
              description: '''
The Zephyra is a guardian of the enchanted skies it inhabits, bringing peace and tranquility to its surroundings. Legends tell of lost travelers and sailors who were guided to safety by the gentle light of a Zephyra. Its presence is believed to purify and bless the skies, making them a source of healing and magic. Despite its mystical appearance, the Zephyra is a gentle and approachable being, often interacting with those who show respect and reverence for the air and its creatures''',
              beastImage: 'resources/images/zephyra.png',
              backgroundImage: 'resources/images/bg_forest_green.webp',
              backgroundSemanticLabel: 'Green forest background',
            ),
            BeastView(
              name: 'Luminara',
              description:
                  '''The Luminara is a beacon of light and tranquility in the mystical realms it inhabits. Its presence is said to bring peace and healing to those who encounter it. Legends tell of travelers lost in the dark, enchanted woods who were guided to safety by the gentle glow of a Luminara. Its antlers, inscribed with ancient runes, are believed to possess powerful protective magic, warding off dark spirits and malevolent forces.''',
              beastImage: 'resources/images/luminara.png',
              backgroundImage: 'resources/images/bg_forest_pink.webp',
              backgroundSemanticLabel: 'Pink forest background',
            ),
            BeastView(
              name: 'Aqualis',
              description:
                  '''The Aqualis is a guardian of the enchanted waters it inhabits, bringing peace and tranquility to its surroundings. Legends tell of lost sailors and travelers guided to safety by the gentle glow of an Aqualis. Its presence is believed to purify and bless the waters, making them a source of healing and magic. Despite its mystical appearance, the Aqualis is a gentle and approachable being, often interacting with those who show respect and reverence for the water and its creatures. The Aqualis's serene and calming aura makes it a symbol of hope and guidance in the magical world.''',
              beastImage: 'resources/images/aqualis.png',
              backgroundImage: 'resources/images/bg_underwater.webp',
              backgroundSemanticLabel: 'Underwater background',
            ),
            BeastView(
              name: 'Ignisphinx',
              description:
                  '''The Ignisphinx is a guardian of the enchanted fire realms it inhabits, bringing both awe and fear to those who encounter it. Legends tell of ancient warriors and travelers who were granted protection and strength by the Ignisphinx. Its presence is believed to purify and bless the surrounding lands, making them a source of powerful magic and vitality. Despite its fiery and intimidating appearance, the Ignisphinx is a noble and wise being, often interacting with those who show courage and respect for the elements. The Ignisphinx's regal and commanding aura makes it a symbol of power and protection in the magical world.''',
              beastImage: 'resources/images/ignisphinx.png',
              backgroundImage: 'resources/images/bg_red.webp',
              backgroundSemanticLabel: 'Red background',
            ),
          ],
        ),
      );
}
