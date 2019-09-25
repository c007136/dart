main() {
	List<String> list = List<String>();
	list.add('one');
	list.add('two');
	list.add('three');
	list.add('four');
	list.add('one');
	list.forEach((e) => print(e));

	print("----------");

	Set<String> set = Set.from(list);
	set.forEach((e) => print(e));

	print("----------");

	Map<String, String> map = Map<String, String>();
	map["one"] = "yi";
	map["two"] = "er";
	map["three"] = "san";
	map["four"] = "si";
	map.forEach((key, value) => print("$key : $value"));
}