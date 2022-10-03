use crate::api::make_many_requests;

#[test]
pub fn many_req_test() {
	let out = make_many_requests(100).unwrap();
	println!("{:?}", out);
}