Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4FB240B1E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 18:24:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00385880D9;
	Mon, 10 Aug 2020 16:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2VYW01+iDao; Mon, 10 Aug 2020 16:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E80087CD4;
	Mon, 10 Aug 2020 16:24:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 774921BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 16:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 682FD868BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 16:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EX29Bh-JIPa8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 16:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9D2718577C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 16:24:14 +0000 (UTC)
IronPort-SDR: U+ykjAzOroLw10Sq2Z9WjDP+1t/MMT2ej0/+rVLt4eZ38+quyhsYTwtfr0/+3dZb7AhWw2xDau
 cIgsBqPacC8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="133621630"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="133621630"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 09:24:13 -0700
IronPort-SDR: x8Z51hD6No9fEnh/j7OSaFrhRzmlWv6HKLOOaC1JtiNJNCnz0BGEb1Gq+7YvEYcRxr7V19q2SU
 HrJ/JDeeKktg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="494853654"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2020 09:24:12 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Aug 2020 09:19:27 -0700
Message-Id: <20200810161927.3874-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.13.0
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9062786917416670419=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============9062786917416670419==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Update the package file for the ice driver to 1.3.13.0. Also update the
license file to reflect licensing changes.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 LICENSE.ice                                   |  77 +++++++++---------
 WHENCE                                        |   4 +-
 .../ddp/{ice-1.3.4.0.pkg =3D> ice-1.3.13.0.pkg} | Bin 577796 -> 663812 byt=
es
 3 files changed, 40 insertions(+), 41 deletions(-)
 rename intel/ice/ddp/{ice-1.3.4.0.pkg =3D> ice-1.3.13.0.pkg} (52%)

diff --git a/LICENSE.ice b/LICENSE.ice
index 497ee18b17bc..499f7da75f63 100644
--- a/LICENSE.ice
+++ b/LICENSE.ice
@@ -1,39 +1,38 @@
-Copyright (c) 2019, Intel Corporation.
-All rights reserved.
-
-Redistribution.  Redistribution and use in binary form, without
-modification, are permitted provided that the following conditions are
-met:
-
-* Redistributions must reproduce the above copyright notice and the
-  following disclaimer in the documentation and/or other materials
-  provided with the distribution.
-* Neither the name of Intel Corporation nor the names of its suppliers
-  may be used to endorse or promote products derived from this software
-  without specific prior written permission.
-* No reverse engineering, decompilation, or disassembly of this software
-  is permitted.
-
-Limited patent license.  Intel Corporation grants a world-wide,
-royalty-free, non-exclusive license under patents it now or hereafter
-owns or controls to make, have made, use, import, offer to sell and
-sell ("Utilize") this software, but solely to the extent that any
-such patent is necessary to Utilize the software alone, or in
-combination with an operating system licensed under an approved Open
-Source license as listed by the Open Source Initiative at
-http://opensource.org/licenses.  The patent license shall not apply to
-any other combinations which include this software.  No hardware per
-se is licensed hereunder.
-
-DISCLAIMER.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
-CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
-BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
-FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
-COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
-INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
-BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
-OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
-DAMAGE.
+SOFTWARE LICENSE AGREEMENT
+DO NOT DOWNLOAD, INSTALL, ACCESS, COPY, OR USE ANY PORTION OF THE SOFTWARE=
 UNTIL YOU HAVE READ AND ACCEPTED THE TERMS AND CONDITIONS OF THIS AGREEMEN=
T. BY INSTALLING, COPYING, ACCESSING, OR USING THE SOFTWARE, YOU AGREE TO B=
E LEGALLY BOUND BY THE TERMS AND CONDITIONS OF THIS AGREEMENT. If You do no=
t agree to be bound by, or the entity for whose benefit You act has not aut=
horized You to accept, these terms and conditions, do not install, access, =
copy, or use the Software and destroy all copies of the Software in Your po=
ssession. This SOFTWARE LICENSE AGREEMENT (this "Agreement") is entered int=
o between Intel Corporation, a Delaware corporation ("Intel") and You. "You=
" refers to you or your employer or other entity for whose benefit you act,=
 as applicable. If you are agreeing to the terms and conditions of this Agr=
eement on behalf of a company or other legal entity, you represent and warr=
ant that you have the legal authority to bind that legal entity to the Agre=
ement, in which case, "You" or "Your" shall be in reference to such entity.=
 Intel and You are referred to herein individually as a "Party" or, togethe=
