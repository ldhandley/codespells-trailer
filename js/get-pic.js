const puppeteer = require('puppeteer');

var inputURL = process.argv[2];
var outputFile = process.argv[3];

(async () => {
	  const browser = await puppeteer.launch(
		  {headless: true,
		  args: ['--no-sandbox' //,
			  //'--font-render-hinting=medium'
			  //, '--disable-setuid-sandbox', '--headless', '--window-size=1920x1080'
		  ]}
	  );
	  const page = await browser.newPage();
	  await page.goto(inputURL, 
	 	  {waitUntil: "networkidle0"});

	  await page.screenshot(
		  {path: outputFile,
		   omitBackground: true
		  });

	  await browser.close();
})();
