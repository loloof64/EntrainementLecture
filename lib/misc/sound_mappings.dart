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
    'combinations': {
      'a': 'assets/sounds/pa.mp3',
      'e': 'assets/sounds/p.mp3',
      'i': 'assets/sounds/pi.mp3',
      'o': 'assets/sounds/po.mp3',
      'u': 'assets/sounds/pu.mp3',
      'y': 'assets/sounds/pi.mp3',
    }
  },
  'l': {
    'base_sound': 'assets/sounds/l.mp3',
    'combinations': {
      'a': 'assets/sounds/la.mp3',
      'e': 'assets/sounds/l.mp3',
      'i': 'assets/sounds/li.mp3',
      'o': 'assets/sounds/lo.mp3',
      'u': 'assets/sounds/lu.mp3',
      'y': 'assets/sounds/li.mp3',
    }
  },
  't': {
    'base_sound': 'assets/sounds/t.mp3',
    'combinations': {
      'a': 'assets/sounds/ta.mp3',
      'e': 'assets/sounds/t.mp3',
      'i': 'assets/sounds/ti.mp3',
      'o': 'assets/sounds/to.mp3',
      'u': 'assets/sounds/tu.mp3',
      'y': 'assets/sounds/ti.mp3',
    }
  },
  'r': {
    'base_sound': 'assets/sounds/r.mp3',
    'combinations': {
      'a': 'assets/sounds/ra.mp3',
      'e': 'assets/sounds/r.mp3',
      'i': 'assets/sounds/ri.mp3',
      'o': 'assets/sounds/ro.mp3',
      'u': 'assets/sounds/ru.mp3',
      'y': 'assets/sounds/ri.mp3',
    }
  },
  's': {
    'base_sound': 'assets/sounds/s.mp3',
    'combinations': {
      'a': 'assets/sounds/sa.mp3',
      'e': 'assets/sounds/se.mp3',
      'i': 'assets/sounds/si.mp3',
      'o': 'assets/sounds/so.mp3',
      'u': 'assets/sounds/su.mp3',
      'y': 'assets/sounds/si.mp3',
    }
  },
  'v': {
    'base_sound': 'assets/sounds/v.mp3',
    'combinations': {
      'a': 'assets/sounds/va.mp3',
      'e': 'assets/sounds/v.mp3',
      'i': 'assets/sounds/vi.mp3',
      'o': 'assets/sounds/vo.mp3',
      'u': 'assets/sounds/vu.mp3',
    }
  },
  'n': {
    'base_sound': 'assets/sounds/n.mp3',
    'combinations': {
      'a': 'assets/sounds/na.mp3',
      'e': 'assets/sounds/n.mp3',
      'i': 'assets/sounds/ni.mp3',
      'o': 'assets/sounds/no.mp3',
      'u': 'assets/sounds/nu.mp3',
    }
  },
  'f': {
    'base_sound': 'assets/sounds/fe.mp3',
    'combinations': {
      'a': 'assets/sounds/fa.mp3',
      'e': 'assets/sounds/fe.mp3',
      'i': 'assets/sounds/fi.mp3',
      'o': 'assets/sounds/fo.mp3',
      'u': 'assets/sounds/fu.mp3',
    }
  },
  'm': {
    'base_sound': 'assets/sounds/m.mp3',
    'combinations': {
      'a': 'assets/sounds/ma.mp3',
      'e': 'assets/sounds/m.mp3',
      'i': 'assets/sounds/mi.mp3',
      'o': 'assets/sounds/mo.mp3',
      'u': 'assets/sounds/mu.mp3',
    }
  },
  'b': {
    'base_sound': 'assets/sounds/b.mp3',
    'combinations': {
      'a': 'assets/sounds/ba.mp3',
      'e': 'assets/sounds/b.mp3',
      'i': 'assets/sounds/bi.mp3',
      'o': 'assets/sounds/bo.mp3',
      'u': 'assets/sounds/bu.mp3',
    }
  },
  'j': {
    'base_sound': 'assets/sounds/j.mp3',
    'combinations': {
      'a': 'assets/sounds/ja.mp3',
      'e': 'assets/sounds/j.mp3',
      'i': 'assets/sounds/ji.mp3',
      'o': 'assets/sounds/jo.mp3',
      'u': 'assets/sounds/ju.mp3',
    }
  },
  'd': {
    'base_sound': 'assets/sounds/d.mp3',
    'combinations': {
      'a': 'assets/sounds/da.mp3',
      'e': 'assets/sounds/d.mp3',
      'i': 'assets/sounds/di.mp3',
      'o': 'assets/sounds/do.mp3',
      'u': 'assets/sounds/du.mp3',
    }
  },
  'z': {
    'base_sound': 'assets/sounds/z.mp3',
    'combinations': {
      'a': 'assets/sounds/za.mp3',
      'e': 'assets/sounds/z.mp3',
      'i': 'assets/sounds/zi.mp3',
      'o': 'assets/sounds/zo.mp3',
      'u': 'assets/sounds/zu.mp3',
    }
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