r, as the "Parties". The Parties, in consideration of the mutual covenants =
contained in this Agreement, and for other good and valuable consideration,=
 the receipt and sufficiency of which they acknowledge, and intending to be=
 legally bound, agree as follows:
+1.	PURPOSE. You seek to obtain, and Intel desires to provide You, under th=
e terms of this Agreement, Software solely for Your efforts to develop and =
distribute products integrating Intel hardware and Intel software. "Softwar=
e" refers to certain software or other collateral, including, but not limit=
ed to, related components, operating system, application program interfaces=
, device drivers, associated media, printed or electronic documentation and=
 any updates, upgrades or releases thereto associated with Intel product(s)=
, software or service(s). "Intel-based product" refers to a device that inc=
ludes, incorporates, or implements Intel product(s), software or service(s).
+2.	LIMITED LICENSE. Conditioned on Your compliance with the terms and cond=
itions of this Agreement, Intel grants to You a limited, nonexclusive, nont=
ransferable, revocable, worldwide, fully paid-up license during the term of=
 this Agreement, without the right to sublicense, under Intel's copyrights =
(subject to any third party licensing requirements), to (i) internally prep=
are derivative works (as defined in 17 U.S.C. =A7 101) of the Software ("De=
rivatives"), if provided or otherwise made available by Intel in source cod=
e form, and reproduce the Software, including Derivatives, in each case onl=
y for Your own internal evaluation, testing, validation, and development of=
 Intel-based products and any associated maintenance thereof; (ii) reproduc=
e, display, and publicly perform an object code representation of the Softw=
are, including Your Derivatives, in each case only when integrated with and=
 executed by an Intel-based product, subject to any third party licensing r=
equirements; and (iii) distribute an object code representation of the Soft=
ware, provided by Intel, or of any Derivatives created by You, solely as em=
bedded in or for execution on an Intel-based product, and if to an end user=
, pursuant to a license agreement with terms and conditions at least as res=
trictive as those contained in the Intel End User Software License Agreemen=
t in Appendix A hereto. If You are not the final manufacturer or vendor of =
an Intel-based product incorporating or designed to incorporate the Softwar=
e, You may transfer a copy of the Software, including any Derivatives (and =
related end user documentation) created by You to Your Original Equipment M=
anufacturer (OEM), Original Device Manufacturer (ODM), distributors, or sys=
tem integration partners ("Your Partner") for use in accordance with the te=
rms and conditions of this Agreement, provided Your Partner agrees to be fu=
lly bound by the terms hereof and provided that You will remain fully liabl=
e to Intel for the actions and inactions of Your Partner(s).
+3.	LICENSE RESTRICTIONS. All right, title and interest in and to the Softw=
are and associated documentation are and will remain the exclusive property=
 of Intel and its licensors or suppliers. Unless expressly permitted under =
the Agreement, You will not, and will not allow any third party to (i) use,=
 copy, distribute, sell or offer to sell the Software or associated documen=
tation; (ii) modify, adapt, enhance, disassemble, decompile, reverse engine=
er, change or create derivative works from the Software except and only to =
the extent as specifically required by mandatory applicable laws or any app=
licable third party license terms accompanying the Software; (iii) use or m=
ake the Software available for the use or benefit of third parties; or (iv)=
 use the Software on Your products other than those that include the Intel =
hardware product(s), platform(s), or software identified in the Software; o=
r (v) publish or provide any Software benchmark or comparison test results.=
 You acknowledge that an essential basis of the bargain in this Agreement i=
s that Intel grants You no licenses or other rights including, but not limi=
ted to, patent, copyright, trade secret, trademark, trade name, service mar=
k or other intellectual property licenses or rights with respect to the Sof=
tware and associated documentation, by implication, estoppel or otherwise, =
except for the licenses expressly granted above. You acknowledge there are =
significant uses of the Software in its original, unmodified and uncombined=
 form. You may not remove any copyright notices from the Software.
+4.	LICENSE TO FEEDBACK. This Agreement does not obligate You to provide In=
tel with materials, information, comments, suggestions, Your Derivatives or=
 other communication regarding the features, functions, performance or use =
of the Software ("Feedback"). If any portion of the Software is provided or=
 otherwise made available by Intel in source code form, to the extent You p=
rovide Intel with Feedback in a tangible form, You grant to Intel and its a=
ffiliates a non-exclusive, perpetual, sublicenseable, irrevocable, worldwid=
e, royalty-free, fully paid-up and transferable license, to and under all o=
f Your intellectual property rights, whether perfected or not, to publicly =
perform, publicly display, reproduce, use, make, have made, sell, offer for=
 sale, distribute, import, create derivative works of and otherwise exploit=
 any comments, suggestions, descriptions, ideas, Your Derivatives or other =
feedback regarding the Software provided by You or on Your behalf.
+5.	OPEN SOURCE STATEMENT. The Software may include Open Source Software (O=
SS) licensed pursuant to OSS license agreement(s) identified in the OSS com=
ments in the applicable source code file(s) or file header(s) provided with=
 or otherwise associated with the Software. Neither You nor any OEM, ODM, c=
ustomer, or distributor may subject any proprietary portion of the Software=
 to any OSS license obligations including, without limitation, combining or=
 distributing the Software with OSS in a manner that subjects Intel, the So=
ftware or any portion thereof to any OSS license obligation. Nothing in thi=
s Agreement limits any rights under, or grants rights that supersede, the t=
erms of any applicable OSS license.
+6.	THIRD PARTY SOFTWARE. Certain third party software provided with or wit=
hin the Software may only be used (a) upon securing a license directly from=
 the owner of the software or (b) in combination with hardware components p=
urchased from such third party and (c) subject to further license limitatio=
ns by the software owner. A listing of any such third party limitations is =
in one or more text files accompanying the Software. You acknowledge Intel =
is not providing You with a license to such third party software and furthe=
r that it is Your responsibility to obtain appropriate licenses from such t=
hird parties directly.
+7.	CONFIDENTIALITY. The terms and conditions of this Agreement, exchanged =
confidential information, as well as the Software are subject to the terms =
and conditions of the Non-Disclosure Agreement(s) or Intel Pre-Release Loan=
 Agreement(s) (referred to herein collectively or individually as "NDA") en=
tered into by and in force between Intel and You, and in any case no less c=
onfidentiality protection than You apply to Your information of similar sen=
sitivity. If You would like to have a contractor perform work on Your behal=
f that requires any access to or use of Software, You must obtain a written=
 confidentiality Intel Confidential Information 10.24.2016 agreement from t=
he contractor which contains terms and conditions with respect to access to=
 or use of Software no less restrictive than those set forth in this Agreem=
ent, excluding any distribution rights and use for any other purpose, and Y=
ou will remain fully liable to Intel for the actions and inactions of those=
 contractors. You may not use Intel's name in any publications, advertiseme=
nts, or other announcements without Intel's prior written consent.
+8.	NO OBLIGATION; NO AGENCY. Intel may make changes to the Software, or it=
ems referenced therein, at any time without notice. Intel is not obligated =
to support, update, provide training for, or develop any further version of=
 the Software or to grant any license thereto. No agency, franchise, partne=
rship, jointventure, or employee-employer relationship is intended or creat=
ed by this Agreement.
+9.	EXCLUSION OF WARRANTIES. THE SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY E=
XPRESS OR IMPLIED WARRANTY OF ANY KIND INCLUDING WARRANTIES OF MERCHANTABIL=
ITY, NONINFRINGEMENT, OR FITNESS FOR A PARTICULAR PURPOSE. Intel does not w=
arrant or assume responsibility for the accuracy or completeness of any inf=
ormation, text, graphics, links or other items within the Software.
+10.	LIMITATION OF LIABILITY. IN NO EVENT WILL INTEL OR ITS AFFILIATES, LIC=
ENSORS OR SUPPLIERS (INCLUDING THEIR RESPECTIVE DIRECTORS, OFFICERS, EMPLOY=
EES, AND AGENTS) BE LIABLE FOR ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT L=
IMITATION, LOST PROFITS, BUSINESS INTERRUPTION, OR LOST DATA) ARISING OUT O=
F OR IN RELATION TO THIS AGREEMENT, INCLUDING THE USE OF OR INABILITY TO US=
E THE SOFTWARE, EVEN IF INTEL HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH D=
AMAGES. SOME JURISDICTIONS PROHIBIT EXCLUSION OR LIMITATION OF LIABILITY FO=
R IMPLIED WARRANTIES OR CONSEQUENTIAL OR INCIDENTAL DAMAGES, SO THE ABOVE L=
IMITATION MAY IN PART NOT APPLY TO YOU. THE SOFTWARE LICENSED HEREUNDER IS =
NOT DESIGNED OR INTENDED FOR USE IN ANY MEDICAL, LIFE SAVING OR LIFE SUSTAI=
NING SYSTEMS, TRANSPORTATION SYSTEMS, NUCLEAR SYSTEMS, OR FOR ANY OTHER MIS=
SION CRITICAL APPLICATION IN WHICH THE FAILURE OF THE SOFTWARE COULD LEAD T=
O PERSONAL INJURY OR DEATH. YOU MAY ALSO HAVE OTHER LEGAL RIGHTS THAT VARY =
FROM JURISDICTION TO JURISDICTION. THE LIMITED REMEDIES, WARRANTY DISCLAIME=
R AND LIMITED LIABILITY ARE FUNDAMENTAL ELEMENTS OF THE BASIS OF THE BARGAI=
N BETWEEN INTEL AND YOU. YOU ACKNOWLEDGE INTEL WOULD BE UNABLE TO PROVIDE T=
HE SOFTWARE WITHOUT SUCH LIMITATIONS. YOU WILL INDEMNIFY AND HOLD INTEL AND=
 ITS AFFILIATES, LICENSORS AND SUPPLIERS (INCLUDING THEIR RESPECTIVE DIRECT=
ORS, OFFICERS, EMPLOYEES, AND AGENTS) HARMLESS AGAINST ALL CLAIMS, LIABILIT=
IES, LOSSES, COSTS, DAMAGES, AND EXPENSES (INCLUDING REASONABLE ATTORNEY FE=
ES), ARISING OUT OF, DIRECTLY OR INDIRECTLY, THE DISTRIBUTION OF THE SOFTWA=
RE AND ANY CLAIM OF PRODUCT LIABILITY, PERSONAL INJURY OR DEATH ASSOCIATED =
WITH ANY UNINTENDED USE, EVEN IF SUCH CLAIM ALLEGES THAT INTEL OR AN INTEL =
AFFILIATE, LICENSORS OR SUPPLIER WAS NEGLIGENT REGARDING THE DESIGN OR MANU=
FACTURE OF THE SOFTWARE.
+11.	TERMINATION AND SURVIVAL. Intel may terminate this Agreement for any r=
eason with thirty (30) days' notice and immediately if You or someone actin=
g on Your behalf or at Your behest violates any of its terms or conditions.=
 Upon termination, You will immediately destroy and ensure the destruction =
