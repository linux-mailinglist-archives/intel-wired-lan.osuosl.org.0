Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 491A5376026
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 08:15:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C772F60E2A;
	Fri,  7 May 2021 06:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjXJ3DVmPY3f; Fri,  7 May 2021 06:15:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C00A0605D4;
	Fri,  7 May 2021 06:15:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEEF61BF38B
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 06:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD224605D4
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 06:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WE-FKbtcWft3 for <intel-wired-lan@osuosl.org>;
 Fri,  7 May 2021 06:14:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7CE7605BB
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 06:14:59 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id m12so6419924pgr.9
 for <intel-wired-lan@osuosl.org>; Thu, 06 May 2021 23:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carbonrobotics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=iCRt/5VOxkkb3rQIG7/BYOq1cCSXCdo5KdW50KGb2TU=;
 b=A4wrVKPI46/QRaBgFcEdTwQSDq+6DLKTA6JfIiRMogoyzZ6wN6TH9vq1xObVxA7VVp
 LKlKQY+b/c35DkjNfv3xG3L9fzsi6hdlx3B9AxPCtTN3iYj4Y8it14axVBss7gQoTqwG
 rZ+9EeFml5SI5px/lWhA3dVAn5Mnhn3Tba30S32eKeGKbWEvVEUbdVKxr/3w5Y5cWh75
 +xW9SiV2zWfWVZbY4mDE9862Sdq8S+7rE9XaweFI9yR3b1tZtvhRmw+DrWyMmmIfMDEf
 dnvnja8GcO0n/tfFmjpJvbZTclWcb3yBQGwMic+M0i8SdtzsH3h0RQa9VVWrZp8wxgIv
 HeWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iCRt/5VOxkkb3rQIG7/BYOq1cCSXCdo5KdW50KGb2TU=;
 b=PTgnPiXfBXbuaq3fk6GlkJ7od+EuDxSEiNBIUV/8xQhpzNGGDUHWbaVU0Dooi+OSuD
 fuRnsZyOEgok6hd57xkPolJLoQ566kk1En40jrVXWFrXDGkmPZRaEJ9BiIZEyemnogkV
 goz3rUp0uqAvzWFMPEHljug+51OwqHWwyr3P2qraxtowYGBjLDyi9aaCkuLbdueeyjtY
 uJE6GQ3pRT0xegPB6WLu6s9iXlUw4JU2tfVM48CfxmysWZTOHg3qDQTPZ3BAOah65rc7
 HxiK9u0+P7CUl9SqFUitKHwS3XK78XndNFcGOglwNv2/7b/lgE2W9vI0mEnvxdasYfFJ
 2sEA==
X-Gm-Message-State: AOAM53113W7O1+ezigBDpdaZzDA1PpNQg1Y22mX2abaQr2weEAK9uXYK
 G1OaOjCZiKBW4UsNBb0Q8Sa69moxrwBqET+c/q+o6GFBYywBbIJJ
X-Google-Smtp-Source: ABdhPJyN55DO/EKyAROQXVoSrT/FQIpxg9nebyrx1lUdK2Sb+epWXMWxk6o3kcvykkm/Ds3+6PjbjJemNPqt5bHtpDk=
X-Received: by 2002:a63:5448:: with SMTP id e8mr8151314pgm.170.1620368098842; 
 Thu, 06 May 2021 23:14:58 -0700 (PDT)
MIME-Version: 1.0
From: Alex Sergeev <asergeev@carbonrobotics.com>
Date: Thu, 6 May 2021 23:14:48 -0700
Message-ID: <CAAE-T7+Q__0ONDwzm89uufc6WKrmiCsUPvW_ARhVzaRwv93JFA@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Content-Type: multipart/mixed; boundary="000000000000f19e4405c1b758d5"
Subject: [Intel-wired-lan] X710-T4L: 5Gb support for IEEE1588
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000f19e4405c1b758d5
Content-Type: multipart/alternative; boundary="000000000000f19e4205c1b758d3"

--000000000000f19e4205c1b758d3
Content-Type: text/plain; charset="UTF-8"

Hello,

I got forwarded here by folks at e1000-devel@.

We have tried to use PTP with X710-T4L and 5Gb link, and encountered
clockcheck problem in phc2sys:

