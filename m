Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 394C242C36
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 18:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D644A86008;
	Wed, 12 Jun 2019 16:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s92DDkHHW4_W; Wed, 12 Jun 2019 16:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59C718606C;
	Wed, 12 Jun 2019 16:28:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 506331BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 00:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D8628526D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 00:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMdJdHOMsXWB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 00:55:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 25FC085250
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 00:55:45 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 17:55:44 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2019 17:55:44 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 11 Jun 2019 17:55:43 -0700
Received: from FMSMSX110.amr.corp.intel.com ([169.254.14.89]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.207]) with mapi id 14.03.0415.000;
 Tue, 11 Jun 2019 17:55:43 -0700
From: "Wang, Liang-min" <liang-min.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] ixgbevf: add control of skipping PF link-status check
Thread-Index: AdUguRPM3NrCemJIQiGy1Z4d033i6w==
Date: Wed, 12 Jun 2019 00:55:43 +0000
Message-ID: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmNjMDAyMTMtYjZhYi00YmFlLWFlNTctZDExNTcxZTZkZTRlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMnRrb0s2QWowNUM5ZHpxTExcLzZiT01cL3kydjVZN293dnErcjlNNFE5bW42XC9oemhQMzVuelJyUmZSSXd2a0pHaSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
Content-Type: multipart/mixed;
 boundary="_004_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_"
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 Jun 2019 16:28:28 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbevf: add control of skipping PF
 link-status check
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
Cc: Guilherme Piccoli <gpiccoli@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_004_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_
Content-Type: multipart/alternative;
	boundary="_000_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_"

--_000_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

ixgbevf: add control of skipping PF link-status check

The ixgbevf link status check always triggers an interrupt on Physical Func=
tion (PF) driver because
it uses mailbox read to check PF link-status. For any Virtual Network Funct=
ion (VNF) implementation
where periodical link-status check is needed, this interrupt per request be=
comes a significant
performance overhead. Therefore, this change uses the input parameter, auto=
neg_wait_to_complete, to
conditionally skip the PF link-status check. For scenarios where only quick=
 Virtual Function (VF)
link status check is required, application could skip the PF interrupt by s=
etting autoneg_wait_to_complete
to "0". For cases where deep link status check (include both PF and VF link=
 status check) is required,
the application can set the autoneg_wait_to_complete to "1".

Signed-off-by: Liang-Min Wang<liang-min.wang@intel.com>
Reviewed-by: Jeffrey T Kirsher<jeffrey.t.kirsher@intel.com>
---
drivers/net/ethernet/intel/ixgbevf/vf.c | 10 ++++++++++
1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet=
/intel/ixgbevf/vf.c
index d5ce496..951d8aa 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -694,8 +694,18 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *=
hw,
      case IXGBE_LINKS_SPEED_100_82599:
             *speed =3D IXGBE_LINK_SPEED_100_FULL;
             break;
+      default:
+             *speed =3D IXGBE_LINK_SPEED_UNKNOWN;
      }
+      if (!autoneg_wait_to_complete) {
+             if (*speed =3D=3D IXGBE_LINK_SPEED_UNKNOWN)
+                    mac->get_link_status =3D true;
+             else
+                    mac->get_link_status =3D false;
+
+             goto out;
+      }
      /* if the read failed it could just be a mailbox collision, best wait
       * until we are called again and don't report an error
       */
--
2.4.11



--_000_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"ProgId" content=3D"Word.Document">
<meta name=3D"Generator" content=3D"Microsoft Word 15">
<meta name=3D"Originator" content=3D"Microsoft Word 15">
<link rel=3D"File-List" href=3D"cid:filelist.xml@01D52098.074A8620"><!--[if=
 gte mso 9]><xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
