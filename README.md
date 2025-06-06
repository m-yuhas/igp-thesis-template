# Unofficial IGP Thesis Template
[简体中文](#非官方IGP论文型板) ❀ [Bahasa Melayu](#templat-tesis-igp-tak-rasmi)

This IGP thesis template is based on the unofficial [ASE thesis template](https://www.overleaf.com/latex/templates/phd-thesis-ntu-singapore-asian-school-of-the-environment-unofficial/jgtmdbzcrzzt) by Marciar Rabonza.  Please thank her for doing the heavy lifting.

## Instructions
1. In Github click on "<> Code" and then "Download ZIP."
2. Log into Overleaf and select "New Project" and then "Upload Project."  Select the ZIP file you just downloaded.
3. Update the title and author in ```main.tex```.
4. Add an abstract in ```Intro/abstract.tex```.
5. Add any acknowledgements to ```Intro/acknowledgments.tex```.
6. Add the list of acronyms used in your thesis to ```Intro/acronyms.tex```.
7. Remember to change the text in ```Intro/declarations.tex``` to include your list of publications.  Don't forget to update the signature files in ```Signatures``` with your own.
8. Uncomment and add chapters to ```main.tex``` as needed.
9. Drink some coffee and write!

## Change Log
I have made the following changes from the unofficial ASE template:
* ```NTUASE_MR.cls``` was renamed to ```IGPthesis.cls``` to match IEEE LaTeX file naming scheme.
* The ```IGPthesis``` class can now take four options:
  * ```twosided``` - use this option if you are preparing a PDF for binding.  It will insert blank pages to prevent chapters from starting on even pages.
  * ```ieeebib``` - use this option if you prefer the IEEE citation style.
  * ```kbib``` - use this option if you prefer the AAAI citation style.
  * ```showdiff``` - use this option to modify the behavior of the following change-tracking commands:
    * ```\change{}``` - if ```showdiff``` is present, highlight text in yellow, else do nothing.
    * ```\addition{}``` - if ```showdiff``` is present, highlight text in green, else do nothing.
    * ```\deletion{}``` - if ```showdiff``` is present, strikethrough text in red, else do not display the text.
* Removed the warning when not using XeTeX (breakurl was throwing errors in XeTeX for me, use it at your own risk).
* Modified the cover page to match the example provided by GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Added a title page to match the example provided by GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* The abstract is now formatted in the same way as the declarations and other front matter.
* Added a front matter section for list of acronyms.
* Added an "Other Publications" section for works published during the PhD that are not presented in the thesis.
* Updated the text in the statement of originality, supervisor declaration statement, and authorship attribution statement to match the example provided by GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Rearranged the front matter to match the order recommended by GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Automatically sign the stament of originality, supervisor declaration statement, and authorship attribution statement if you have a transparent PNG or PDF of you and your supervisor's signatures.
* Added proof, theorem, and lemma environments.
* Added examples for subfigures, proofs, theorems, lemmas, and algorithms.

## Licensing
The class file ```IGPthesis.cls``` is distributed under the GNU General Public License (GPL) 3.0.  ```IEEEtran.bst``` and ```kbib.bst``` are distributed under the LaTeX Project Public License (LPPL).  To the best of my knowledge Dr. Rabonza released the original ```*.tex``` files under the Creative Commons CC BY 4.0 and I am releasing any ```*.tex``` files modified by me under the same license.

# 非官方IGP论文型板
本IGP论文型版扩展Marciar Rabonza的非官方[ASE论文型板](https://www.overleaf.com/latex/templates/phd-thesis-ntu-singapore-asian-school-of-the-environment-unofficial/jgtmdbzcrzzt)。请感谢她为她的努力。

## 用法
1. 在Github点击“<> Code”就选择“Download ZIP”。
2. 登录Overleaf就选择“New Project”然后“Upload Project”。选择你刚所下载的ZIP文件。
3. 在```main.tex```更新论文题与作者名。
4. 在```Intro/abstract.tex```加上提要。
5. 在```Intro/acknowledgements.tex```加上任何致谢。
6. 在```Intro/acronyms.tex```加上你论文所用的缩语单。
7. 记得在```Intro/declarations.tex```更新原文为包括你所发表的刊物。不忘记更新在```Signatures```夹的图片为你自己的签名。
8. 在```main.tex```随意加上章节。
9. 喝咖啡就写作！

## 变更日志
用非官方ASE型版为基础我改过如以下：
* ```NTUASE_MR.cls```成为```IGPthesis.cls```为更配合IEEE的LaTeX档案名称系统。
* ```IGPthesis```类现在接受三个可选的选项：
  * ```twosided``` - 使用这个如果你在准备一个为装帧的PDF。它放入空页为避免在偶页起章。
  * ```ieeebib``` - 使用这个如果你宁可用IEEE引文风。
  * ```kbib``` - 使用这个如果你宁可用AAAI引文风。
* 消除不用XeTeX的警告（为我、使用XeTeX编译造成breakurl扔错误）。
* 更改帙页为顺应GC的例子【[一](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)】。
* 加首页为顺应GC的例子【[一](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)】。
* 现在提要章节版式于声明章节等前面实物一样。
* 加缩语单章节于前面实物。
* 加“其他刊物”章节为博士学程当发表但在论文没有介绍的原作。
* 更新原创声明、博士导师声明、与作者归功声明的原文为顺应GC的例子【[一](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)】。
* 改编前面实物为顺应GC所推荐的顺序【[一](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)】。
* 自动签名于原创声明、博士导师声明、与作者归功声明如果你有自己和导师的签名为透光PNG或PDF。
* 加证明、定理、与引理环境。
* 加例子为分形象、证明、定理、引理、与算法环境。

## 许可证信息
类档案```IGPthesis.cls```被发布在GNU通用公共许可证（GPL）3.0版本下。```IEEEtran.bst```与```kbib.bst```被发布在LaTeX项目公共许可证（LPPL）下。据我所知Rabonza博士公开原本```*.tex```档案在知识共享许可协议CC BY 4.0下并且我同样公开我所改变的```*.tex```档案在同一个许可证下。

# Templat Tesis IGP Tak Rasmi
Templat tesis IGP ini berdasarkan [templat tesis ASE](https://www.overleaf.com/latex/templates/phd-thesis-ntu-singapore-asian-school-of-the-environment-unofficial/jgtmdbzcrzzt) tak rasmi oleh Marciar Rabonza.  Sila terima kasih kepadanya untuk angkat berat.

## Arahan
1. Dalam Github klik "<> Code" kemudian "Download ZIP."
2. Log masuk Overleaf dan pilih "New Project" dan kemudian "Upload Project."  Pilih fail ZIP yang anda baru muat turun.
3. Kemas kini tajuk dan pengarang dalam ```main.tex```.
4. Tambah abstrak ke ```Intro/abstract.tex```.
5. Tambah sebarang pengakuan ke ```Intro/acknowledgements.tex```.
6. Tambah senarai akronim yang muncul dalam tesis ke ```Intro/acronyms.tex```.
7. Ingat berubah teks yang terletak di ```Intro/declarations.tex``` untuk memasukkan senarai penerbitan anda.  Jangan lupa kemas kini fail tandatangan dalam ```Signatures``` dengan tandatangan anda.
8. Mengikut keperluan tambah bab baru ke ```main.tex```.
9. Minum kopi dan menulis!

## Log Perubahan
Saya telah membuat perubahan berikut daripada templat ASE tak rasmi:
* ```NTUASE_MR.cls``` menjadi ```IGPthesis.cls``` untuk mematuhi skema penamaan fail LaTeX di IEEE.
* Kelas ```IGPthesis``` sekarang menerima tiga pilihan:
  * ```twosided``` - guna pilihan ini semasa menyiapkan PDF untuk penjilidan.  Ia akan memasukkan muka surat kosong untuk mengelakkan bab bermula dalam muka surat genap.
  * ```ieeebib``` - guna pilihan ini jika suka gaya petikan IEEE.
  * ```kbib``` - guna pilihan ini jika suka gaya petikan AAAI.
* Keluarkan amaran yang berlaku jika tidak menggunakan XeTeX (untuk saya, pakej breakurl melemparkan ralat semasa menyusun dengan XeTeX).
* Mengubahsuai muka depan untuk mengikuti contoh yang disediakan oleh GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Tambah halaman tajuk untuk mengikuti contoh yang disediakan oleh GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Sekarang abstrak diformatkan dengan cara yang sama seperti bahagian pengisytiharan dan perkara hadapan yang lain.
* Tambah bahagian untuk senarai akronim kepada perkara hadapan.
* Tambah bahagian "Penerbitan Lain" untuk karya yang diterbitkan semasa menjalani PhD, tetapi tak dibentangkan dalam tesis ini.
* Kemas kini teks dalam pernyataan keaslian, pernyataan penyelia, dan pernyataan atribusi kepengarangan untuk mengikuti contoh yang disediakan oleh GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Menyusun semula perkara hadapan untuk mengikuti susunan disyorkan oleh GC [[1](<https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx>)].
* Menandatangani secara automatik pernyataan keaslian, pernyataan penyelia, dan pernyataan atribusi kepengarangan jika mempunyai PNG atau PDF telus tandatangan anda dan penyelia anda.
* Tambah persekitaran pembuktian, teorem, dan lemma.
* Tambah contoh untuk subfigure, pembuktian, teorem, lemma, dan algoritma.

## Pelesenan
Fail kelas ```IGPthesis.cls``` diedarkan di bawah Lesen Awam Am GNU (GPL) 3.0.  ```IEEEtran.bst``` dan ```kbib.bst``` diedarkan di bawah Lesen Awam Projek LaTeX (LPPL).  Sepanjang pengetahuan saya Dr. Rabonza mengeluarkan fail ```*.tex``` asli di bawah Creative Commons CC BY 4.0 dan saya juga mengeluarkan sebarang fail ```*.tex``` yang diubahsuai oleh saya di bawah lesen yang sama.
