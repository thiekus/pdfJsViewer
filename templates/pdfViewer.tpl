{**
 * plugins/generic/pdfJsViewer/templates/pdfViewer.tpl
 *
 * Copyright (c) 2013-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Embedded PDF viewer using pdf.js.
 *}

{*
<script type="text/javascript" src="{$pluginUrl}/pdf.js/build/pdf.mjs"></script>
<script type="text/javascript">
	{literal}
		document.addEventListener('DOMContentLoaded', function () {
			PDFJS.workerSrc='{/literal}{$pluginUrl}/pdf.js/build/pdf.worker.mjs{literal}';
			PDFJS.getDocument({/literal}'{$pdfUrl|escape:"javascript"}'{literal}).then(function(pdf) {
				// Using promise to fetch the page
				pdf.getPage(1).then(function(page) {
					var pdfCanvasContainer = $('#pdfCanvasContainer');
					var canvas = document.getElementById('pdfCanvas');
					canvas.height = pdfCanvasContainer.height();
					canvas.width = pdfCanvasContainer.width()-2; // 1px border each side
					var viewport = page.getViewport(canvas.width / page.getViewport(1.0).width);
					var context = canvas.getContext('2d');
					var renderContext = {
						canvasContext: context,
						viewport: viewport
					};
					page.render(renderContext);
				});
			});
		});
	{/literal}
</script>
<script type="text/javascript" src="{$pluginUrl}/pdf.js/web/viewer.mjs"></script> *}

<div id="pdfCanvasContainer">
	<iframe src="{$pluginUrl}/pdf.js/web/viewer.html?file={$pdfUrl|escape:"url"}" width="100%" height="100%" style="min-height: 720px;" allowfullscreen webkitallowfullscreen></iframe> 
</div>