<o:DoNotRelyOnCSS/>
</o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:WordDocument>
<w:SpellingState>Clean</w:SpellingState>
<w:GrammarState>Clean</w:GrammarState>
<w:TrackMoves/>
<w:TrackFormatting/>
<w:EnvelopeVis/>
<w:PunctuationKerning/>
<w:ValidateAgainstSchemas/>
<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
<w:IgnoreMixedContent>false</w:IgnoreMixedContent>
<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
<w:DoNotPromoteQF/>
<w:LidThemeOther>EN-US</w:LidThemeOther>
<w:LidThemeAsian>X-NONE</w:LidThemeAsian>
<w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
<w:Compatibility>
<w:BreakWrappedTables/>
<w:SnapToGridInCell/>
<w:WrapTextWithPunct/>
<w:UseAsianBreakRules/>
<w:DontGrowAutofit/>
<w:SplitPgBreakAndParaMark/>
<w:EnableOpenTypeKerning/>
<w:DontFlipMirrorIndents/>
<w:OverrideTableStyleHps/>
</w:Compatibility>
<m:mathPr>
<m:mathFont m:val=3D"Cambria Math"/>
<m:brkBin m:val=3D"before"/>
<m:brkBinSub m:val=3D"&#45;-"/>
<m:smallFrac m:val=3D"off"/>
<m:dispDef/>
<m:lMargin m:val=3D"0"/>
<m:rMargin m:val=3D"0"/>
<m:defJc m:val=3D"centerGroup"/>
<m:wrapIndent m:val=3D"1440"/>
<m:intLim m:val=3D"subSup"/>
<m:naryLim m:val=3D"undOvr"/>
</m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"false" DefSem=
iHidden=3D"false" DefQFormat=3D"false" DefPriority=3D"99" LatentStyleCount=
=3D"371">
<w:LsdException Locked=3D"false" Priority=3D"0" QFormat=3D"true" Name=3D"No=
rmal"/>
<w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"he=
ading 1"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 2"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 3"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 4"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 5"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 6"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 7"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 8"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 9"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 9"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 1"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 2"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 3"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 4"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 5"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 6"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 7"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 8"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 9"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Normal Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"footnote text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"annotation text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"header"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"footer"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index heading"/>
<w:LsdException Locked=3D"false" Priority=3D"35" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" QFormat=3D"true" Name=3D"caption"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"table of figures"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"envelope address"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"envelope return"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"footnote reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"annotation reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"line number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"page number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"endnote reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"endnote text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"table of authorities"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"macro"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"toa heading"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 5"/>
<w:LsdException Locked=3D"false" Priority=3D"10" QFormat=3D"true" Name=3D"T=
itle"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Closing"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Signature"/>
<w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" Name=3D"Default Paragraph Font"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Message Header"/>
<w:LsdException Locked=3D"false" Priority=3D"11" QFormat=3D"true" Name=3D"S=
ubtitle"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Salutation"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Date"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text First Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text First Indent 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Note Heading"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text Indent 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text Indent 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Block Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Hyperlink"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"FollowedHyperlink"/>
<w:LsdException Locked=3D"false" Priority=3D"22" QFormat=3D"true" Name=3D"S=
trong"/>
<w:LsdException Locked=3D"false" Priority=3D"20" QFormat=3D"true" Name=3D"E=
mphasis"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Document Map"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Plain Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"E-mail Signature"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Top of Form"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Bottom of Form"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Normal (Web)"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Acronym"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Address"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Cite"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Code"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Definition"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Keyboard"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Preformatted"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Sample"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Typewriter"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Variable"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Normal Table"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"annotation subject"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"No List"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Outline List 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Outline List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Outline List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Simple 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Simple 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Simple 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Colorful 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Colorful 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Colorful 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table 3D effects 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table 3D effects 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table 3D effects 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Contemporary"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Elegant"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Professional"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Subtle 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Subtle 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Web 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Web 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Web 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Balloon Text"/>
<w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"Table Grid"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Theme"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Placeholder Te=
xt"/>
<w:LsdException Locked=3D"false" Priority=3D"1" QFormat=3D"true" Name=3D"No=
 Spacing"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1"/=
>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2"/=
>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading"/=
>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Revision"/>
<w:LsdException Locked=3D"false" Priority=3D"34" QFormat=3D"true" Name=3D"L=
ist Paragraph"/>
<w:LsdException Locked=3D"false" Priority=3D"29" QFormat=3D"true" Name=3D"Q=
uote"/>
<w:LsdException Locked=3D"false" Priority=3D"30" QFormat=3D"true" Name=3D"I=
ntense Quote"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 1=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 2=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
3"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
3"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 3=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
4"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
4"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 4=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
5"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
5"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 5=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
6"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
6"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 6=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"19" QFormat=3D"true" Name=3D"S=
ubtle Emphasis"/>
<w:LsdException Locked=3D"false" Priority=3D"21" QFormat=3D"true" Name=3D"I=
ntense Emphasis"/>
<w:LsdException Locked=3D"false" Priority=3D"31" QFormat=3D"true" Name=3D"S=
ubtle Reference"/>
<w:LsdException Locked=3D"false" Priority=3D"32" QFormat=3D"true" Name=3D"I=
ntense Reference"/>
<w:LsdException Locked=3D"false" Priority=3D"33" QFormat=3D"true" Name=3D"B=
ook Title"/>
<w:LsdException Locked=3D"false" Priority=3D"37" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"Bibliography"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" QFormat=3D"true" Name=3D"TOC Heading"/>
<w:LsdException Locked=3D"false" Priority=3D"41" Name=3D"Plain Table 1"/>
<w:LsdException Locked=3D"false" Priority=3D"42" Name=3D"Plain Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"43" Name=3D"Plain Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"44" Name=3D"Plain Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"45" Name=3D"Plain Table 5"/>
<w:LsdException Locked=3D"false" Priority=3D"40" Name=3D"Grid Table Light"/=
>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark"=
/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark"=
/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 6"/>
</w:LatentStyles>
</xml><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-alt:"Calisto MT";
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536869121 1107305727 33554432 0 415 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-alt:"Century Gothic";
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-536859905 -1073732485 9 0 511 0;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-536869121 64767 1 0 415 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-fareast-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;
	text-underline:single;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	mso-style-noshow:yes;
	mso-style-unhide:no;
	mso-ansi-font-size:11.0pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-fareast-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	color:windowtext;}
