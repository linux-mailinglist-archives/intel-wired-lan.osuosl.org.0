Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE91B43305
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 08:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A9E987E9D;
	Thu, 13 Jun 2019 06:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D1sOd9PeuLsP; Thu, 13 Jun 2019 06:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D4E388159;
	Thu, 13 Jun 2019 06:57:12 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E69E1BF23B
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2019 06:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 17E9B87FC9
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2019 06:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6R2AEBm5dMlr for <intel-wired-lan@osuosl.org>;
 Thu, 13 Jun 2019 06:57:10 +0000 (UTC)
X-Greylist: delayed 00:05:30 by SQLgrey-1.7.6
Received: from forward103o.mail.yandex.net (forward103o.mail.yandex.net
 [37.140.190.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C390D87E9D
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2019 06:57:09 +0000 (UTC)
Received: from mxback12o.mail.yandex.net (mxback12o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::63])
 by forward103o.mail.yandex.net (Yandex) with ESMTP id 8F8555F81ECA;
 Thu, 13 Jun 2019 09:51:35 +0300 (MSK)
Received: from smtp3p.mail.yandex.net (smtp3p.mail.yandex.net
 [2a02:6b8:0:1472:2741:0:8b6:8])
 by mxback12o.mail.yandex.net (nwsmtp/Yandex) with ESMTP id mSivkswPgc-pZXGYUTE;
 Thu, 13 Jun 2019 09:51:35 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flussonic.com; s=mail;
 t=1560408695; bh=Lf2EdQdZoRaxnZyoSsYxpwnmYSMNkb59dZga/5GUEFM=;
 h=To:In-Reply-To:Subject:Cc:From:References:Date:Message-Id;
 b=hnmmCbpXJrKl/85EacXNJPaYJbuKBdhLZxhGh7iEfgQGCjrx5cxeIoo7nvsXqwdoT
 oh2Y++BjzO6oDS9OfOUc6Iip5NvzWcithw0S9VE4VWehC2tc4r5vloToX0OknuthZF
 0Mqa4kz7IPu1aYyNu9xnKvS8DtMKvDuRnnRFSz0E=
Authentication-Results: mxback12o.mail.yandex.net;
 dkim=pass header.i=@flussonic.com
Received: by smtp3p.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 H0KmNBfxgB-pYJ4tnPa; Thu, 13 Jun 2019 09:51:34 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
From: Max Lapshin <max@flussonic.com>
Message-Id: <640C4F07-20AB-4D98-8A6D-770F0CE1C412@flussonic.com>
Mime-Version: 1.0 (Mac OS X Mail 12.1 \(3445.101.1\))
Date: Thu, 13 Jun 2019 09:51:34 +0300
In-Reply-To: <3827f4b8-506d-f55a-3279-f8a17699ee5e@silicom-usa.com>
To: Stephen Douthit <stephend@silicom-usa.com>
References: <C0C7FF38-286F-46CA-909D-1A02EFDBBF0C@flussonic.com>
 <3827f4b8-506d-f55a-3279-f8a17699ee5e@silicom-usa.com>
X-Mailer: Apple Mail (2.3445.101.1)
Subject: Re: [Intel-wired-lan] i350 software defined pins sysfs access
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: multipart/mixed; boundary="===============9082945433002050463=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============9082945433002050463==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AC8511BE-96BE-4A08-A0E1-18E74E7097C5"


--Apple-Mail=_AC8511BE-96BE-4A08-A0E1-18E74E7097C5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


>=20
> The igb driver already uses these pins for PTP if that's configured =
and
> the 82575 uses SDP3 as a power enable for SFP cages, sgmii PHYs, etc.
> You'll need to avoid letting userspace poke at SDPs that the driver is
> already using.

I should write code to avoid touching these registers for these cases?

>=20
> Assuming this can coexist with the existing usage, why not register =
this
> as a gpio_chip with the gpiolib framework?

Ok, I will  take a look at it.


>=20
>> Subject: [PATCH] i350: Add support for Intel i350 software defined =
pins
>>=20
>> +
>> +/* Software defined pins 2-3 */
>> +#define IGB_CTRL_EXT_SDP2_DATA E1000_CTRL_EXT_SDP2_DATA /* Value of =
SW Defineable Pin 2 */
>> +#define IGB_CTRL_EXT_SDP3_DATA E1000_CTRL_EXT_SDP3_DATA /* Value of =
SW Defineable Pin 3 */
>> +#define IGB_CTRL_EXT_SDP2_DIR  E1000_CTRL_EXT_SDP2_DIR  /* SDP2 Data =
direction */
>> +#define IGB_CTRL_EXT_SDP3_DIR  E1000_CTRL_EXT_SDP3_DIR  /* SDP3 Data =
direction */
>=20
> Looks like e1000_defines.h already has this info.
>=20

Only partially, so I decided to copy it to avoid situtation then I have =
in one code  IGB_ and E1000_  defines.

It is not good?=

--Apple-Mail=_AC8511BE-96BE-4A08-A0E1-18E74E7097C5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">The igb driver already uses =
these pins for PTP if that's configured and</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">the 82575 uses SDP3 as a power =
enable for SFP cages, sgmii PHYs, etc.</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">You'll need to avoid letting userspace poke at SDPs that the =
driver is</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">already =
using.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote><div><br class=3D""></div><div>I =
should write code to avoid touching these registers for these =
cases?</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Assuming this =
can coexist with the existing usage, why not register this</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">as a gpio_chip with the gpiolib =
framework?</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote><div><br class=3D""></div><div>Ok, =
I will &nbsp;take a look at it.</div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">Subject: [PATCH] i350: Add support for Intel i350 software =
defined pins<br class=3D""><br class=3D"">+<br class=3D"">+/* Software =
defined pins 2-3 */<br class=3D"">+#define IGB_CTRL_EXT_SDP2_DATA =
E1000_CTRL_EXT_SDP2_DATA /* Value of SW Defineable Pin 2 */<br =
class=3D"">+#define IGB_CTRL_EXT_SDP3_DATA E1000_CTRL_EXT_SDP3_DATA /* =
Value of SW Defineable Pin 3 */<br class=3D"">+#define =
IGB_CTRL_EXT_SDP2_DIR &nbsp;E1000_CTRL_EXT_SDP2_DIR &nbsp;/* SDP2 Data =
direction */<br class=3D"">+#define IGB_CTRL_EXT_SDP3_DIR =
&nbsp;E1000_CTRL_EXT_SDP3_DIR &nbsp;/* SDP3 Data direction */<br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Looks like e1000_defines.h already has this info.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote><div><br class=3D""></div></div>Only =
partially, so I decided to copy it to avoid situtation then I have in =
one code &nbsp;IGB_ and E1000_ &nbsp;defines.<div class=3D""><br =
class=3D""></div><div class=3D"">It is not good?</div></body></html>=

--Apple-Mail=_AC8511BE-96BE-4A08-A0E1-18E74E7097C5--

--===============9082945433002050463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============9082945433002050463==--
