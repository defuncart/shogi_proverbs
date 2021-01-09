import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for gold section of ProverbType.pieces
final goldProverbs = [
  Proverb(
    index: 7,
    title: 'Save the Gold till the end (for the coup de grace)',
    japaneseTitle: 'Kin wa todome ni nokose',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: 'A Gold is a valuable piece in checkmate.',
          ),
          Diagram(
            sfenString: '4k4/9/9/9/9/9/9/9/9 b GS',
            label: 'Diagram 1',
          ),
          Paragraph(
            text: "How will you brinkmate White's King?",
          ),
          MoveSequence(
            moves: [
              'S*5c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: "Instead of using a Gold, you should narrow the King's escape by dropping a Silver first.",
          ),
          Paragraph(
            text:
                'With nothing in hand, White cannot escape from mate. If K-4a or K-6a, a Gold dropped at the head of the King will finish the game.',
          ),
          Paragraph(
            text:
                "If you drop a Gold instead of a Silver on 5c, there will follow: K-6a, S*6b, K-7b... You'll let the King escape.",
          ),
          Paragraph(
            text: 'Suppose you have no Golds in hand in Diagram 1, you will need three Silvers to finish:',
          ),
          MoveSequence(
            moves: [
              'S*5c',
              'K-4a',
              'S*3c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: '5k3/9/4S1S2/9/9/9/9/9/9 w S',
            label: 'Diagram 2',
          ),
          Paragraph(
            text: 'Please remember, where there is no Gold available, it is not easy to get access to the King.',
          ),
          Paragraph(
            text:
                'Lastly, the following diagram shows a tsume problem. This will pretty much recapitulate what I said above.',
          ),
          Diagram(
            sfenString: '6S2/8k/7p1/8p/9/9/9/9/9 b RGr2b3g3s4n4l16p',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Solution:',
          ),
          MoveSequence(
            moves: [
              'R*1a',
              'Kx1a',
              'G*2b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
        ],
      ),
    ],
  ),
  Proverb(
    index: 8,
    title: 'Entice the Gold diagonally forwards',
    japaneseTitle: 'Kin wa naname ni sasoe',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: 'A Gold can move diagonally forward, but needs two moves to get back to where it was.',
          ),
          Diagram(
            sfenString: '7nl/3R+P1gk1/5gspp/5pp2/9/9/9/9/9 b 2P',
            label: 'Diagram 1',
          ),
          Paragraph(
            text: "White's King is in the Yagura castle. How will you go about to attack the Yagura?",
          ),
          MoveSequence(
            moves: [
              'P*5d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'A Pawn dropped like this is called a dangling Pawn. It is very effective here.',
          ),
          Paragraph(
            text:
                'P*4b is another possibility. However, you will need two more moves (P-4a+ and +P-4b) to make it work. If you play P*5d in the first place, your next intended move, P-5c+, will do the job more quickly.',
          ),
          Paragraph(
            text: 'So, in response to P*5d, White will have to play Gx5d: a Gold lured diagonally forward.',
          ),
          MoveSequence(
            moves: [
              'Gx5d',
              'P*4c',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: '7nl/3R+P1gk1/5Pspp/4gpp2/9/9/9/9/9 w p',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'The second Pawn drop on 4c is quite devastating, which is again luring the Gold on 3b diagonally forward.',
          ),
          MoveSequence(
            moves: [
              'Gx4c',
              '+P-5c',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: '7nl/3R3k1/4+Pgspp/4gpp2/9/9/9/9/9 w 2p',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                'The last move in Diagram 3 is check and claiming a Gold at the same time, which leaves White almost defenseless.',
          ),
          Paragraph(
            text: 'Remember that dangling Pawns can lure Golds away from the King.',
          ),
        ],
      ),
    ],
  ),
  Proverb(
    index: 9,
    title: 'With a Gold on your back rank, you can sacrifice the Rook',
    japaneseTitle: 'Ichidan kin ni hisha sute ari',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'When your camp is well-protected against a Rook drop, you can sacrifice your Rook. This is what the proverb teaches.',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/P1P1P1P1P/1P1P1P1P1/2KG2S2/LN3G1NL w r',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "When a Gold is on the first rank as in Diagram 1, there's no room for a Rook drop. The combination of the Silver on 3h and the Gold on 4i makes a strong defense against a Rook drop.",
          ),
          Paragraph(
            text: 'A Silver on the first rank, in contrast, makes an ill-shaped defense.',
          ),
          Paragraph(
            text:
                'Diagram 2 shows where a Silver and two Golds are placed around the King, building up a sturdy guard. On the other hand, the right side of the camp is weaker.',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/P1P1P1P1P/1PSP1P1P1/2KGG4/LN5NL w r',
            label: 'Diagram 2',
          ),
          Paragraph(
            text: 'White will drop the Rook on 3i.',
          ),
          Paragraph(
            text:
                'Provided the opponent has a Rook in hand, your King is safer in Diagram 1 than Diagram 2. This is one of those ironies in shogi that you should keep in mind: A seemingly sturdy castle with Silvers and/or Golds closely around the King can invite a dangerous Rook drop.',
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'ln3g1nl/1r4kb1/p4psp1/2pgp1p1p/1p1p1S3/2P6/PPBs1PPPP/6SK1/LN1GRG1NL b Pp',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                "Diagram 3 is from an actual game where White has just dropped a Silver on 6g. Black wants to play Sx5d, but White will respond with P*5f thereby closing up the Rook's path. How would you play here?",
          ),
          MoveSequence(
            moves: [
              'Rx5d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "Black has two Golds on the first rank, which is a strong defense against a Rook drop. So, Black resorted to an aggressive move: Rx5d. This made White's Silver on 6g look pointless, since the Silver was intended to restrict Black's Rook.",
          ),
          MoveSequence(
            moves: [
              'Gx5d',
              'Sx5d',
              'B-1c',
              'P*6d',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln5nl/1r3gk2/p4pspb/2pPS1p1p/1p1p5/2P6/PPBs1PPPP/6SK1/LN1G1G1NL w GPrp',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "Black's Silver is now edging up on White's King, while White's Bishop and Silver on 6g are idle pieces. The position above is in Black's favor in spite of Black's material loss (a Gold for a Rook).",
          ),
          Paragraph(
            text:
                "Take note that White's B-1c was a good move in his bad position, placing the Bishop on a better square and giving the King more breathing space. However, Black's next move, P*6d, was even better, gaining ground for further attack.",
          ),
          Paragraph(
            text:
                "A Rook is a strong piece and you may well be reluctant to let it fall into your opponent's hand, but provided your camp has no hole for a Rook drop, the sacrifice of it is certainly a possibility to be considered.",
          ),
        ],
      ),
    ],
  ),
  Proverb(
    index: 10,
    title: 'The Gold pulled back is bound to be a good move',
    japaneseTitle: 'Kin wa hiku te ni koshu ari',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'Pull back your Gold on the back rank, and your defense will be stronger. Sometimes it may turn out to be a better move than you expect.',
          ),
          Paragraph(
            text:
                'Diagram 1 (last move P-8d) is from a title match by professional players. How would you play here as Black?',
          ),
          Diagram(
            sfenString: 'ln1g4l/1ks3g2/2pp1pnp1/pp1sp1r1p/6pP1/P1PSPP2P/1P1P1SP2/2KG2GR1/LN5NL b Bb',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "Black played G-3i, anticipating a Rook exchange. Then he moved the Gold onto 4i, thereby strengthening his defense. There followed a flamboyant show of exchanging both Rooks and Bishops (Diagram 2). The position is well-balanced, but take note that Black's camp allows no space for a Rook drop.",
          ),
          Diagram(
            sfenString: 'ln1g4l/1ks6/3p2n2/ppps2g1p/4P1pp1/P2S1p2P/1PPP5/2KG2S2/LN3G1NL b RB2Prb2p',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'Below is another example in which the maxim in question was put to good use. Unlike above, this is a joseki position in the central Rook against static Rook opening.',
          ),
          Diagram(
            sfenString: 'ln3g1nl/2r1gskb1/p3sp1p1/2ppp1p1p/1p7/2PPPP2P/PPBS2PP1/2G1R1SK1/LN3G1NL b -',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Moves from Diagram 3:',
          ),
          MoveSequence(
            moves: [
              'G-7i',
              'P-7e',
              'Px7e',
              'Rx7e',
              'R-7h',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln3g1nl/4gskb1/p3sp1p1/3pp1p1p/1pr6/3PPP2P/PPBS2PP1/2R3SK1/LNG2G1NL w Pp',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "G-7i is exactly what the proverb teaches: to mend the unguarded space, which was at the same time preparing for Black's own Rook to come to 7h. Therefore, this was the best move to play here. Diagram 4 shows that Black has nothing to worry about in case of a Rook exchange. He/she can next play P-6e or B-8h, thereby taking the initiative of the game.",
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                'Diagram 5 (last mvoe R*3h) shows White has just dropped a Rook in your camp. Your yagura-castle is still intact, but you cannot be too optimistic about that, since White still has a Rook and a Silver in hand.',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2PPP4/PPSG2b2/1KG3r2/LN7 b rs',
            label: 'Diagram 5',
          ),
          Paragraph(
            text:
                'White will next play Rx7h, to which Black will have to respond with Kx7h. Then there will follow S*6i, Kx6i, R*4i, which will practically finish the game (Diagram 6).',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2PPP4/PPSG2b2/9/LN1K1r3 b RSg',
            label: 'Diagram 6',
          ),
          Paragraph(
            text: "From Diagram 6, Black's K-7h won't do. G*7i will end the game.",
          ),
          Paragraph(
            text: 'Back in Diagram 5, there is one move you can play to get yourself out of danger, which is...?',
          ),
          MoveSequence(
            moves: [
              'G6g-6h',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                'By placing two Golds side by side to guard your King, you can buy time. In the yagura-opening, you are supposed to place your Gold on 6g, but when you get into the endgame, the Gold had better be on 6h for the defense.',
          ),
          Paragraph(
            text:
                'I might add that S-6h instead of G6g-6h is less preferable, even if it may appear to be similar in effect. There is a well-known endgame tesuji against the Yagura: S*6i, to which S-6h is hardly well-prepared.',
          ),
          Paragraph(
            text: 'Just remember that a Gold functions better when sitting in the back rank.',
          ),
        ],
      ),
    ],
  ),
  Proverb(
    index: 11,
    title: 'With Gold and Silver Reversed (Gold above Silver), You Are Bound To Get Trouble',
    japaneseTitle: 'Kin gin no gyakkei wa akkei nari',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: 'A Silver above a Gold is the normal shape.',
          ),
          Diagram(
            sfenString: 'ln7/1kg6/1spg5/pp1pp4/2P6/PPSPP4/2BG5/1KG6/LN7 w -',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                'In Diagram 1, Black has assumed the vanguard Pawn at the head of the King. Since the Silver is above the Gold, they connect and have good shape.',
          ),
          Diagram(
            sfenString: 'ln7/1kg6/1spg5/pp1pp4/2P6/PPGPP4/2BG5/1KS6/LN7 w -',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'If a Gold is placed above instead of a Silver, as in Diagram 2, this is what is called akkei (bad shape). The King may appear to be guarded by three Generals, but it is hardly safe. Firstly, the Generals are not so well connected with each other as in Diagram 1. Secondly, the 7i square is not covered by either General, which means the whole castle can be quite useless when White attacks from the side with a Rook dropped on the first rank.',
          ),
          Diagram(
            sfenString: 'ln7/1kg6/1spg5/pp1pp4/2P6/PPGPP4/2BS5/1KG6/LN7 w -',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                'In Diagram 3, a Silver is on 6g instead of 7h and a Gold on 7h instead of 6g. This is a little better than Diagram 2. But in view of the function of Generals, the one on the upper front should be the Silver, since it is the piece with which you act on your first offensive.',
          ),
          Paragraph(
            text:
                'Now, we will look into how the Pawn-exchange on the 6th file will further affect the already ill-shaped formation.',
          ),
          Paragraph(
            text:
                "From Diagram 1, you can play: P-6e, Px6e, Sx6e, P*6d, S-7f. No problem resulted from the exchange. From Diagram 3, however, if you play likewise: P-6e, Px6e, Gx6e, P*6d, G-6f, your Gold will end up blocking your own Bishop's path. You will have to play an extra move, G-7f, to fix the bad shape.",
          ),
          Paragraph(
            text:
                'As there are exceptions to every rule, "Silver on top of Gold" can work against you at times, but more often it will lead you to the right track. That\'s what the basics are all about.',
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'l8/1r7/2np5/2pbp4/pp7/2PPP4/PPSG5/1KG6/LN7 w p',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                'Diagram 4 shows the Yagura castle, Kin-Yagura to be exact, which is known to be sturdy when attacked from above. Diagram 5 is a variation in which the Silver is on 6g instead of 7g, where the Gold was in Diagram 4. You may find the two Golds, one on top of another along the 7th file, sufficiently tight. You might also notice that the Gold on 7h is doubly secured, i.e., by the Gold on 7g and the Silver on 6g. But there is a deadly defect here. Let me show you by means of how White plays from this position.',
          ),
          Diagram(
            sfenString: 'l8/1r7/2np5/2pbp4/pp7/2PPP4/PPGS5/1KG6/LN7 w p',
            label: 'Diagram 5',
          ),
          MoveSequence(
            moves: [
              'P-8f',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                "When Black responds with Px8f, White will next play P*8e. If Gx8f instead, White's P*8e will be even more devastating.",
          ),
          Paragraph(
            text:
                "Look at Diagram 1 again. You will see White's P-8f is nothing to fear. You can play Sx8f. When White plays P*8e, you can pull your Silver back to 7g, which will demonstrate one major difference between a Silver and a Gold. Let me add, though, in the endgame when your Silver is no longer on 7g, the Gold on 6g should be moved to G7g to protect the King. With your two Golds on 7g and 7h, your opponent should have a hard time working out a threatmate.",
          ),
        ],
      ),
    ],
  ),
];
