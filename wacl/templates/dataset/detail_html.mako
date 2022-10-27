<%inherit file="../home_comp.mako"/>

<%def name="sidebar()">
    <div class="well">
        <h3>How to cite</h3>
        <p>If you use WACL data, please cite the documentation paper</p>
        <blockquote>
            ${req.dataset.jsondata['citation']}
        </blockquote>
        <p>
            as well as the
            ${h.external_link('https://github.com/cldf-datasets/wacl/releases', label=_('released version'))}
            of the dataset.
        <h3>Special thanks to</h3>
        <p>
Robert Forkel and the MPI team.
Gerd Carling and the Language Typology and Evolution Research Group at Lund university.
All the contributors (Research assistants, postdoctoral researchers, and researchers).
Marcus och Amalia Wallenbergs Minnesfond.
Joint Programming Initiative on Cultural Heritage.
French National Research Agency.
        </p>
    </div>
</%def>

<h2>Welcome to WACL</h2>

<p class="lead">
    The World Atlas of Classifier Languages (WACL) and its documentation paper present steps to identify a numeral classifier language and a database of 3338 languages, of which 723 languages have been identified as having a numeral classifier system.
</p>
<p>
    ${req.dataset.description}
</p>
