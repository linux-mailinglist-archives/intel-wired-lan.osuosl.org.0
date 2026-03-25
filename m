Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Iy2GSv4w2nPvAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 15:58:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C7B3274F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 15:58:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA9FA82265;
	Wed, 25 Mar 2026 14:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zl0QjE72vTlE; Wed, 25 Mar 2026 14:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83CB382202
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774450727;
	bh=Nl+Hvi8kTUcVJwNVqmC91MI1nwpttvGtKQsNhkFrI7c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ScVy1NLe1eKrxOLXtAkuj//SIziEcE97KRlSxxbq9dfBhuR30SoxIrPadmCfpgpZF
	 c0pLyBXodvVycaGFCE7oQa2an5g1kQ33vgGPX+aj7ptyLnd6ESW9yMOhreoGklZIuE
	 Vh+Iiax3D8kZHO4p35eVtW0AKSijHCkJ32FXSG2fgTeX8oP/y4zZIkvfWGSpIcU7Vz
	 y0Texyue9ZwCrrcK/YQV2NavG5dFK2K85GTBsfEkg02Q5F+0f5LObil2S/CSeP+iqe
	 Cz/ueKUaZPeZmsG4z2Z1AnkB9o3It6U/Y02lvGab2mNAza19Q42WbHC3yOFRZo+YtS
	 aMvYV/w+7bwrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83CB382202;
	Wed, 25 Mar 2026 14:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 18737353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 14:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2978821E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 14:58:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i08Dd9jLzjM5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 14:58:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=77.108.111.100;
 helo=mail.amicon.ru; envelope-from=ade@amicon.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E531C821DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E531C821DF
