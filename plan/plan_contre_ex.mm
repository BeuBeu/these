<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1272460544310" HGAP="27" ID="ID_39378496" LINK="Global.mm" MODIFIED="1274100852579" TEXT="Vous avez dit Contre-exemple ?" VSHIFT="-5">
<node CREATED="1272460911667" ID="ID_962269662" MODIFIED="1274105297542" POSITION="right" TEXT="Def. Fausses Alarmes">
<node CREATED="1272460983199" ID="ID_1494071587" MODIFIED="1272461004366" TEXT="Que se passe-t-il quand la v&#xe9;rification &#xe9;choue ?"/>
<node CREATED="1272461005360" ID="ID_658845230" MODIFIED="1274105299179" TEXT="Propri&#xe9;t&#xe9;s semi-d&#xe9;cidables">
<node CREATED="1272461109390" ID="ID_1246765974" MODIFIED="1272461120037" TEXT="Soit elle est vraie"/>
<node CREATED="1272461128239" ID="ID_343916407" MODIFIED="1274105311104" TEXT="Soit elle est peut &#xea;tre viol&#xe9;e">
<node CREATED="1272461134799" FOLDED="true" ID="ID_1052917729" MODIFIED="1274101363110" TEXT="On tente d&apos;exhiber un contre-exemple">
<node CREATED="1272461468470" MODIFIED="1272461514950" TEXT="Soit on a un contre exemple : la propri&#xe9;t&#xe9; est viol&#xe9;e"/>
<node CREATED="1272463110749" MODIFIED="1272463216571" TEXT="On est s&#xfb;r que le terme est atteignable (l&apos;approximation n&apos;est pas utilis&#xe9;e pour produire cet &#xe9;tat)"/>
<node CREATED="1272461516133" MODIFIED="1272461527668" TEXT="Sinon, on ne sait toujours pas..."/>
</node>
<node CREATED="1272461178049" MODIFIED="1272461602314" TEXT="L&apos;approche pr&#xe9;c&#xe9;dente peut &#xea;tre encore am&#xe9;liorer : m&#xe9;thode &#xe0; la CEGAR"/>
<node CREATED="1272463087603" ID="ID_1997427758" MODIFIED="1272463322502" TEXT="On affine l&apos;approximation pour supprimer l&apos;occurence de l&apos;&#xe9;tat "/>
<node CREATED="1272549215805" FOLDED="true" ID="ID_873060183" MODIFIED="1274101363111" TEXT="On tente de compl&#xe9;ter le calcul de la cl&#xf4;ture ">
<node CREATED="1272549306363" MODIFIED="1272549356775" TEXT="Si le terme supprim&#xe9; est r&#xe9;ellement accessible, alors on va le retrouver, sinon c&apos;est une fausse alarme"/>
<node CREATED="1272549358086" MODIFIED="1272549516688" TEXT="Cependant l&apos;id&#xe9;e de raffinement augmente le risque de divergence..."/>
<node CREATED="1272552934523" MODIFIED="1272553020469" TEXT="Impose de raffiner avec parcimonie, pour &#xe9;viter d&apos;accro&#xee;tre le risque de divergence!"/>
</node>
</node>
</node>
</node>
<node CREATED="1272553079399" FOLDED="true" ID="ID_1029954291" MODIFIED="1274105293794" POSITION="right" TEXT="Comment introduire la notion de contre exemples dans un automate d&apos;arbres ?">
<node CREATED="1272553122465" ID="ID_468635334" MODIFIED="1272553164226" TEXT="Les techniques actuelles se basent sur un historique des automates correspondant &#xe0; chaque &#xe9;tape de calcul"/>
<node CREATED="1272553169380" ID="ID_1131709374" MODIFIED="1274101715297" TEXT="Bouajjani, Besan&#xe7;on...">
<node CREATED="1272553187034" MODIFIED="1272553233254" TEXT="Approches int&#xe9;ressantes, mais limit&#xe9;es d&apos;un point de vue complexit&#xe9; et expressivit&#xe9;"/>
<node CREATED="1272553235511" ID="ID_911098306" MODIFIED="1272553403476" TEXT="Utilisation de l&apos;inclusion d&apos;automates d&apos;arbres + intersection, syst&#xe8;mes lin&#xe9;aires &#xe0; droite et &#xe0; gauche : ca n&apos;est pas le cas du TRS de Java (non lin&#xe9;aire &#xe0; droite) (pour &#xe9;viter les calculs d&apos;inclusion, calcul en arri&#xe8;re &#xe0; partir de la propri&#xe9;t&#xe9;)"/>
<node CREATED="1272553411545" MODIFIED="1272553427312" TEXT="Autres approches ? voir les papiers de Besan&#xe7;on ???"/>
</node>
<node CREATED="1272554406759" ID="ID_1867923489" MODIFIED="1272554488351" TEXT="Autre approche : modifier la s&#xe9;mantique de l&apos;automate : d&#xe9;tecter quelles approximations ont permis d&apos;ajouter le terme dans l&apos;automate..."/>
<node CREATED="1272554500692" MODIFIED="1272554533759" TEXT="Principe : repose sur le remplacement de la fusion par des transitions epsilons..."/>
</node>
<node CREATED="1272555744152" FOLDED="true" ID="ID_1771063099" MODIFIED="1274101367910" POSITION="right" TEXT="D&#xe9;finition d&apos;un RE-automate">
<node CREATED="1272555773401" MODIFIED="1272555812275" TEXT="D&#xe9;fini pour un probl&#xe8;me donn&#xe9; constitu&#xe9; d&apos;un ensemble initial fini, d&apos;un syst&#xe8;me de r&#xe9;&#xe9;criture, et d&apos;un ensemble d&apos;&#xe9;qautions"/>
<node CREATED="1272555816155" FOLDED="true" ID="ID_960185395" MODIFIED="1274101365229" TEXT="D&#xe9;finitions formelles">
<node CREATED="1272555950771" MODIFIED="1272555963739" TEXT="Formules propositionnelles en FND"/>
<node CREATED="1272555970067" FOLDED="true" ID="ID_1978161020" MODIFIED="1274101364157" TEXT="S&#xe9;mantique">
<node CREATED="1272556420724" MODIFIED="1272556491677" TEXT="D&#xe9;tailler que les &#xe9;tapes de reconnaissance peuvent &#xea;tre permutter tant que la r&#xe9;&#xe9;criture le permet..."/>
<node CREATED="1272556495935" MODIFIED="1272556585231" TEXT="Introduire des sous classes pour le cas de la reconnaissance sans \Delta_\R et sans &#xe9;tapes de transisitons epsilon aux feuilles  (pas de transition q -&gt; q&apos; sur f(q).)"/>
</node>
<node CREATED="1272555983148" MODIFIED="1272555994277" TEXT="Exemple de Re-automate"/>
</node>
<node CREATED="1272555834228" MODIFIED="1272555851237" TEXT="Equivalence entre la nouvelle s&#xe9;mantique et la s&#xe9;mantique standard"/>
<node CREATED="1272555863693" FOLDED="true" ID="ID_448354585" MODIFIED="1274101365230" TEXT="RE-Automate complet">
<node CREATED="1272555897264" MODIFIED="1272555903434" TEXT="Cl&#xf4;ture par r&#xe9;&#xe9;criture"/>
</node>
</node>
<node CREATED="1272556038983" FOLDED="true" ID="ID_1785471367" MODIFIED="1274101367910" POSITION="right" TEXT="Compl&#xe9;tion d&apos;un RE-Automate">
<node CREATED="1272556058840" MODIFIED="1272556176199" TEXT="Le probl&#xe8;me du filtrage ou comment trouver des ensembles de sous-termes avec les &#xe9;tapes d&apos;approximation n&#xe9;cessaires &#xe0; les rendre atteignables"/>
<node CREATED="1272556178775" MODIFIED="1272556369768" TEXT="Preuve : quand on a calcul&#xe9; (\sigma, \phi) on a que tout terme t --\phi&apos;--&gt; l\sigma --\phi ----&gt; q alors le terme est atteignable gr&#xe2;ce aux &#xe9;tapes d&apos;approximations \phi /\ \phi&apos;"/>
<node CREATED="1272556376146" FOLDED="true" ID="ID_1090981675" MODIFIED="1274101365231" TEXT="Dans quelle cas la paire critique n&apos;est pas r&#xe9;solue">
<node CREATED="1272556630671" MODIFIED="1272556662403" TEXT="indiquer pourquoi il est n&#xe9;cessaire de d&#xe9;finir des nouveaux cas pour &#xe9;viter la divergence tout en restant correct !"/>
<node CREATED="1272556753590" MODIFIED="1272556766434" TEXT="La nouvelle technique pour v&#xe9;rifier que l&apos;on est clos"/>
<node CREATED="1272556767215" MODIFIED="1272556778392" TEXT="Nouvelle technique de normalisation"/>
<node CREATED="1272556965226" MODIFIED="1272557005503" TEXT="Preuve m&#xea;me genre de preuve que pour le filtrage"/>
</node>
<node CREATED="1272557016604" FOLDED="true" ID="ID_899701706" MODIFIED="1274101365231" TEXT="Conclusion : preuve que l&apos;&#xe9;tape de compl&#xe9;tion est correcte">
<node CREATED="1272557110289" MODIFIED="1272557117874" TEXT="Cl&#xf4;ture sous les contextes"/>
</node>
</node>
<node CREATED="1272557130858" FOLDED="true" ID="ID_191400813" MODIFIED="1274101367911" POSITION="right" TEXT="Test de vacuit&#xe9; de l&apos;intersection">
<node CREATED="1272557205286" MODIFIED="1272557347402" TEXT="Instrumenter pour obtenir un t&#xe9;moin de non-vacuit&#xe9; + les &#xe9;tapes d&apos;approximation utilis&#xe9;es pour le produire \phi"/>
<node CREATED="1272557326900" MODIFIED="1272557378352" TEXT="Soit \phi = T donc le terme est un contre-exemple : le propri&#xe9;t&#xe9; est viol&#xe9;e"/>
<node CREATED="1272557379448" MODIFIED="1272557393433" TEXT="Soit \phi &lt;&gt; T donc il faut raffiner"/>
</node>
<node CREATED="1272557490366" FOLDED="true" ID="ID_321039456" MODIFIED="1274101367912" POSITION="right" TEXT="Principe du raffinement">
<node CREATED="1272557509046" MODIFIED="1272557584364" TEXT="Retirer les transisitions qui ont permis l&apos;introduction du terme dans l&apos;automate ! "/>
<node CREATED="1272557514542" MODIFIED="1272557543384" TEXT="Comment raffiner le plus pr&#xe9;cis&#xe9;ment possible ?"/>
<node CREATED="1272557544217" MODIFIED="1272557556058" TEXT="Pr&#xe9;servement des informations inf&#xe9;r&#xe9;es"/>
<node CREATED="1272557561290" MODIFIED="1272557574548" TEXT="Nettoyage de l&apos;automate"/>
</node>
</node>
</map>