of the Software or return all copies of the Software to Intel (including pr=
oviding certification of such destruction or return back to Intel). Upon te=
rmination of this Agreement, all licenses granted to You hereunder terminat=
e immediately. All Sections of this Agreement, except Section 2, will survi=
ve termination.
+12.	GOVERNING LAW AND JURISDICTION. This Agreement and any dispute arising=
 out of or relating to it will be governed by the laws of the U.S.A. and De=
laware, without regard to conflict of laws principles. The Parties exclude =
the application of the United Nations Convention on Contracts for the Inter=
national Sale of Goods (1980). The state and federal courts sitting in Dela=
ware, U.S.A. will have exclusive jurisdiction over any dispute arising out =
of or relating to this Agreement. The Parties consent to personal jurisdict=
ion and venue in those courts. A Party that obtains a judgment against the =
other Party in the courts identified in this section may enforce that judgm=
ent in any court that has jurisdiction over the Parties.
+13.	EXPORT REGULATIONS/EXPORT CONTROL. You agree that neither You nor Your=
 subsidiaries will export/re-export the Software, directly or indirectly, t=
o any country for which the U.S. Department of Commerce or any other agency=
 or department of the U.S. Government or the foreign government from where =
it is shipping requires an export license, or other governmental approval, =
without first obtaining any such required license or approval. In the event=
 the Software is exported from the U.S.A. or re-exported from a foreign des=