Received: from mail.amicon.ru (mail.amicon.ru [77.108.111.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E531C821DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 14:58:41 +0000 (UTC)
Content-Language: en-US
Content-Type: multipart/alternative;
 boundary="_000_526feb2ed47f4d42b1f4662c67e52ef9amiconru_"
Received: from mail.amicon.lan (192.168.0.59) by mail.amicon.lan
 (192.168.0.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.27; Wed, 25 Mar
 2026 17:58:35 +0300
Received: from mail.amicon.lan ([::1]) by mail.amicon.lan ([::1]) with mapi id
 15.02.1544.027; Wed, 25 Mar 2026 17:58:35 +0300
From: =?koi8-r?B?4cfBzMHLz9cg5MHOycnM?= <ade@amicon.ru>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "lvc-project@linuxtesting.org"
 <lvc-project@linuxtesting.org>, =?koi8-r?B?6dPIwcvP1yDkwc7Jycw=?=
 <dish@amicon.ru>, =?koi8-r?B?8sHaz9cg8s/Nwc4=?= <rrv@amicon.ru>
Thread-Topic: [PATCH net 3/3] e1000e: fix endianness conversion of
 uninitialized words
Thread-Index: AQHcts+FllH1Jmrt6UiknmZfAnBjl7W+K5EAgAEz3G0=
Date: Wed, 25 Mar 2026 14:58:35 +0000
Message-ID: <526feb2ed47f4d42b1f4662c67e52ef9@amicon.ru>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-4-ade@amicon.ru>,
 <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
In-Reply-To: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
Accept-Language: en-US, ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.2.46]
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=amicon.ru; s=mail;
 c=simple/simple; 
 t=1774450716; h=from:subject:to:date:message-id;
 bh=/HgZcZFAwdoDbwVyQ1CjUQwWGag2+/u6831CiZfiDDc=;
 b=BJy4KogURxjp9ogVntZDvwZgIci1zGRAhh2TttqSX3DTwRoS+KBoNcF61mPGEYPruYddZoYxR71
 r6hrgCpnigdXLwdwg8Mj4hl7MACZPq4oua3kfGzKQvpSOamxsW09Na7ERuv2bNebCEB2LZQOys/iI
 TniOLLhPg0l+lSG1q9iG39yTSAqvgIjve9aafn7lHGJjNGhHWVxvwWGGHPwBBgo2CNvPJX+V3a1Rc
 o8eow4BLc3blXajFzAx+3fcEvhk/G5qzlw+1/WecXNdYCCuqGwo1wwy8sYwWI6m/j260/CS2OxBPk
 isViViStgtrtr2v30Kc2X7g2hSEjq1yYSfUA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amicon.ru
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amicon.ru header.i=@amicon.ru header.a=rsa-sha256
 header.s=mail header.b=BJy4KogU
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] e1000e: fix endianness
 conversion of uninitialized words
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amicon.ru : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linuxtesting.org:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ade@amicon.ru,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 44C7B3274F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--_000_526feb2ed47f4d42b1f4662c67e52ef9amiconru_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hi Tony,

Thanks for the review!

Regarding e1000e: the return value of e1000_read_eeprom() is already proper=
ly checked.
Therefore, for e1000e, I am only submitting the endianness conversion clean=
up as part
of a separate 'net-next' series. The functional fix for e1000 (missing retu=
rn value check)
will be sent as a standalone patch for the 'net' tree.

I'm also removing the Fixes: tags from the endianness cleanup patches since=
, as you noted,
the uninitialized data is eventually overwritten by memcpy() and doesn't ca=
use a functional
failure.

Best regards,
Daniil
________________________________
From: Tony Nguyen <anthony.l.nguyen@intel.com>
Sent: Wednesday, March 25, 2026 2:27:12 AM
To: =E1=C7=C1=CC=C1=CB=CF=D7 =E4=C1=CE=C9=C9=CC
Cc: Przemek Kitszel; Andrew Lunn; David S. Miller; Eric Dumazet; Jakub Kici=
nski; Paolo Abeni; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org=
; linux-kernel@vger.kernel.org; lvc-project@linuxtesting.org; =E9=D3=C8=C1=
=CB=CF=D7 =E4=C1=CE=C9=C9=CC; =F2=C1=DA=CF=D7 =F2=CF=CD=C1=CE
Subject: Re: [PATCH net 3/3] e1000e: fix endianness conversion of uninitial=
ized words



On 3/18/2026 5:05 AM, Agalakov Daniil wrote:
> [Why]
> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> words. However, only the boundary words (the first and the last) are
> populated from the EEPROM if the write request is not word-aligned.
> The words in the middle of the buffer remain uninitialized because they
> are intended to be completely overwritten by the new data via memcpy().
>
> The previous implementation had a loop that performed le16_to_cpus()
> on the entire buffer. This resulted in endianness conversion being
> performed on uninitialized memory for all interior words.
>
> Fix this by converting the endianness only for the boundary words
> immediately after they are successfully read from the EEPROM.
>
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")

AI Review reports:

The commit message cites the initial git repository commit 1da177e4c3f4
("Linux-2.6.12-rc2") from 2005 as the source of the bug. However, the
e1000e driver wasn't introduced until 2007 in commit bc7f75fa9788
("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices
only)"). While the e1000 driver did have this bug pattern in the initial
commit, this patch fixes the e1000e driver, which is a separate driver.

Should the Fixes: tag reference bc7f75fa9788 instead, since that's when
the buggy pattern was first introduced in e1000e?

Also, the same comment from the e1000 patch applies here. I think this
patch should be split like the e1000 ones with the return value going to
*-net and the endian to *-next.

Thanks,
Tony


> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 19 ++++++++++++-------
>   1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/et=
hernet/intel/e1000e/ethtool.c
> index dbed30943ef4..a8b35ae41141 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -583,20 +583,25 @@ static int e1000_set_eeprom(struct net_device *netd=
ev,
>                /* need read/modify/write of first changed EEPROM word */
>                /* only the second byte of the word is being modified */
>                ret_val =3D e1000_read_nvm(hw, first_word, 1, &eeprom_buff=
[0]);
> +             if (ret_val)
> +                     goto out;
> +
> +             /* Device's eeprom is always little-endian, word addressabl=
e */
> +             le16_to_cpus(&eeprom_buff[0]);
> +
>                ptr++;
>        }
> -     if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))
> +     if ((eeprom->offset + eeprom->len) & 1) {
>                /* need read/modify/write of last changed EEPROM word */
>                /* only the first byte of the word is being modified */
>                ret_val =3D e1000_read_nvm(hw, last_word, 1,
>                                         &eeprom_buff[last_word - first_wo=
rd]);
> +             if (ret_val)
> +                     goto out;
>
> -     if (ret_val)
> -             goto out;
> -
> -     /* Device's eeprom is always little-endian, word addressable */
> -     for (i =3D 0; i < last_word - first_word + 1; i++)
> -             le16_to_cpus(&eeprom_buff[i]);
> +             /* Device's eeprom is always little-endian, word addressabl=
e */
> +             le16_to_cpus(&eeprom_buff[last_word - first_word]);
> +     }
>
>        memcpy(ptr, bytes, eeprom->len);
>


--_000_526feb2ed47f4d42b1f4662c67e52ef9amiconru_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<div>Hi Tony,</div>
<div><br>
</div>
<div>Thanks for the review!</div>
<div><br>
</div>
<div>Regarding e1000e: the return value of e1000_read_eeprom() is already p=
roperly checked.</div>
<div>Therefore, for e1000e, I am only submitting the endianness conversion =
cleanup&nbsp;as part</div>
<div>of a separate 'net-next' series. The functional fix for e1000 (missing=
 return value check)</div>
