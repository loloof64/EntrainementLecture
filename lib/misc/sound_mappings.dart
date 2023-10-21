const voyels = <String, String>{
  'a': 'assets/sounds/lettre_a.mp3',
  'e': 'assets/sounds/lettre_e.mp3',
  'i': 'assets/sounds/lettre_i.mp3',
  'o': 'assets/sounds/lettre_o.mp3',
  'u': 'assets/sounds/lettre_u.mp3',
  'y': 'assets/sounds/lettre_y.mp3',
};

const consons = <String, String>{
  'b': 'assets/sounds/lettre_b.mp3',
  'c': 'assets/sounds/lettre_c.mp3',
  'd': 'assets/sounds/lettre_d.mp3',
  'f': 'assets/sounds/lettre_f.mp3',
  'g': 'assets/sounds/lettre_g.mp3',
  'h': 'assets/sounds/lettre_h.mp3',
  'j': 'assets/sounds/lettre_j.mp3',
  'k': 'assets/sounds/lettre_k.mp3',
  'l': 'assets/sounds/lettre_l.mp3',
  'm': 'assets/sounds/lettre_m.mp3',
  'n': 'assets/sounds/lettre_n.mp3',
  'p': 'assets/sounds/lettre_p.mp3',
  'q': 'assets/sounds/lettre_q.mp3',
  'r': 'assets/sounds/lettre_r.mp3',
  's': 'assets/sounds/lettre_s.mp3',
  't': 'assets/sounds/lettre_t.mp3',
  'v': 'assets/sounds/lettre_v.mp3',
  'x': 'assets/sounds/lettre_x.mp3',
  'z': 'assets/sounds/lettre_z.mp3',
};