tination by You or Your subsidiary, You will ensure that the distribution a=
nd export/re-export or import of the Software complies with all laws, regul=
ations, orders, or other restrictions of the U.S. Export Administration Reg=
ulations and the appropriate foreign government.
+14.	GOVERNMENT RESTRICTED RIGHTS. The Software is a commercial item (as de=
fined in 48 C.F.R. 2.101) consisting of commercial computer software and co=
mmercial computer software documentation (as those terms are used in 48 C.F=
.R. 12.212). Consistent with 48 C.F.R. 12.212 and 48 C.F.R 227.7202- 1 thro=
ugh 227.7202-4, You will not provide the Software to the U.S. Government. C=
ontractor or Manufacturer is Intel Corporation, 2200 Mission College Blvd.,=
 Santa Clara, CA 95054.
+15.	ASSIGNMENT. You may not delegate, assign or transfer this Agreement, t=
he license(s) granted or any of Your rights or duties hereunder, expressly,=
 by implication, by operation of law, or otherwise and any attempt to do so=
, without Intel's express prior written consent, will be null and void. Int=
el may assign, delegate and transfer this Agreement, and its rights and obl=
igations hereunder, in its sole discretion.
+16.	ENTIRE AGREEMENT; SEVERABILITY. The terms and conditions of this Agree=
ment and any NDA with Intel constitute the entire agreement between the par=
ties with respect to the subject matter hereof, and merge and supersede all=
 prior or contemporaneous agreements, understandings, negotiations and disc=