<div>will be sent as a standalone patch for the 'net' tree.</div>
<div><br>
</div>
<div>I'm also removing the Fixes: tags from the endianness cleanup patches =
since, as you noted,</div>
<div>the uninitialized data is eventually overwritten by memcpy() and doesn=
't cause a functional</div>
<div>failure.</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Daniil</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Tony Nguyen &lt;ant=
hony.l.nguyen@intel.com&gt;<br>
<b>Sent:</b> Wednesday, March 25, 2026 2:27:12 AM<br>
<b>To:</b> =E1=C7=C1=CC=C1=CB=CF=D7 =E4=C1=CE=C9=C9=CC<br>
<b>Cc:</b> Przemek Kitszel; Andrew Lunn; David S. Miller; Eric Dumazet; Jak=
ub Kicinski; Paolo Abeni; intel-wired-lan@lists.osuosl.org; netdev@vger.ker=
nel.org; linux-kernel@vger.kernel.org; lvc-project@linuxtesting.org; =E9=D3=
=C8=C1=CB=CF=D7 =E4=C1=CE=C9=C9=CC; =F2=C1=DA=CF=D7 =F2=CF=CD=C1=CE<br>
<b>Subject:</b> Re: [PATCH net 3/3] e1000e: fix endianness conversion of un=
initialized words</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
<br>
On 3/18/2026 5:05 AM, Agalakov Daniil wrote:<br>
&gt; [Why]<br>
&gt; In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of=
<br>
&gt; words. However, only the boundary words (the first and the last) are<b=
r>
&gt; populated from the EEPROM if the write request is not word-aligned.<br=
>
&gt; The words in the middle of the buffer remain uninitialized because the=
y<br>
&gt; are intended to be completely overwritten by the new data via memcpy()=
.<br>
&gt; <br>
&gt; The previous implementation had a loop that performed le16_to_cpus()<b=
r>
&gt; on the entire buffer. This resulted in endianness conversion being<br>
&gt; performed on uninitialized memory for all interior words.<br>
&gt; <br>
&gt; Fix this by converting the endianness only for the boundary words<br>
&gt; immediately after they are successfully read from the EEPROM.<br>
&gt; <br>
&gt; Found by Linux Verification Center (linuxtesting.org) with SVACE.<br>
&gt; <br>
&gt; Fixes: 1da177e4c3f4 (&quot;Linux-2.6.12-rc2&quot;)<br>
<br>
AI Review reports:<br>
<br>
The commit message cites the initial git repository commit 1da177e4c3f4<br>
(&quot;Linux-2.6.12-rc2&quot;) from 2005 as the source of the bug. However,=
 the<br>
e1000e driver wasn't introduced until 2007 in commit bc7f75fa9788<br>
(&quot;[E1000E]: New pci-express e1000 driver (currently for ICH9 devices<b=
r>
only)&quot;). While the e1000 driver did have this bug pattern in the initi=
al<br>
commit, this patch fixes the e1000e driver, which is a separate driver.<br>
<br>
Should the Fixes: tag reference bc7f75fa9788 instead, since that's when<br>
the buggy pattern was first introduced in e1000e?<br>
<br>
Also, the same comment from the e1000 patch applies here. I think this <br>
patch should be split like the e1000 ones with the return value going to <b=
r>
*-net and the endian to *-next.<br>
<br>
Thanks,<br>
Tony<br>
<br>
<br>
&gt; Co-developed-by: Iskhakov Daniil &lt;dish@amicon.ru&gt;<br>
&gt; Signed-off-by: Iskhakov Daniil &lt;dish@amicon.ru&gt;<br>
&gt; Signed-off-by: Agalakov Daniil &lt;ade@amicon.ru&gt;<br>
&gt; ---<br>
&gt;&nbsp;&nbsp; drivers/net/ethernet/intel/e1000e/ethtool.c | 19 &#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;-------<br>
&gt;&nbsp;&nbsp; 1 file changed, 12 insertions(&#43;), 7 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net=
/ethernet/intel/e1000e/ethtool.c<br>
&gt; index dbed30943ef4..a8b35ae41141 100644<br>
&gt; --- a/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
&gt; &#43;&#43;&#43; b/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
&gt; @@ -583,20 &#43;583,25 @@ static int e1000_set_eeprom(struct net_devic=
e *netdev,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* need read/modify/write of first changed EEPROM word =
*/<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* only the second byte of the word is being modified *=
/<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ret_val =3D e1000_read_nvm(hw, first_word, 1, &amp;eepr=
om_buff[0]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (ret_val)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /* Device's eeprom is always little-endian, word addressable */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; le16_to_cpus(&amp;eeprom_buff[0]);<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ptr&#43;&#43;;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (((eeprom-&gt;offset &#43; eeprom-&gt;len=
) &amp; 1) &amp;&amp; (!ret_val))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if ((eeprom-&gt;offset &#43; eeprom-&gt;=
len) &amp; 1) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* need read/modify/write of last changed EEPROM word *=
/<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* only the first byte of the word is being modified */=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ret_val =3D e1000_read_nvm(hw, last_word, 1,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;eeprom_buff[last_word - first_word]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (ret_val)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;<br>
&gt;&nbsp;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (ret_val)<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; goto out;<br>
&gt; -<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; /* Device's eeprom is always little-endian, =
word addressable */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; last_word - first_word =
&#43; 1; i&#43;&#43;)<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; le16_to_cpus(&amp;eeprom_buff[i]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /* Device's eeprom is always little-endian, word addressable */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; le16_to_cpus(&amp;eeprom_buff[last_word - first_word]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; memcpy(ptr, bytes, eeprom-&g=
t;len);<br>
&gt;&nbsp;&nbsp; <br>
<br>
</div>
</span></font>
</body>
</html>

--_000_526feb2ed47f4d42b1f4662c67e52ef9amiconru_--