const simpleSounds = <String, Map<String, dynamic>>{
  'p': {
    'base_sound': 'assets/sounds/p.mp3',
    'combinations': [
      {
        'base': 'p',
        'associations': {
          'a': 'assets/sounds/pa.mp3',
          'e': 'assets/sounds/p.mp3',
          'i': 'assets/sounds/pi.mp3',
          'o': 'assets/sounds/po.mp3',
          'u': 'assets/sounds/pu.mp3',
          'y': 'assets/sounds/pi.mp3',
        }
      }
    ],
  },
  'l': {
    'base_sound': 'assets/sounds/l.mp3',
    'combinations': [
      {
        'base': 'l',
        'associations': {
          'a': 'assets/sounds/la.mp3',
          'e': 'assets/sounds/l.mp3',
          'i': 'assets/sounds/li.mp3',
          'o': 'assets/sounds/lo.mp3',
          'u': 'assets/sounds/lu.mp3',
          'y': 'assets/sounds/li.mp3',
        }
      }
    ],
  },
  't': {
    'base_sound': 'assets/sounds/t.mp3',
    'combinations': [
      {
        'base': 't',
        'associations': {
          'a': 'assets/sounds/ta.mp3',
          'e': 'assets/sounds/t.mp3',
          'i': 'assets/sounds/ti.mp3',
          'o': 'assets/sounds/to.mp3',
          'u': 'assets/sounds/tu.mp3',
          'y': 'assets/sounds/ti.mp3',
        }
      }
    ]
  },
  'r': {
    'base_sound': 'assets/sounds/r.mp3',
    'combinations': [
      {
        'base': 'r',
        'associations': {
          'a': 'assets/sounds/ra.mp3',
          'e': 'assets/sounds/r.mp3',
          'i': 'assets/sounds/ri.mp3',
          'o': 'assets/sounds/ro.mp3',
          'u': 'assets/sounds/ru.mp3',
          'y': 'assets/sounds/ri.mp3',
        }
      }
    ],
  },
  's': {
    'base_sound': 'assets/sounds/s.mp3',
    'combinations': [
      {
        'base': 's',
        'associations': {
          'a': 'assets/sounds/sa.mp3',
          'e': 'assets/sounds/se.mp3',
          'i': 'assets/sounds/si.mp3',
          'o': 'assets/sounds/so.mp3',
          'u': 'assets/sounds/su.mp3',
          'y': 'assets/sounds/si.mp3',
        }
      }
    ],
  },
  'v': {
    'base_sound': 'assets/sounds/v.mp3',
    'combinations': [
      {
        'base': 'v',
        'associations': {
          'a': 'assets/sounds/va.mp3',
          'e': 'assets/sounds/v.mp3',
          'i': 'assets/sounds/vi.mp3',
          'o': 'assets/sounds/vo.mp3',
          'u': 'assets/sounds/vu.mp3',
        }
      }
    ],
  },
  'n': {
    'base_sound': 'assets/sounds/n.mp3',
    'combinations': [
      {
        'base': 'n',
        'associations': {
          'a': 'assets/sounds/na.mp3',
          'e': 'assets/sounds/n.mp3',
          'i': 'assets/sounds/ni.mp3',
          'o': 'assets/sounds/no.mp3',
          'u': 'assets/sounds/nu.mp3',
        }
      }
    ],
  },
  'f': {
    'base_sound': 'assets/sounds/fe.mp3',
    'combinations': [
      {
        'base': 'f',
        'associations': {
          'a': 'assets/sounds/fa.mp3',
          'e': 'assets/sounds/fe.mp3',
          'i': 'assets/sounds/fi.mp3',
          'o': 'assets/sounds/fo.mp3',
          'u': 'assets/sounds/fu.mp3',
        }
      }
    ],
  },
  'm': {
    'base_sound': 'assets/sounds/m.mp3',
    'combinations': [
      {
        'base': 'm',
        'associations': {
          'a': 'assets/sounds/ma.mp3',
          'e': 'assets/sounds/m.mp3',
          'i': 'assets/sounds/mi.mp3',
          'o': 'assets/sounds/mo.mp3',
          'u': 'assets/sounds/mu.mp3',
          'y': 'assets/sounds/my.mp3',
        }
      }
    ],
  },
  'b': {
    'base_sound': 'assets/sounds/b.mp3',
    'combinations': [
      {
        'base': 'b',
        'associations': {
          'a': 'assets/sounds/ba.mp3',
          'e': 'assets/sounds/b.mp3',
          'i': 'assets/sounds/bi.mp3',
          'o': 'assets/sounds/bo.mp3',
          'u': 'assets/sounds/bu.mp3',
        }
      }
    ],
  },
  'j': {
    'base_sound': 'assets/sounds/j.mp3',
    'combinations': [
      {
        'base': 'j',
        'associations': {
          'a': 'assets/sounds/ja.mp3',
          'e': 'assets/sounds/j.mp3',
          'i': 'assets/sounds/ji.mp3',
          'o': 'assets/sounds/jo.mp3',
          'u': 'assets/sounds/ju.mp3',
        }
      }
    ],
  },
  'd': {
    'base_sound': 'assets/sounds/d.mp3',
    'combinations': [
      {
        'base': 'd',
        'associations': {
          'a': 'assets/sounds/da.mp3',
          'e': 'assets/sounds/d.mp3',
          'i': 'assets/sounds/di.mp3',
          'o': 'assets/sounds/do.mp3',
          'u': 'assets/sounds/du.mp3',
        }
      }
    ],
  },
  'z': {
    'base_sound': 'assets/sounds/z.mp3',
    'combinations': [
      {
        'base': 'z',
        'associations': {
          'a': 'assets/sounds/za.mp3',
          'e': 'assets/sounds/z.mp3',
          'i': 'assets/sounds/zi.mp3',
          'o': 'assets/sounds/zo.mp3',
          'u': 'assets/sounds/zu.mp3',
        }
      }
    ],
  },
};

