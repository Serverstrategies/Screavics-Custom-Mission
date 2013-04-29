_ch = _this select 0;

_select = player getvariable "SUB_RADIO_SELECT";
_select radioChannelRemove [player];
_ch radioChannelAdd [player];
player setvariable ["SUB_RADIO_SELECT", _ch];
hintsilent format ["CH %1 Selected", _ch];