ussions. Neither Party will be bound by any terms, conditions, definitions,=
 warranties, understandings, or representations with respect to the subject=
 matter hereof other than as expressly provided herein. In the event any pr=
ovision of this Agreement is unenforceable or invalid under any applicable =
law or applicable court decision, such unenforceability or invalidity will =
not render this Agreement unenforceable or invalid as a whole, instead such=
 provision will be changed and interpreted so as to best accomplish the obj=
ectives of such provision within legal limits.
+17.	WAIVER. The failure of a Party to require performance by the other Par=
ty of any provision hereof will not affect the full right to require such p=
erformance at any time thereafter; nor will waiver by a Party of a breach o=
f any provision hereof constitute a waiver of the provision itself. 18. PRI=
VACY. YOUR PRIVACY RIGHTS ARE SET FORTH IN INTEL'S PRIVACY NOTICE, WHICH FO=
RMS A PART OF THIS AGREEMENT. PLEASE REVIEW THE PRIVACY NOTICE AT HTTP://WW=
W.INTEL.COM/PRIVACY TO LEARN HOW INTEL COLLECTS, USES AND SHARES INFORMATIO=
N ABOUT YOU. Intel Confidential Information 10.24.2016
+APPENDIX A
+INTEL END USER SOFTWARE LICENSE AGREEMENT
+IMPORTANT - READ BEFORE COPYING, INSTALLING OR USING.
+THE FOLLOWING NOTICE, OR TERMS AND CONDITIONS SUBSTANTIALLY IDENTICAL IN N=
ATURE AND EFFECT, MUST APPEAR IN THE DOCUMENTATION ASSOCIATED WITH THE INTE=
L-BASED PRODUCT INTO WHICH THE SOFTWARE IS INSTALLED. MINIMALLY, SUCH NOTIC=
E MUST APPEAR IN THE USER GUIDE FOR THE PRODUCT. THE TERM "LICENSEE" IN THI=
S TEXT REFERS TO THE END USER OF THE PRODUCT.
+LICENSE. Licensee has a license under Intel's copyrights to reproduce Inte=
l's Software only in its unmodified and binary form, (with the accompanying=
 documentation, the "Software") for Licensee's personal use only, and not c=
ommercial use, in connection with Intel-based products for which the Softwa=
re has been provided, subject to the following conditions:
+(a) Licensee may not disclose, distribute or transfer any part of the Soft=
ware, and You agree to prevent unauthorized copying of the Software.
+(b) Licensee may not reverse engineer, decompile, or disassemble the Softw=
are.
+(c) Licensee may not sublicense the Software.
+(d) The Software may contain the software and other intellectual property =
of third party suppliers, some of which may be identified in, and licensed =
in accordance with, an enclosed license.txt file or other text or file.
+(e) Intel has no obligation to provide any support, technical assistance o=
r updates for the Software.
+OWNERSHIP OF SOFTWARE AND COPYRIGHTS. Title to all copies of the Software =
remains with Intel or its licensors or suppliers. The Software is copyright=
ed and protected by the laws of the United States and other countries, and =
international treaty provisions. Licensee may not remove any copyright noti=
ces from the Software. Except as otherwise expressly provided above, Intel =
grants no express or implied right under Intel patents, copyrights, tradema=
rks, or other intellectual property rights. Transfer of the license termina=
tes Licensee's right to use the Software.
+DISCLAIMER OF WARRANTY. The Software is provided "AS IS" without warranty =
of any kind, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, WARRA=
NTIES OF MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE.
+LIMITATION OF LIABILITY. NEITHER INTEL NOR ITS LICENSORS OR SUPPLIERS WILL=
 BE LIABLE FOR ANY LOSS OF PROFITS, LOSS OF USE, INTERRUPTION OF BUSINESS, =
