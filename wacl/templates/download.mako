<%inherit file="home_comp.mako"/>
<%namespace name="mpg" file="clldmpg_util.mako"/>

<h3>${_('Downloads')}</h3>

<div class="alert alert-info">
    <p>
        The WACL web application serves the latest
        ${h.external_link('https://github.com/cldf-datasets/wacl/releases', label=_('released version'))}
        of data curated at
        ${h.external_link('https://github.com/cldf-datasets/wacl', label='cldf-datasets/wacl')}.
        All released version are accessible via
        <a href="https://doi.org/">
            <img src="https://zenodo.org/badge/DOI/ .svg" alt="DOI">
        </a>
        <br/>
        on ZENODO as well.
    </p>
</div>
<h4>How to cite</h4>
<p>If you use this data, please cite</p>
<blockquote>
    ${req.dataset.jsondata['citation']}
</blockquote>
<p>as well as the exact released version of the dataset.</p>