span.SpellE
	{mso-style-name:"";
	mso-spl-e:yes;}
span.GramE
	{mso-style-name:"";
	mso-gram-e:yes;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-fareast-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 10]><style>/* Style Definitions */
table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
</style><![endif]--><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"tab-interv=
al:.5in">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"SpellE"><span class=3D"GramE"><font size=3D"2" color=3D=
"black" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consol=
as;mso-bidi-font-family:Consolas;color:black">ixgbevf</span></font></span><=
/span><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"fon=
t-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black=
">:
 add control of skipping PF link-status check<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>The
<span class=3D"SpellE">ixgbevf</span> link status check always triggers an =
interrupt on Physical Function (PF) driver because<o:p></o:p></span></font>=
</p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">it</span></font></span><font size=3D"2" color=3D"bla=
ck" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consolas;m=
so-bidi-font-family:Consolas;color:black">
 uses mailbox read to check PF link-status. For any Virtual Network Functio=
n (VNF) implementation<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">where</span></font></span><font size=3D"2" color=3D"=
black" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consola=
s;mso-bidi-font-family:Consolas;color:black">
 periodical link-status check is needed, this interrupt per request becomes=
 a significant<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">performance</span></font></span><font size=3D"2" col=
or=3D"black" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:C=
onsolas;mso-bidi-font-family:Consolas;color:black">
 overhead. Therefore, this change uses the input parameter, <span class=3D"=
SpellE">
autoneg_wait_to_complete</span>, to<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">conditionally</span></font></span><font size=3D"2" c=
olor=3D"black" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family=
:Consolas;mso-bidi-font-family:Consolas;color:black">
 skip the PF link-status check. For scenarios where only quick Virtual Func=
tion (VF)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">link</span></font></span><font size=3D"2" color=3D"b=
lack" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consolas=
;mso-bidi-font-family:Consolas;color:black">
 status check is required, application could skip the PF interrupt by setti=
ng <span class=3D"SpellE">
autoneg_wait_to_complete</span><o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">to</span></font></span><font size=3D"2" color=3D"bla=
ck" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consolas;m=
so-bidi-font-family:Consolas;color:black">
 &quot;0&quot;. For cases where deep link status check (include both PF and=
 VF link status check) is required,<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">the</span></font></span><font size=3D"2" color=3D"bl=
ack" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consolas;=
mso-bidi-font-family:Consolas;color:black">
 application can set the <span class=3D"SpellE">autoneg_wait_to_complete</s=
pan> to &quot;1&quot;.<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>Signed-off-by: Liang-Min Wang&lt;liang-min.wang@intel.com&gt;<o:p></o:p></=
span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>Reviewed-by: Jeffrey T Kirsher&lt;jeffrey.t.kirsher@intel.com&gt;<o:p></o:=
p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>---<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>drivers/net/<span class=3D"SpellE">ethernet</span>/intel/<span class=3D"Sp=
ellE">ixgbevf</span>/<span class=3D"SpellE">vf.c</span>
 | 10 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<o:p></o:p></span><=