Apr 30 22:57:36 budtb phc2sys[5940]: [50.569] clockcheck: clock jumped
forward or running faster than expected!

After further code examination, it turned out that 5Gb case is not handled
in i40e_ptp.c

Here's the naive version of the patch that fixed the problem for us:

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index f1f6fc3744e9..5747b652ee9e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -12,12 +12,13 @@
  *
  * Much like the 82599, the update period is dependent upon the link speed:
  * At 40Gb link or no link, the period is 1.6ns.
- * At 10Gb link, the period is multiplied by 2. (3.2ns)
+ * At 5Gb or 10Gb link, the period is multiplied by 2. (3.2ns)
  * At 1Gb link, the period is multiplied by 20. (32ns)
  * 1588 functionality is not supported at 100Mbps.
  */
 #define I40E_PTP_40GB_INCVAL 0x0199999999ULL
 #define I40E_PTP_10GB_INCVAL_MULT 2
+#define I40E_PTP_5GB_INCVAL_MULT    2
 #define I40E_PTP_1GB_INCVAL_MULT 20

 #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1
 BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
@@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
  case I40E_LINK_SPEED_10GB:
      mult = I40E_PTP_10GB_INCVAL_MULT;
      break;
+ case I40E_LINK_SPEED_5GB:
+     mult = I40E_PTP_5GB_INCVAL_MULT;
+     break;
  case I40E_LINK_SPEED_1GB:
      mult = I40E_PTP_1GB_INCVAL_MULT;
      break;

What's the process to get it applied upstream?

Thanks,
Alex Sergeev

--000000000000f19e4205c1b758d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,</div><div><br></div><div>I got forwarded =
here by folks at e1000-devel@.</div><div><br></div><div>We have tried to us=
e PTP with X710-T4L and 5Gb link, and encountered clockcheck problem in phc=
2sys:</div><div><br></div><div>Apr 30 22:57:36 budtb phc2sys[5940]: [50.569=
] clockcheck: clock jumped forward or running faster than expected!<br></di=
v><div><br></div><div>After further code examination, it turned out that 5G=
b case is not handled in i40e_ptp.c</div><div><br></div><div>Here&#39;s the=
 naive version of the patch that fixed the problem for us:</div><div><font =
face=3D"monospace"><br></font></div><div><font face=3D"monospace">diff --gi=
t a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel=
/i40e/i40e_ptp.c<br>index f1f6fc3744e9..5747b652ee9e 100644<br>--- a/driver=
s/net/ethernet/intel/i40e/i40e_ptp.c<br>+++ b/drivers/net/ethernet/intel/i4=
0e/i40e_ptp.c<br>@@ -12,12 +12,13 @@<br>=C2=A0 *<br>=C2=A0 * Much like the =
82599, the update period is dependent upon the link speed:<br>=C2=A0 * At 4=
0Gb link or no link, the period is 1.6ns.<br>- * At 10Gb link, the period i=
s multiplied by 2. (3.2ns)<br>+ * At 5Gb or 10Gb link, the period is multip=
lied by 2. (3.2ns)<br>=C2=A0 * At 1Gb link, the period is multiplied by 20.=
 (32ns)<br>=C2=A0 * 1588 functionality is not supported at 100Mbps.<br>=C2=
=A0 */<br>=C2=A0#define I40E_PTP_40GB_INCVAL		0x0199999999ULL<br>=C2=A0#def=
ine I40E_PTP_10GB_INCVAL_MULT	2<br>+#define I40E_PTP_5GB_INCVAL_MULT =C2=A0=
 =C2=A02<br>=C2=A0#define I40E_PTP_1GB_INCVAL_MULT	20<br><br>=C2=A0#define =
I40E_PRTTSYN_CTL1_TSYNTYPE_V1 =C2=A0BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)<b=
r>@@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)<br>=
=C2=A0	case I40E_LINK_SPEED_10GB:<br>=C2=A0 =C2=A0 =C2=A0 mult =3D I40E_PTP=
_10GB_INCVAL_MULT;<br>=C2=A0 =C2=A0 =C2=A0 break;<br>+	case I40E_LINK_SPEED=
_5GB:<br>+=C2=A0 =C2=A0 =C2=A0mult =3D I40E_PTP_5GB_INCVAL_MULT;<br>+=C2=A0=
 =C2=A0 =C2=A0break;<br>=C2=A0	case I40E_LINK_SPEED_1GB:<br>=C2=A0 =C2=A0 =
