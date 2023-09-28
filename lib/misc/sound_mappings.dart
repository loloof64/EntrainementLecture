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
  // é
  // è
  // un, une
  // et, est
};