/font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>1 file changed, 10
<span class=3D"GramE">insertions(</span>&#43;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">diff</span></font></span><font size=3D"2" color=3D"b=
lack" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consolas=
;mso-bidi-font-family:Consolas;color:black">
 --<span class=3D"SpellE">git</span> a/drivers/net/<span class=3D"SpellE">e=
thernet</span>/intel/<span class=3D"SpellE">ixgbevf</span>/<span class=3D"S=
pellE">vf.c</span> b/drivers/net/<span class=3D"SpellE">ethernet</span>/int=
el/<span class=3D"SpellE">ixgbevf</span>/<span class=3D"SpellE">vf.c</span>=
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><span class=3D"GramE"><font size=3D"2" color=3D"black" face=3D"Consola=
s"><span style=3D"font-size:9.5pt;font-family:Consolas;mso-bidi-font-family=
:Consolas;color:black">index</span></font></span><font size=3D"2" color=3D"=
black" face=3D"Consolas"><span style=3D"font-size:9.5pt;font-family:Consola=
s;mso-bidi-font-family:Consolas;color:black">
 d5ce496..951d8aa 100644<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>--- a/drivers/net/<span class=3D"SpellE">ethernet</span>/intel/<span class=
=3D"SpellE">ixgbevf</span>/<span class=3D"SpellE">vf.c</span><o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;&#43;&#43; b/drivers/net/<span class=3D"SpellE">ethernet</span>/intel=
/<span class=3D"SpellE">ixgbevf</span>/<span class=3D"SpellE">vf.c</span><o=
:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>@@ -694<span class=3D"GramE">,8</span> &#43;694,18
 @@ static s32 <span class=3D"SpellE">ixgbevf_check_mac_link_vf</span>(<spa=
n class=3D"SpellE">struct</span>
<span class=3D"SpellE">ixgbe_hw</span> *<span class=3D"SpellE">hw</span>,<o=
:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"GramE">case</span> IXGBE_LINKS_SPEED_100_82599:<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>*speed =3D IXGBE_LINK_SPEED_100_FULL;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"GramE">break</span>;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"GramE">default</span>:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>*speed =3D IXGBE_LINK_SPEED_UNKNOWN;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>}<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"GramE">if</span> (!<span class=3D"SpellE">autoneg_wai=
t_to_complete</span>) {<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"GramE">if</span> (*speed =3D=3D IXGBE_LINK_SPEED_UNKN=
OWN)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;
</span><span class=3D"GramE">mac</span>-&gt;<span class=3D"SpellE">get_link=
_status</span> =3D true;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"GramE">else</span><o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;
</span><span class=3D"GramE">mac</span>-&gt;<span class=3D"SpellE">get_link=
_status</span> =3D false;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span class=3D"SpellE"><span class=3D"GramE">goto</span></span> out;=
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>&#43;<span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>}<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>/* if the read failed it could just be a mailbox collision, best wai=
t<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"mso-spacerun:yes">&nbsp;</span>* <span class=3D"GramE=
">until</span> we are called again and don't report an error<o:p></o:p></sp=
an></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
><span style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"mso-spacerun:yes">&nbsp;</span>*/<o:p></o:p></span></=
font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>--
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal" style=3D"mso-layout-grid-align:none;text-autospace:n=
one"><font size=3D"2" color=3D"black" face=3D"Consolas"><span style=3D"font=
-size:9.5pt;font-family:Consolas;mso-bidi-font-family:Consolas;color:black"=
>2.4.11<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
</div>
</body>
</html>

--_000_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_--

--_004_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_
Content-Type: application/octet-stream;
	name="0001-ixgbevf-add-control-of-skipping-PF-link-status-check.patch"
Content-Description: 0001-ixgbevf-add-control-of-skipping-PF-link-status-check.patch
Content-Disposition: attachment;
	filename="0001-ixgbevf-add-control-of-skipping-PF-link-status-check.patch";
	size=1962; creation-date="Wed, 12 Jun 2019 00:25:44 GMT";
	modification-date="Wed, 12 Jun 2019 00:26:50 GMT"
Content-Transfer-Encoding: base64

RnJvbSBiZTY0MWFiNDY2ZmNlNzBjYzk1NjRjMmE0YmNhODc0ZmQ1YzMyMGRhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBMaWFuZy1NaW4gV2FuZyA8bGlhbmctbWluLndhbmdAaW50ZWwu
Y29tPgpEYXRlOiBUdWUsIDExIEp1biAyMDE5IDIwOjE4OjI0IC0wNDAwClN1YmplY3Q6IFtQQVRD
SF0gaXhnYmV2ZjogYWRkIGNvbnRyb2wgb2Ygc2tpcHBpbmcgUEYgbGluay1zdGF0dXMgY2hlY2sK
ClRoZSBpeGdiZXZmIGxpbmsgc3RhdHVzIGNoZWNrIGFsd2F5cyB0cmlnZ2VycyBhbiBpbnRlcnJ1
cHQgb24gUGh5c2ljYWwgRnVuY3Rpb24gKFBGKSBkcml2ZXIgYmVjYXVzZQppdCB1c2VzIG1haWxi
b3ggcmVhZCB0byBjaGVjayBQRiBsaW5rLXN0YXR1cy4gRm9yIGFueSBWaXJ0dWFsIE5ldHdvcmsg
RnVuY3Rpb24gKFZORikgaW1wbGVtZW50YXRpb24Kd2hlcmUgcGVyaW9kaWNhbCBsaW5rLXN0YXR1
cyBjaGVjayBpcyBuZWVkZWQsIHRoaXMgaW50ZXJydXB0IHBlciByZXF1ZXN0IGJlY29tZXMgYSBz
aWduaWZpY2FudApwZXJmb3JtYW5jZSBvdmVyaGVhZC4gVGhlcmVmb3JlLCB0aGlzIGNoYW5nZSB1
c2VzIHRoZSBpbnB1dCBwYXJhbWV0ZXIsIGF1dG9uZWdfd2FpdF90b19jb21wbGV0ZSwgdG8KY29u
ZGl0aW9uYWxseSBza2lwIHRoZSBQRiBsaW5rLXN0YXR1cyBjaGVjay4gRm9yIHNjZW5hcmlvcyB3
aGVyZSBvbmx5IHF1aWNrIFZpcnR1YWwgRnVuY3Rpb24gKFZGKQpsaW5rIHN0YXR1cyBjaGVjayBp
cyByZXF1aXJlZCwgYXBwbGljYXRpb24gY291bGQgc2tpcCB0aGUgUEYgaW50ZXJydXB0IGJ5IHNl
dHRpbmcgYXV0b25lZ193YWl0X3RvX2NvbXBsZXRlCnRvICIwIi4gRm9yIGNhc2VzIHdoZXJlIGRl
ZXAgbGluayBzdGF0dXMgY2hlY2sgKGluY2x1ZGUgYm90aCBQRiBhbmQgVkYgbGluayBzdGF0dXMg
Y2hlY2spIGlzIHJlcXVpcmVkLAp0aGUgYXBwbGljYXRpb24gY2FuIHNldCB0aGUgYXV0b25lZ193
YWl0X3RvX2NvbXBsZXRlIHRvICIxIi4KClNpZ25lZC1vZmYtYnk6IExpYW5nLU1pbiBXYW5nPGxp
YW5nLW1pbi53YW5nQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEplZmZyZXkgVCBLaXJzaGVyPGpl
ZmZyZXkudC5raXJzaGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZXZmL3ZmLmMgfCAxMCArKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYv
dmYuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYvdmYuYwppbmRleCBkNWNl
NDk2Li45NTFkOGFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdi
ZXZmL3ZmLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi92Zi5jCkBA
IC02OTQsOCArNjk0LDE4IEBAIHN0YXRpYyBzMzIgaXhnYmV2Zl9jaGVja19tYWNfbGlua192Zihz
dHJ1Y3QgaXhnYmVfaHcgKmh3LAogCWNhc2UgSVhHQkVfTElOS1NfU1BFRURfMTAwXzgyNTk5Ogog
CQkqc3BlZWQgPSBJWEdCRV9MSU5LX1NQRUVEXzEwMF9GVUxMOwogCQlicmVhazsKKwlkZWZhdWx0
OgorCQkqc3BlZWQgPSBJWEdCRV9MSU5LX1NQRUVEX1VOS05PV047CiAJfQogCisJaWYgKCFhdXRv
bmVnX3dhaXRfdG9fY29tcGxldGUpIHsKKwkJaWYgKCpzcGVlZCA9PSBJWEdCRV9MSU5LX1NQRUVE
X1VOS05PV04pCisJCQltYWMtPmdldF9saW5rX3N0YXR1cyA9IHRydWU7CisJCWVsc2UKKwkJCW1h
Yy0+Z2V0X2xpbmtfc3RhdHVzID0gZmFsc2U7CisgCisJCWdvdG8gb3V0OworCX0KIAkvKiBpZiB0
aGUgcmVhZCBmYWlsZWQgaXQgY291bGQganVzdCBiZSBhIG1haWxib3ggY29sbGlzaW9uLCBiZXN0
IHdhaXQKIAkgKiB1bnRpbCB3ZSBhcmUgY2FsbGVkIGFnYWluIGFuZCBkb24ndCByZXBvcnQgYW4g
ZXJyb3IKIAkgKi8KLS0gCjIuNC4xMQoK

--_004_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--_004_B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265FMSMSX110amrcor_--