=C2=A0 mult =3D I40E_PTP_1GB_INCVAL_MULT;<br>=C2=A0 =C2=A0 =C2=A0 break;<br=
></font></div><div><br></div><div>What&#39;s the process to get it applied =
upstream?</div></div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Thanks,<div=
>Alex Sergeev</div><div><br></div></div></div></div></div>

--000000000000f19e4205c1b758d3--

--000000000000f19e4405c1b758d5
Content-Type: text/plain; charset="US-ASCII"; name="i40e_patch.txt"
Content-Disposition: attachment; filename="i40e_patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kodx71el0>
X-Attachment-Id: f_kodx71el0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9wdHAuYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9wdHAuYwppbmRleCBmMWY2ZmMz
NzQ0ZTkuLjU3NDdiNjUyZWU5ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX3B0cC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9wdHAuYwpAQCAtMTIsMTIgKzEyLDEzIEBACiAgKgogICogTXVjaCBsaWtlIHRoZSA4MjU5
OSwgdGhlIHVwZGF0ZSBwZXJpb2QgaXMgZGVwZW5kZW50IHVwb24gdGhlIGxpbmsgc3BlZWQ6CiAg
KiBBdCA0MEdiIGxpbmsgb3Igbm8gbGluaywgdGhlIHBlcmlvZCBpcyAxLjZucy4KLSAqIEF0IDEw
R2IgbGluaywgdGhlIHBlcmlvZCBpcyBtdWx0aXBsaWVkIGJ5IDIuICgzLjJucykKKyAqIEF0IDVH
YiBvciAxMEdiIGxpbmssIHRoZSBwZXJpb2QgaXMgbXVsdGlwbGllZCBieSAyLiAoMy4ybnMpCiAg
KiBBdCAxR2IgbGluaywgdGhlIHBlcmlvZCBpcyBtdWx0aXBsaWVkIGJ5IDIwLiAoMzJucykKICAq
IDE1ODggZnVuY3Rpb25hbGl0eSBpcyBub3Qgc3VwcG9ydGVkIGF0IDEwME1icHMuCiAgKi8KICNk
ZWZpbmUgSTQwRV9QVFBfNDBHQl9JTkNWQUwJCTB4MDE5OTk5OTk5OVVMTAogI2RlZmluZSBJNDBF
X1BUUF8xMEdCX0lOQ1ZBTF9NVUxUCTIKKyNkZWZpbmUgSTQwRV9QVFBfNUdCX0lOQ1ZBTF9NVUxU
ICAgIDIKICNkZWZpbmUgSTQwRV9QVFBfMUdCX0lOQ1ZBTF9NVUxUCTIwCiAKICNkZWZpbmUgSTQw
RV9QUlRUU1lOX0NUTDFfVFNZTlRZUEVfVjEgIEJJVChJNDBFX1BSVFRTWU5fQ1RMMV9UU1lOVFlQ
RV9TSElGVCkKQEAgLTQ2NSw2ICs0NjYsOSBAQCB2b2lkIGk0MGVfcHRwX3NldF9pbmNyZW1lbnQo
c3RydWN0IGk0MGVfcGYgKnBmKQogCWNhc2UgSTQwRV9MSU5LX1NQRUVEXzEwR0I6CiAJCW11bHQg
PSBJNDBFX1BUUF8xMEdCX0lOQ1ZBTF9NVUxUOwogCQlicmVhazsKKwljYXNlIEk0MEVfTElOS19T
UEVFRF81R0I6CisJCW11bHQgPSBJNDBFX1BUUF81R0JfSU5DVkFMX01VTFQ7CisJCWJyZWFrOwog
CWNhc2UgSTQwRV9MSU5LX1NQRUVEXzFHQjoKIAkJbXVsdCA9IEk0MEVfUFRQXzFHQl9JTkNWQUxf
TVVMVDsKIAkJYnJlYWs7Cg==
--000000000000f19e4405c1b758d5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--000000000000f19e4405c1b758d5--
