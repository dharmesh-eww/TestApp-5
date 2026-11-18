class ZodiacSign{const ZodiacSign({required this.id,required this.name,required this.glyph,required this.dates,required this.element,required this.modality,required this.ruler,required this.about});final String id,name,glyph,dates,element,modality,ruler,about;}
const zodiacSigns=<ZodiacSign>[
ZodiacSign(id:'aries',name:'Aries',glyph:'♈',dates:'Mar 21 – Apr 19',element:'Fire',modality:'Cardinal',ruler:'Mars',about:'Traditionally associated with initiative, energy and fresh starts.'),
ZodiacSign(id:'taurus',name:'Taurus',glyph:'♉',dates:'Apr 20 – May 20',element:'Earth',modality:'Fixed',ruler:'Venus',about:'Traditionally associated with steadiness, comfort and patience.'),
ZodiacSign(id:'gemini',name:'Gemini',glyph:'♊',dates:'May 21 – Jun 20',element:'Air',modality:'Mutable',ruler:'Mercury',about:'Traditionally associated with curiosity, ideas and communication.'),
ZodiacSign(id:'cancer',name:'Cancer',glyph:'♋',dates:'Jun 21 – Jul 22',element:'Water',modality:'Cardinal',ruler:'Moon',about:'Traditionally associated with care, belonging and connection.'),
ZodiacSign(id:'leo',name:'Leo',glyph:'♌',dates:'Jul 23 – Aug 22',element:'Fire',modality:'Fixed',ruler:'Sun',about:'Traditionally associated with creativity, warmth and expression.'),
ZodiacSign(id:'virgo',name:'Virgo',glyph:'♍',dates:'Aug 23 – Sep 22',element:'Earth',modality:'Mutable',ruler:'Mercury',about:'Traditionally associated with discernment, craft and practical care.'),
ZodiacSign(id:'libra',name:'Libra',glyph:'♎',dates:'Sep 23 – Oct 22',element:'Air',modality:'Cardinal',ruler:'Venus',about:'Traditionally associated with balance, aesthetics and dialogue.'),
ZodiacSign(id:'scorpio',name:'Scorpio',glyph:'♏',dates:'Oct 23 – Nov 21',element:'Water',modality:'Fixed',ruler:'Pluto (traditional: Mars)',about:'Traditionally associated with depth and transformation.'),
ZodiacSign(id:'sagittarius',name:'Sagittarius',glyph:'♐',dates:'Nov 22 – Dec 21',element:'Fire',modality:'Mutable',ruler:'Jupiter',about:'Traditionally associated with exploration and learning.'),
ZodiacSign(id:'capricorn',name:'Capricorn',glyph:'♑',dates:'Dec 22 – Jan 19',element:'Earth',modality:'Cardinal',ruler:'Saturn',about:'Traditionally associated with patience and structure.'),
ZodiacSign(id:'aquarius',name:'Aquarius',glyph:'♒',dates:'Jan 20 – Feb 18',element:'Air',modality:'Fixed',ruler:'Uranus (traditional: Saturn)',about:'Traditionally associated with originality and community.'),
ZodiacSign(id:'pisces',name:'Pisces',glyph:'♓',dates:'Feb 19 – Mar 20',element:'Water',modality:'Mutable',ruler:'Neptune (traditional: Jupiter)',about:'Traditionally associated with imagination and reflection.')];
final zodiacById={for(final s in zodiacSigns)s.id:s};
