<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1272362690215" ID="ID_990628975" MODIFIED="1272460509633" TEXT="Plan Th&#xe8;se">
<node CREATED="1272362690215" FOLDED="true" ID="ID_520410080" MODIFIED="1274100730208" POSITION="left" TEXT="Pr&#xe9;requis + D&#xe9;finition">
<node CREATED="1272460407602" ID="ID_182017669" MODIFIED="1272460418546" TEXT="Alg&#xe8;bre de termes"/>
<node CREATED="1272362715824" ID="ID_591323187" MODIFIED="1272362722472" TEXT="R&#xe9;&#xe9;criture"/>
<node CREATED="1272460429944" ID="ID_1267110309" MODIFIED="1272460448136" TEXT="R&#xe9;&#xe9;criture Modulo, th&#xe9;orie Equationnelle"/>
<node CREATED="1272362725420" HGAP="22" ID="ID_355764701" MODIFIED="1272460456973" TEXT="Automates d&apos;arbres" VSHIFT="41"/>
<node CREATED="1272615511087" ID="ID_176834550" MODIFIED="1272892272489" TEXT="La compl&#xe9;tion d&apos;un automate d&apos;arbres">
<node CREATED="1272615545866" ID="ID_1198368446" MODIFIED="1272615551889" TEXT="Pr&#xe9;sentation du probl&#xe8;me"/>
<node CREATED="1272615553323" ID="ID_470794341" MODIFIED="1272615591803" TEXT="D&#xe9;finition d&apos;un automate clos par r&#xe9;&#xe9;criture"/>
<node CREATED="1272615597437" FOLDED="true" ID="ID_1700015760" MODIFIED="1272620231647" TEXT="Preuves de propri&#xe9;t&#xe9;s">
<node CREATED="1272615674098" ID="ID_1496320119" MODIFIED="1272615725123" TEXT="Probl&#xe8;me d&apos;atteignabilit&#xe9; &lt;=&gt; propri&#xe9;t&#xe9; de s&#xe9;curit&#xe9;"/>
</node>
<node CREATED="1272615638791" FOLDED="true" ID="ID_1213149099" MODIFIED="1272892276897" TEXT="Avantages de l&apos;approche">
<node CREATED="1272615653408" FOLDED="true" ID="ID_1634380867" MODIFIED="1272620256675" TEXT="Preuve de programme semi automatique">
<node CREATED="1272615890829" ID="ID_548078749" MODIFIED="1272615935206" TEXT="Compromis : n&#xe9;cessite de fournir des &#xe9;quations pour terminer le calcul !"/>
<node CREATED="1272619861277" ID="ID_1391237305" MODIFIED="1272620248155" TEXT="Mod&#xe9;lisation fid&#xe8;le est relativement ais&#xe9;e">
<node CREATED="1272619920104" ID="ID_1034886776" MODIFIED="1272620013789" TEXT="Les syst&#xe8;mes de r&#xe9;&#xe9;criture sont un bon mod&#xe8;le de calcul (turing complet)"/>
<node CREATED="1272620032006" ID="ID_217770402" MODIFIED="1272620083849" TEXT="Il est facile de mod&#xe9;liser des langages de programmations (ex : protocoles crypto, Java ...)"/>
</node>
</node>
<node CREATED="1272615746157" ID="ID_473769573" MODIFIED="1272620253414" TEXT="Entre la preuve &#xe0; la main">
<node CREATED="1272615785976" ID="ID_51227647" MODIFIED="1272615802312" TEXT="Difficile, long, niveau d&apos;expertise important"/>
</node>
<node CREATED="1272615753197" FOLDED="true" ID="ID_83800638" MODIFIED="1272615886460" TEXT="Et la preuve compl&#xe8;tement automatique MC classique">
<node CREATED="1272615805120" ID="ID_1456458215" MODIFIED="1272615826643" TEXT="Totalement Automatique"/>
<node CREATED="1272615827178" ID="ID_653562272" MODIFIED="1272615834929" TEXT="Plus simple &#xe0; mettre en oeuvre"/>
<node CREATED="1272615835418" ID="ID_1563092111" MODIFIED="1272615879356" TEXT="Classe des probl&#xe8;mes bcp plus restreinte"/>
</node>
</node>
<node CREATED="1272620341719" ID="ID_1024942255" MODIFIED="1272620366104" TEXT="D&#xe9;finition de l&apos;algorithme">
<node CREATED="1272620516008" FOLDED="true" ID="ID_872570989" MODIFIED="1273667995900" TEXT="D&#xe9;finition d&apos;une paire ciritique entre \Delta et \R">
<node CREATED="1272620547242" ID="ID_1791491092" MODIFIED="1272620697754" TEXT="Un terme peut &#xea;tre &#xe0; la fois r&#xe9;&#xe9;crit par \R et reconnu en q, c&apos;est &#xe0; dire r&#xe9;&#xe9;crit par\Delta en q"/>
<node CREATED="1272620699954" ID="ID_1538489669" MODIFIED="1273154338397">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Pour compl&#233;ter l'automate, il faut rechercher les termes de reconnus par l'automate A, qui peuvent &#234;tre r&#233;&#233;crits par \R
    </p>
    <p>
      mais dont l'image n'est pas reconnue par A.
    </p>
    <p>
      %%% Utile ou pas ?
    </p>
    <p>
      La compl&#233;tion consiste alors &#224; ajouter des transitions &#224; A permettant d'int&#233;grer
    </p>
    <p>
      cette image au langage reconnu par A.
    </p>
    <p>
      
    </p>
    <p>
      Chercher les termes de \lang(A) qui peuvent &#234;tre r&#233;&#233;crits par \R se caract&#233;risent de la mani&#232;re suivante.
    </p>
    <p>
      A la position p, on a le sous-terme $t|_p = l\sigma$ qui est r&#233;&#233;crit&#160;par la r&#232;lge l-&gt;r pour
    </p>
    <p>
      donner le terme $t[r\sigma]_p$.
    </p>
    <p>
      Puisque l'on a $t ---&gt;\Delta^* q$, on peut d&#233;composer la reconnaissance
    </p>
    <p>
      de telle sorte que $t ---&gt;\Delta^* t[q']_p ---&gt;\Delta^* q$
    </p>
    <p>
      Ce qui veut dire que finalement on veut comp&#233;ter l'automate A de mani&#232;re &#224;
    </p>
    <p>
      ce que le langage caract&#233;ris&#233; en q' contienne le terme $r\sigma$.
    </p>
    <p>
      Ainsi le terme $t[r\sigma]_p$ sera alors reconnu par A.
    </p>
    <p>
      
    </p>
    <p>
      Rechercher les termes qui se r&#233;&#233;crivent par \R, revient &#224; rechercher tous
    </p>
    <p>
      les sous-termes (stricts ou non) qui se r&#233;&#233;crivent en t&#234;te (position \lambda).
    </p>
    <p>
      Cette vision plus locale du probl&#232;me revient ainsi &#224; chercher pour chaque
    </p>
    <p>
      chaque &#233;tat $q$ de tels termes, ce qui nous am&#232;ne &#224; un probl&#232;me
    </p>
    <p>
      de recherche de paire critique de la forme (o&#249; l---&gt;r \in \R):
    </p>
    <p>
      %%%%%%%% TODO Sch&#233;ma de la paire critique %%%%%%%%%%%%%%%
    </p>
    <p>
      
    </p>
    <p>
      La paire critique est r&#233;solue en ajoutant &#224; l'automate la transition permettant
    </p>
    <p>
      de reconna&#238;tre le terme produit par r&#233;&#233;criture, ce qui correspond &#224; une &#233;tape de
    </p>
    <p>
      compl&#233;tion pour l'automate A:
    </p>
    <p>
      %%%%%%%% TODO Sch&#233;ma de la paire critique r&#233;solue %%%%%%%%%%%%%%%
    </p>
    <p>
      
    </p>
    <p>
      Consid&#233;rons l'ensemble des termes de reconnus en q' qui peut &#234;tre r&#233;&#233;crit &#224; la position \lambda
    </p>
    <p>
      par la r&#232;gle $l \rw r$. Cet ensemble peut-&#234;tre infini : en effet dans l'exemple \ref{exemple_auto_a_faire}, on peut voir que
    </p>
    <p>
      c'est effectivement le cas pour la r&#232;gle f(g(x), y) ---&gt; h(x) o&#249; &#224; l'&#233;tat $q'$, une infinit&#233; de termes peut &#234;tre &#160;
    </p>
    <p>
      r&#233;&#233;crite. Au lieu de cela on va r&#233;&#233;crire des &quot;paquets&quot; de termes en r&#233;&#233;crivant des configurations de l'automates:
    </p>
    <p>
      Exemple :
    </p>
    <p>
      f(g(q_a), q_b)&#160;&#160;-----&gt; h(h(q_a))
    </p>
    <p>
      et&#160;\lang(A, f(g(q_a), q_b)) est infini, l'ensemble de termes qui se r&#233;&#233;crivent en q_a &#233;tant infini. Pour la m&#234;me
    </p>
    <p>
      raison, la configuration obtenue $h(h(q_a))$ par r&#233;&#233;criture caract&#233;rise un langage infini&#160;&#160;$\lang(A, h(h(q_a)) )$
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1273150872919" FOLDED="true" ID="ID_1860905916" MODIFIED="1273667997521" TEXT="R&#xe9;solution d&apos;une paire critique">
<node CREATED="1273150891256" ID="ID_1203405802" MODIFIED="1273161485123">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Une paire critique est&#160;&#160;r&#233;solue par en ajoutant la transition&#160;$r\sigma \rw q$ &#224; l'automate $\aaex^i$,
    </p>
    <p>
      ce qui va nous donner une nouvel automate $\aaex^{i+1}$ tel que :
    </p>
    <p>
      
    </p>
    <p>
      %%%%%%%%%%%%%%%% Sch&#233;ma de la paire critique r&#233;solue pour $\aaex^{i + 1}$ %%%%%%%%%%%%%%%%%%%
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Or les transitions d'un automate d'arbres doivent &#234;tre normalis&#233;es par d&#233;finition \ref{def_trans_normal}.
    </p>
    <p>
      or ce n'est pas toujours le cas : dans l'exemple \ref{ex_compl} $h(h(q_a)) \rw q$, la hauteur du membre gauche
    </p>
    <p>
      est clairement sup&#233;rieur &#224; 1... La transition doit subir une &#233;tape de \emph{normalisation} qui consiste &#224; transformer
    </p>
    <p>
      &#224; produire un ensemble de transitions normalis&#233;es et &#233;quivalentes d'un point de vue s&#233;mantique.
    </p>
    <p>
      
    </p>
    <p>
      &#160;Dans l'exemple \ref{ex_normal}, on propose un tel ensemble pour la transition $h(h(q_a)) \rw q$. On peut d'ailleurs voir que l'on a eu recours &#224; un nouvel &#233;tat $q_h$
    </p>
    <p>
      
    </p>
    <p>
      %%%%%%%%%%%%%%%% Exemple de la normalisation de la transition %%%%%%%%%%%%%%%%%%%%%%%%%%
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Thm de correction concernant le filtrage + normalisation
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Thm de correction cloture de la r&#233;&#233;criture dans un contexte donn&#233;....
    </p>
    <p>
      t \in lang(\aaex^i, q) /\ t -&gt;{l-&gt;r} t' ===&gt; t \in lang(\aaex^i+1, q)
    </p>
    <p>
      %%% A VERIFIER.... %%%%
    </p>
    <p>
      
    </p>
    <p>
      En fait de mani&#232;re g&#233;n&#233;rale, l'&#233;quivalence est un crit&#232;re trop fort pour assurer la terminaison du processus de compl&#233;tion de l'automate.
    </p>
    <p>
      Dans la suite, l'&#233;quivalence sera remplac&#233;e (affaiblie) par l'inclusion de langages ce qui permet de permettra de d&#233;finir des strat&#233;gies de normalisation. En jouant ainsi, il est possible d'assurer la terminaison du calcul du point fixe pour certaines classes de syst&#232;mes de r&#233;&#233;criture comme d&#233;taill&#233; dans \cite{HDR_Genet}.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1273668001909" ID="ID_1968681806" MODIFIED="1273668045846" TEXT="Terminaison, Approximation, Equation">
<node CREATED="1273668067922" ID="ID_1798065361" MODIFIED="1273668091104" TEXT="Exemple de divergence"/>
<node CREATED="1273668105141" ID="ID_9846444" MODIFIED="1273668957232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      N&#233;cessite une strat&#233;gie pour forcer la terminaison. Elles sont calcul&#233;es &#224; la main
    </p>
    <p>
      et donn&#233;es &#224; l'utilisateur pour un probl&#232;me donn&#233;....
    </p>
    <p>
      Exemple de r&#232;gle de normalisation
    </p>
    <p>
      
    </p>
    <p>
      %%%%% DEMANDER UN EXEMPLE &#224; THOMAS.
    </p>
    <p>
      
    </p>
    <p>
      Limitations : une approximation d&#233;crite au moyen de r&#232;gles de normalisation est difficile &#224; lire et n&#233;cessite
    </p>
    <p>
      de conna&#238;tre la structure de l'automate pour comprendre comment elles s'appliquent.
    </p>
  </body>
</html></richcontent>
<node CREATED="1273668182330" ID="ID_849739128" MODIFIED="1273668195973" TEXT="Bas&#xe9;e sur la fusion d&apos;&#xe9;tat"/>
<node CREATED="1273668196576" ID="ID_1020000326" MODIFIED="1273668252369" TEXT="La strat&#xe9;gie est d&#xe9;crite au moyen de r&#xe8;gles de normalisation "/>
</node>
<node CREATED="1273668961019" ID="ID_925750696" MODIFIED="1273674609703">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Les abstractions par pr&#233;dicats:
    </p>
    <p>
      L'abstraction est d&#233;finie par un ensemble de pr&#233;dicats que l'on nommera P.
    </p>
    <p>
      Ce type d'abstractions couramment utilis&#233;e en model-checking, pour les syst&#232;mes
    </p>
    <p>
      o&#249; l'ensemble des &#233;tats est infini : Les pr&#233;dicats permettent une partition finie
    </p>
    <p>
      de cet ensemble. Les classes d'&#233;quivalence sont construites en utili
    </p>
    <p>
      Soit P un ensemble de pr&#233;dicats. Alors
    </p>
    <p>
      
    </p>
    <p>
      \forall p \in P, &#160;\forall t1 t2, p(s1) =&gt; p(s2) =&gt; s1 = s2
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      (Abstract Regular ModelChecking...) utilise des langages r&#233;guliers pour
    </p>
    <p>
      d&#233;finir ses pr&#233;dicats P(u) &lt;=&gt; u \in L_P
    </p>
    <p>
      
    </p>
    <p>
      Les abstractions equationnelles:
    </p>
    <p>
      d&#233;finies
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Introduites entre autres
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1272460514485" HGAP="11" ID="ID_1325583371" MODIFIED="1273133854808" POSITION="right" TEXT="Model-checking" VSHIFT="-7">
<node CREATED="1272460627732" FOLDED="true" HGAP="22" ID="ID_920978556" MODIFIED="1274100727088" TEXT="Preuves de Propri&#xe9;t&#xe9;s temporelles sur des syst&#xe8;mes de r&#xe9;&#xe9;criture" VSHIFT="81">
<node CREATED="1273140302216" ID="ID_1608130371" MODIFIED="1273150755527" TEXT="Objectifs pouvoir prouver des propri&#xe9;t&#xe9;s plus fines sur des syst&#xe8;mes">
<node CREATED="1273140385372" ID="ID_305800607" MODIFIED="1273667941257" TEXT="Exemples de propri&#xe9;t&#xe9;s que l&apos;on aimerait pouvoir prouver pdt l&apos;execution du programme">
<node CREATED="1273140400548" ID="ID_684505137" MODIFIED="1273140570879" TEXT="suret&#xe9; : If No =&gt; Never no msg sent"/>
<node CREATED="1273140526884" ID="ID_1237435676" MODIFIED="1273140565352" TEXT="Vivacit&#xe9; : If Yes =&gt; It always happens  sent msg"/>
<node CREATED="1273140631186" ID="ID_1680947662" MODIFIED="1273140631186" TEXT=""/>
</node>
</node>
</node>
<node CREATED="1274100310930" ID="ID_534844252" LINK="plan_contre_ex.mm" MODIFIED="1274100870470" TEXT="Vous avez dit Contre-exemple ?"/>
<node CREATED="1272362743885" FOLDED="true" ID="ID_234016248" MODIFIED="1274100128352" TEXT="Logique temporelle" VSHIFT="-159">
<node CREATED="1272378248048" ID="ID_114280820" MODIFIED="1272378253771" TEXT="LTL"/>
<node CREATED="1272378257974" ID="ID_975843883" MODIFIED="1272378275269" TEXT="Pr&#xe9;sentation des diff&#xe9;rents op&#xe9;rateurs"/>
<node CREATED="1272460219317" ID="ID_1587125091" MODIFIED="1272460230277" TEXT="Lien entre logique et automates de Buchi"/>
</node>
</node>
</node>
</map>
