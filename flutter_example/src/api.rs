use anyhow::Result;

pub fn make_many_requests(n: u64) -> Result<Vec<String>> {
	use reqwest::blocking::Client;
	let mut out = vec![];
	for _ in 0..n {
		let client = Client::new();
		let resp = client.get("http://wp.pl").send().unwrap();
		out.push(format!("{:?}", resp))
	};
	Ok(out)
}