const complexSounds = <String, Map<String, dynamic>>{
  'k': {
    'base_sound': 'assets/sounds/k.mp3',
    'combinations': [
      {
        'base': 'qu',
        'associations': {
          'a': 'assets/sounds/ka.mp3',
          'e': 'assets/sounds/k.mp3',
          'i': 'assets/sounds/ki.mp3',
          'o': 'assets/sounds/ko.mp3',
        }
      },
      {
        'base': 'k',
        'associations': {
          'a': 'assets/sounds/ka.mp3',
          'e': 'assets/sounds/k.mp3',
          'i': 'assets/sounds/ki.mp3',
          'o': 'assets/sounds/ko.mp3',
          'u': 'assets/sounds/ku.mp3',
        }
      },
      {
        'base': 'c',
        'associations': {
          'a': 'assets/sounds/ka.mp3',
          'o': 'assets/sounds/ko.mp3',
          'u': 'assets/sounds/ku.mp3',
        }
      }
    ]
  },
  's': {
    'base_sound': 'assets/sounds/s.mp3',
    'combinations': [
      {
        'base': 'c',
        'associations': {
          'e': 'assets/sounds/se.mp3',
          'i': 'assets/sounds/si.mp3',
        }
      },
      {
        'base': 'ç',
        'associations': {
          'a': 'assets/sounds/sa.mp3',
          'o': 'assets/sounds/so.mp3',
          'u': 'assets/sounds/su.mp3',
        }
      },
    ],
  },
  'gu': {
    'base_sound': 'assets/sounds/gu.mp3',
    'combinations': [
      {
        'base': 'g',
        'associations': {
          'a': 'assets/sounds/ga.mp3',
          'o': 'assets/sounds/go.mp3',
          'u': 'assets/sounds/gu.mp3',
        }
      },
      {
        'base': 'gu',
        'associations': {
          'e': 'assets/sounds/gu.mp3',
          'i': 'assets/sounds/gui.mp3',
        }
      },
    ]
  },
  'j': {
    'base_sound': 'assets/sounds/j.mp3',
    'combinations': [
      {
        'base': 'g',
        'associations': {
          'e': 'assets/sounds/j.mp3',
          'i': 'assets/sounds/ji.mp3',
          'ea': 'assets/sounds/ja.mp3',
        }
      },
    ]
  },
  'ch': {
    'base_sound': 'assets/sounds/ch.mp3',
    'combinations': [
      {
        'base': 'ch',
        'associations': {
          'a': 'assets/sounds/cha.mp3',
          'e': 'assets/sounds/ch.mp3',
          'i': 'assets/sounds/chi.mp3',
          'o': 'assets/sounds/cho.mp3',
          'u': 'assets/sounds/chu.mp3',
        }
      },
    ]
  },
  'f': {
    'base_sound': 'assets/sounds/fe.mp3',
    'combinations': [
      {
        'base': 'ph',
        'associations': {
          'a': 'assets/sounds/fa.mp3',
          'e': 'assets/sounds/fe.mp3',
          'i': 'assets/sounds/fi.mp3',
          'o': 'assets/sounds/fo.mp3',
          'u': 'assets/sounds/fu.mp3',
        }
      },
    ]
  },
  'x': {
    'base_sound': 'assets/sounds/xe.mp3',
    'combinations': [
      {
        'base': 'x',
        'associations': {
          'a': 'assets/sounds/xa.mp3',
          'e': 'assets/sounds/xe.mp3',
          'i': 'assets/sounds/xi.mp3',
          'o': 'assets/sounds/xo.mp3',
          'u': 'assets/sounds/xu.mp3',
          'y': 'assets/sounds/xi.mp3',
        }
      },
    ]
  },
  'gn': {
    'base_sound': 'assets/sounds/gn.mp3',
    'combinations': [
      {
        'base': 'gn',
        'associations': {
          'a': 'assets/sounds/gna.mp3',
          'e': 'assets/sounds/gn.mp3',
          'i': 'assets/sounds/gni.mp3',
          'o': 'assets/sounds/gno.mp3',
        }
      },
    ]
  },
  'ill': {
    'base_sound': 'assets/sounds/ill.mp3',
    'combinations': [
      {
        'base': 'ill',
        'associations': {
          'a': 'assets/sounds/illa.mp3',
          'e': 'assets/sounds/ill.mp3',
        }
      },
    ]
  },
  'ou': {
    'base_sound': 'assets/sounds/ou.mp3',
    'combinations': [
      {
        'base': 'ou',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/cou.mp3',
          'p': 'assets/sounds/pou.mp3',
          't': 'assets/sounds/tou.mp3',
          'r': 'assets/sounds/rou.mp3',
          'l': 'assets/sounds/lou.mp3',
        }
      },
    ]
  },
  'oi': {
    'base_sound': 'assets/sounds/oi.mp3',
    'combinations': [
      {
        'base': 'oi',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/koi.mp3',
          'p': 'assets/sounds/poi.mp3',
          't': 'assets/sounds/toi.mp3',
          'r': 'assets/sounds/roi.mp3',
          'l': 'assets/sounds/loi.mp3',
        }
      },
    ]
  },
  'on': {
    'base_sound': 'assets/sounds/on.mp3',
    'combinations': [
      {
        'base': 'on',
        'reversed_combination': true,
        'associations': {
          'd': 'assets/sounds/don.mp3',
          'p': 'assets/sounds/pon.mp3',
          't': 'assets/sounds/ton.mp3',
          'r': 'assets/sounds/ron.mp3',
          'l': 'assets/sounds/lon.mp3',
        }
      },
    ]
  },
  'an': {
    'base_sound': 'assets/sounds/an.mp3',
    'combinations': [
      {
        'base': 'an',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/kan.mp3',
          'p': 'assets/sounds/pan.mp3',
          't': 'assets/sounds/tan.mp3',
          'r': 'assets/sounds/ran.mp3',
          'l': 'assets/sounds/lan.mp3',
        }
      },
      {
        'base': 'en',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/san.mp3',
          'p': 'assets/sounds/pan.mp3',
          't': 'assets/sounds/tan.mp3',
          'r': 'assets/sounds/ran.mp3',
          'l': 'assets/sounds/lan.mp3',
        }
      },
    ]
  },
  'in': {
    'base_sound': 'assets/sounds/in.mp3',
    'combinations': [
      {
        'base': 'in',
        'reversed_combination': true,
        'associations': {
          'p': 'assets/sounds/pin.mp3',
          't': 'assets/sounds/tin.mp3',
          'r': 'assets/sounds/rin.mp3',
          'l': 'assets/sounds/lin.mp3',
        }
      },
      {
        'base': 'ein',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/sin.mp3',
          'p': 'assets/sounds/pin.mp3',
          't': 'assets/sounds/tin.mp3',
          'r': 'assets/sounds/rin.mp3',
          'l': 'assets/sounds/lin.mp3',
        }
      },
      {
        'base': 'ain',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/kin.mp3',
          'p': 'assets/sounds/pin.mp3',
          't': 'assets/sounds/tin.mp3',
          'r': 'assets/sounds/rin.mp3',
          'l': 'assets/sounds/lin.mp3',
        }
      }
    ]
  },
  'o': {
    'base_sound': 'assets/sounds/lettre_o.mp3',
    'combinations': [
      {
        'base': 'au',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/ko.mp3',
          'p': 'assets/sounds/po.mp3',
          't': 'assets/sounds/to.mp3',
          'r': 'assets/sounds/ro.mp3',
          'l': 'assets/sounds/lo.mp3',
        }
      },
      {
        'base': 'eau',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/so.mp3',
          'p': 'assets/sounds/po.mp3',
          't': 'assets/sounds/to.mp3',
          'r': 'assets/sounds/ro.mp3',
          'l': 'assets/sounds/lo.mp3',
        }
      },
    ]
  },
  'é': {
    'base_sound': 'assets/sounds/é.mp3',
    'combinations': [
      {
        'base': 'et',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/sé.mp3',
          'p': 'assets/sounds/pé.mp3',
          't': 'assets/sounds/té.mp3',
          'r': 'assets/sounds/ré.mp3',
          'l': 'assets/sounds/lé.mp3',
        }
      },
      {
        'base': 'é',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/sé.mp3',
          'p': 'assets/sounds/pé.mp3',
          't': 'assets/sounds/té.mp3',
          'r': 'assets/sounds/ré.mp3',
          'l': 'assets/sounds/lé.mp3',
        }
      },
    ]
  },
  'è': {
    'base_sound': 'assets/sounds/è.mp3',
    'combinations': [
      {
        'base': 'ai',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/sè.mp3',
          'p': 'assets/sounds/pè.mp3',
          't': 'assets/sounds/tè.mp3',
          'r': 'assets/sounds/rè.mp3',
          'l': 'assets/sounds/lè.mp3',
        }
      },
      {
        'base': 'è',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/sè.mp3',
          'p': 'assets/sounds/pè.mp3',
          't': 'assets/sounds/tè.mp3',
          'r': 'assets/sounds/rè.mp3',
          'l': 'assets/sounds/lè.mp3',
        }
      },
    ]
  },
  'eu': {
    'base_sound': 'assets/sounds/eu.mp3',
    'combinations': [
      {
        'base': 'eu',
        'associations': {
          '': 'assets/sounds/eu.mp3',
          'x': 'assets/sounds/eu.mp3',
        }
      },
    ]
  },
  'ien': {
    'base_sound': 'assets/sounds/ien.mp3',
    'combinations': [
      {
        'base': 'ien',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/cien.mp3',
          'p': 'assets/sounds/pien.mp3',
          't': 'assets/sounds/tien.mp3',
          'l': 'assets/sounds/lien.mp3',
        }
      },
    ]
  },
  'ail': {
    'base_sound': 'assets/sounds/ail.mp3',
    'combinations': [
      {
        'base': 'ail',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/kail.mp3',
          'p': 'assets/sounds/pail.mp3',
          't': 'assets/sounds/tail.mp3',
          'r': 'assets/sounds/rail.mp3',
          'n': 'assets/sounds/nail.mp3',
        }
      },
    ]
  },
  'eil': {
    'base_sound': 'assets/sounds/eil.mp3',
    'combinations': [
      {
        'base': 'eil',
        'reversed_combination': true,
        'associations': {
          'p': 'assets/sounds/peil.mp3',
          't': 'assets/sounds/teil.mp3',
          'r': 'assets/sounds/reil.mp3',
        }
      },
    ]
  },
  'euil': {
    'base_sound': 'assets/sounds/euil.mp3',
    'combinations': [
      {
        'base': 'euil',
        'reversed_combination': true,
        'associations': {
          'd': 'assets/sounds/deuil.mp3',
          'f': 'assets/sounds/feuil.mp3',
          's': 'assets/sounds/seuil.mp3',
        }
      },
    ]
  },
  'oin': {
    'base_sound': 'assets/sounds/oin.mp3',
    'combinations': [
      {
        'base': 'oin',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/koin.mp3',
          'l': 'assets/sounds/loin.mp3',
          'p': 'assets/sounds/poin.mp3',
          's': 'assets/sounds/soin.mp3',
        }
      },
    ]
  },
  'ier': {
    'base_sound': 'assets/sounds/ier.mp3',
    'combinations': [
      {
        'base': 'ier',
        'reversed_combination': true,
        'associations': {
          'c': 'assets/sounds/sier.mp3',
          'p': 'assets/sounds/pier.mp3',
          's': 'assets/sounds/sier.mp3',
          'r': 'assets/sounds/rier.mp3'
        }
      },
    ]
  },
};

