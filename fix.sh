cd lib || exit
dart fix --apply
dcm fix .
dart format .