OR INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES OF ANY KIND WHET=
HER UNDER THIS AGREEMENT OR OTHERWISE, EVEN IF INTEL HAS BEEN ADVISED OF TH=
E POSSIBILITY OF SUCH DAMAGES.
+LICENSE TO USE COMMENTS AND SUGGESTIONS. This Agreement does NOT obligate =
Licensee to provide Intel with comments or suggestions regarding the Softwa=
re. However, if Licensee provides Intel with comments or suggestions for th=
e modification, correction, improvement or enhancement of (a) the Software =
or (b) Intel products or processes that work with the Software, Licensee gr=
ants to Intel a non-exclusive, worldwide, perpetual, irrevocable, transfera=
ble, royalty-free license, with the right to sublicense, under Licensee's i=
ntellectual property rights, to incorporate or otherwise utilize those comm=
ents and suggestions.
+TERMINATION OF THIS LICENSE. Intel or the sublicensor may terminate this l=
icense at any time if Licensee is in breach of any of its terms or conditio=
ns. Upon termination, Licensee will immediately destroy or return to Intel =
all copies of the Software.
+THIRD PARTY BENEFICIARY. Intel is an intended beneficiary of the End User =
License Agreement and has the right to enforce all of its terms.
+U.S. GOVERNMENT RESTRICTED RIGHTS. The Software is a commercial item (as d=
efined in 48 C.F.R. 2.101) consisting of commercial computer software and c=
ommercial computer software documentation (as those terms are used in 48 C.=
F.R. 12.212), consistent with 48 C.F.R. 12.212 and 48 C.F.R 227.7202- 1 thr=
ough 227.7202-4. You will not provide the Software to the U.S. Government. =
Contractor or Manufacturer is Intel Corporation, 2200 Mission College Blvd.=
, Santa Clara, CA 95054.
+EXPORT LAWS. Licensee agrees that neither Licensee nor Licensee's subsidia=
ries will export/re-export the Software, directly or indirectly, to any cou=
ntry for which the U.S. Department of Commerce or any other agency or depar=
tment of the U.S. Government or the foreign government from where it is shi=
pping requires an export license, or other governmental approval, without f=
irst obtaining any such required license or approval. In the event the Soft=
ware is exported from the U.S.A. or re-exported from a foreign destination =
by Licensee, Licensee will ensure that the distribution and export/re-expor=
t or import of the Software complies with all laws, regulations, orders, or=
 other restrictions of the U.S. Export Administration Regulations and the a=
ppropriate foreign government.
+APPLICABLE LAWS. This Agreement and any dispute arising out of or relating=
 to it will be governed by the laws of the U.S.A. and Delaware, without reg=
ard to conflict of laws principles. The Parties to this Agreement exclude t=
he application of the United Nations Convention on Contracts for the Intern=
ational Sale of Goods (1980). The state and federal courts sitting in Delaw=
are, U.S.A. will have exclusive jurisdiction over any dispute arising out o=
f or relating to this Agreement. The Parties consent to personal jurisdicti=
on and venue in those courts. A Party that obtains a judgment against the o=
ther Party in the courts identified in this section may enforce that judgme=
nt in any court that has jurisdiction over the Parties. Licensee's specific=
 rights may vary from country to country.
diff --git a/WHENCE b/WHENCE
index 086374d7e17a..8800aee91a4c 100644
--- a/WHENCE
+++ b/WHENCE
@@ -5027,8 +5027,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec fo=
r details.
=20
 Driver: ice - Intel(R) Ethernet Connection E800 Series
=20
-File: intel/ice/ddp/ice-1.3.4.0.pkg
-Link: intel/ice/ddp/ice.pkg -> ice-1.3.4.0.pkg
+File: intel/ice/ddp/ice-1.3.13.0.pkg
+Link: intel/ice/ddp/ice.pkg -> ice-1.3.13.0.pkg
=20
 License: Redistributable. See LICENSE.ice for details
=20
diff --git a/intel/ice/ddp/ice-1.3.4.0.pkg b/intel/ice/ddp/ice-1.3.13.0.pkg
similarity index 52%
rename from intel/ice/ddp/ice-1.3.4.0.pkg
rename to intel/ice/ddp/ice-1.3.13.0.pkg
index 67443c3ccc5c37efe6ded702beceec60bdf7b792..57f10fce43ea064f8bfef833681=
4c25f3b3a5a09 100644
GIT binary patch
delta 40478
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
aIcX5GR)|{|S66@c?0<=3D8H@h<jsQ(Ak06KO6

delta 33591
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
V^VL=3D2cG#ni70+`8;ldR0{{a<P`<(y)

--=20
2.20.1


--===============9062786917416670419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============9062786917416670419==--
