if(typeof(ss) == 'undefined' || typeof(ss.i18n) == 'undefined') {
	if(typeof(console) != 'undefined') console.error('Class ss.i18n not defined');
} else {
	ss.i18n.addDictionary('cs_CZ', {
		'VALIDATOR.FIELDREQUIRED': 'Vyplňte vyžadované pole "%s".',
		'HASMANYFILEFIELD.UPLOADING': 'Nahrávám... %s',
		'TABLEFIELD.DELETECONFIRMMESSAGE': 'Ste si istý, že chcete zmazať túto položku?',
		'LOADING': 'nahrávam...',
		'UNIQUEFIELD.SUGGESTED': "Zmenená hodnota na '%s' : %s",
		'UNIQUEFIELD.ENTERNEWVALUE': 'Musíte vložiť novú hodnotu do tohto poľa',
		'UNIQUEFIELD.CANNOTLEAVEEMPTY': 'Toto pole nemôže byť prázdne',
		'RESTRICTEDTEXTFIELD.CHARCANTBEUSED': "The character '%s' cannot be used in this field",
		'UPDATEURL.CONFIRM': 'Would you like me to change the URL to:\n\n%s/\n\nClick Ok to change the URL, click Cancel to leave it as:\n\n%s'
	});
}