const words = <String, String>{
  'balançoire': 'assets/sounds/balançoire.mp3',
  'billard': 'assets/sounds/billard.mp3',
  'bateau': 'assets/sounds/bateau.mp3',
  'berceau': 'assets/sounds/berceau.mp3',
  'biche': 'assets/sounds/biche.mp3',
  'billet': 'assets/sounds/billet.mp3',
  'bouteille': 'assets/sounds/bouteille.mp3',
  'cadeau': 'assets/sounds/cadeau.mp3',
  'café': 'assets/sounds/café.mp3',
  'cahier': 'assets/sounds/cahier.mp3',
  'canard': 'assets/sounds/canard.mp3',
  'cèpe': 'assets/sounds/cèpe.mp3',
  'cerceau': 'assets/sounds/cerceau.mp3',
  'cercueil': 'assets/sounds/cercueil.mp3',
  'cerise': 'assets/sounds/cerise.mp3',
  'chanson': 'assets/sounds/chanson.mp3',
  'chat': 'assets/sounds/chat.mp3',
  'château': 'assets/sounds/château.mp3',
  'cheminée': 'assets/sounds/cheminée.mp3',
  'chien': 'assets/sounds/chien.mp3',
  'chose': 'assets/sounds/chose.mp3',
  'chuter': 'assets/sounds/chuter.mp3',
  'citron': 'assets/sounds/citron.mp3',
  'coiffeur': 'assets/sounds/coiffeur.mp3',
  'compagnon': 'assets/sounds/compagnon.mp3',
  'contrefaçon': 'assets/sounds/contrefaçon.mp3',
  'côte': 'assets/sounds/côte.mp3',
  'couleur': 'assets/sounds/couleur.mp3',
  'couturier': 'assets/sounds/couturier.mp3',
  'courageux': 'assets/sounds/courageux.mp3',
  'date': 'assets/sounds/date.mp3',
  'deça': 'assets/sounds/deça.mp3',
  'dent': 'assets/sounds/dent.mp3',
  'échec': 'assets/sounds/échec.mp3',
  'écureuil': 'assets/sounds/écureuil.mp3',
  'éléphant': 'assets/sounds/éléphant.mp3',
  'enfant': 'assets/sounds/enfant.mp3',
  'épée': 'assets/sounds/épée.mp3',
  'été': 'assets/sounds/été.mp3',
  'et': 'assets/sounds/é.mp3',
  'est': 'assets/sounds/è.mp3',
  'famille': 'assets/sounds/famille.mp3',
  'farcir': 'assets/sounds/farcir.mp3',
  'fauteuil': 'assets/sounds/fauteuil.mp3',
  'fenêtre': 'assets/sounds/fenêtre.mp3',
  'feuille': 'assets/sounds/feuil.mp3',
  'fille': 'assets/sounds/fille.mp3',
  'fossé': 'assets/sounds/fossé.mp3',
  'fumée': 'assets/sounds/fumée.mp3',
  'gagner': 'assets/sounds/gagner.mp3',
  'galette': 'assets/sounds/galette.mp3',
  'gâteau': 'assets/sounds/gâteau.mp3',
  'girafe': 'assets/sounds/girafe.mp3',
  'gouvernail': 'assets/sounds/gouvernail.mp3',
  'grain': 'assets/sounds/grain.mp3',
  'haricot': 'assets/sounds/haricot.mp3',
  'heure': 'assets/sounds/heure.mp3',
  'hibou': 'assets/sounds/hibou.mp3',
  'hiver': 'assets/sounds/hiver.mp3',
  'homme': 'assets/sounds/homme.mp3',
  'jachère': 'assets/sounds/jachère.mp3',
  'jeton': 'assets/sounds/jeton.mp3',
  'jeu': 'assets/sounds/jeu.mp3',
  'kangourou': 'assets/sounds/kangourou.mp3',
  'karaté': 'assets/sounds/karaté.mp3',
  'képi': 'assets/sounds/képi.mp3',
  'koala': 'assets/sounds/koala.mp3',
  'lacet': 'assets/sounds/lacet.mp3',
  'lire': 'assets/sounds/lire.mp3',
  'maman': 'assets/sounds/maman.mp3',
  'mangeoire': 'assets/sounds/mangeoire.mp3',
  'mangue': 'assets/sounds/mangue.mp3',
  'monture': 'assets/sounds/monture.mp3',
  'nature': 'assets/sounds/nature.mp3',
  'neuf': 'assets/sounds/neuf.mp3',
  'opportun': 'assets/sounds/opportun.mp3',
  'orange': 'assets/sounds/orange.mp3',
  'ours': 'assets/sounds/ours.mp3',
  'pagaille': 'assets/sounds/pagaille.mp3',
  'pain': 'assets/sounds/pain.mp3',
  'panier': 'assets/sounds/panier.mp3',
  'papa': 'assets/sounds/papa.mp3',
  'papi': 'assets/sounds/papi.mp3',
  'pareil': 'assets/sounds/pareil.mp3',
  'payer': 'assets/sounds/payer.mp3',
  'pêcheur': 'assets/sounds/pêcheur.mp3',
  'phare': 'assets/sounds/phare.mp3',
  'pharmacie': 'assets/sounds/pharmacie.mp3',
  'pigeon': 'assets/sounds/pigeon.mp3',
  'poids': 'assets/sounds/poids.mp3',
  'potiron': 'assets/sounds/potiron.mp3',
  'poucet': 'assets/sounds/poucet.mp3',
  'pyjama': 'assets/sounds/pyjama.mp3',
  'quille': 'assets/sounds/quille.mp3',
  'quoi': 'assets/sounds/quoi.mp3',
  'quota': 'assets/sounds/quota.mp3',
  'rancune': 'assets/sounds/rancune.mp3',
  'ragoût': 'assets/sounds/ragoût.mp3',
  'règle': 'assets/sounds/règle.mp3',
  'riz': 'assets/sounds/riz.mp3',
  'rythme': 'assets/sounds/rythme.mp3',
  'rouge': 'assets/sounds/rouge.mp3',
  'ruser': 'assets/sounds/ruser.mp3',
  'sablier': 'assets/sounds/sablier.mp3',
  'salon': 'assets/sounds/salon.mp3',
  'saumon': 'assets/sounds/saumon.mp3',
  'septembre': 'assets/sounds/septembre.mp3',
  'serpent': 'assets/sounds/serpent.mp3',
  'sirop': 'assets/sounds/sirop.mp3',
  'soleil': 'assets/sounds/soleil.mp3',
  'syllabe': 'assets/sounds/syllabe.mp3',
  'taxi': 'assets/sounds/taxi.mp3',
  'tirelire': 'assets/sounds/tirelire.mp3',
  'trou': 'assets/sounds/trou.mp3',
  'tyran': 'assets/sounds/tyran.mp3',
  'un': 'assets/sounds/un.mp3',
  'une': 'assets/sounds/une.mp3',
  'valeureux': 'assets/sounds/valeureux.mp3',
  'voleur': 'assets/sounds/voleur.mp3',
  'vigne': 'assets/sounds/vigne.mp3',
  'xylophone': 'assets/sounds/xylophone.mp3',
  'zèbre': 'assets/sounds/zèbre.mp3',
};
