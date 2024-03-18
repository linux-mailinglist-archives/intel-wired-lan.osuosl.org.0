Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A1587EA09
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 14:25:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11BEA40A17;
	Mon, 18 Mar 2024 13:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3BqhmbBxIjUn; Mon, 18 Mar 2024 13:25:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C14CD409F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710768302;
	bh=gxBaZxVDLZCrwJigvKM8zzz/+ZEevtMgSs8pq9Bps94=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s46oA2lHK5cG/fBPK5tQxLYqUa3ST34xylRK03BdDJ+5YyYYFsslCCtqfQnIYi6Wr
	 bulI3c7ifh96M3Wp/mAAe7BdBLcRbmVchXD4ho3T+FL1sLLeOvPk2NxIoNYvMvLEHh
	 NC/JZA6PJXGQ/4ze5nKx1MXjNCRwuaxPX/xYlbFuK5fJgyLuvWxu06XSFfvQSSStUt
	 Ok5qFipSP1WKI4wSFfdlBLNANXtJLZSQiRCySkHYJrDwJbRkPpeYR+SMJJxr1P1UdZ
	 Lrya9CQbuNueA5juTwxQw5cYpHXu6IT8BC00uCtDopDgp8ZXc5pxXAv12Zy91sARfb
	 EU/j1DyYvRA5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C14CD409F3;
	Mon, 18 Mar 2024 13:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DD6D1BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 13:25:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B194C80B96
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 13:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Zxr-m1bQMrp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 13:25:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52a; helo=mail-ed1-x52a.google.com;
 envelope-from=ulrich.weber@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5FAE280B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FAE280B1A
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FAE280B1A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 13:24:59 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-5687e7662a5so5842009a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 06:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710768297; x=1711373097;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gxBaZxVDLZCrwJigvKM8zzz/+ZEevtMgSs8pq9Bps94=;
 b=DpbD/87ifawOmOCuT+REpaO7Yenm5HxjuIEpaz37yxjT9Vk1KlOGvBsH6tfN5sta/O
 cRYe5v0ZURs6Ai8N6eXKrZKI8WX2LJVOjz4XUU5FDkFLpH0XNj8M5CBSGr+LDfWUJjwp
 c1LR6Q9c+6LfJmlWW84tGMrSp4RXL5//JuFgMtrk9e88UV0KVJAZ+6uN/FHhPDtM8JZ+
 CGgMwHEtZq4hqk/pOPcFjRAlN+/iPxNaX1ct4H3+rKZIXswM3BIbDDAlJlD8Et03hBEW
 GwfMxKT3CrREnShcN0NgajYiMfl+Ofn4ZHq+h7Hy0lcZTVK4+hHL2HR8sHpn7EpqJgNx
 kONg==
X-Gm-Message-State: AOJu0YzrXjm+Nj1n3+cM91Kd4janIIY03/GXVO3s63fkTOfZfll8mYyf
 r/EY2vK5HFIvZPxTUnhUthKvoa2dt/kFDa2Mlh+6vn3jud3fmdj7
X-Google-Smtp-Source: AGHT+IEhYg1jCgcfk/4gedRvRs+VyaSTvpG4b50Ifr973UY/MHxsQYaG9CuglNtBg30VI67lONkWyw==
X-Received: by 2002:a05:6402:1ccd:b0:566:c167:4ac1 with SMTP id
 ds13-20020a0564021ccd00b00566c1674ac1mr8882454edb.26.1710768296674; 
 Mon, 18 Mar 2024 06:24:56 -0700 (PDT)
Received: from smtpclient.apple ([2001:16b8:a6b4:3200:ba27:ebff:fea2:5693])
 by smtp.gmail.com with ESMTPSA id
 ck5-20020a0564021c0500b00568d37c53fbsm1557892edb.78.2024.03.18.06.24.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Mar 2024 06:24:56 -0700 (PDT)
From: Ulrich Weber <ulrich.weber@gmail.com>
Message-Id: <862BB94C-2EC6-4609-964E-8E4DCF70EA98@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_418E0241-F043-45CA-8726-8B6ABB022E66"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.1\))
Date: Mon, 18 Mar 2024 14:24:45 +0100
In-Reply-To: <0f9e719a-04bc-0dbf-637b-ff5914de0875@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240314091513.25984-1-ulrich.weber@gmail.com>
 <0f9e719a-04bc-0dbf-637b-ff5914de0875@intel.com>
X-Mailer: Apple Mail (2.3731.700.6.1.1)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710768297; x=1711373097; darn=lists.osuosl.org;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=gxBaZxVDLZCrwJigvKM8zzz/+ZEevtMgSs8pq9Bps94=;
 b=KnvXSejLx0OiFDh+B0VwmFBJmeXqqnCuqRe4wyQSWMVwGafwb8XKqJsV+D/KWIe6CD
 zqsX1+VHc6mEylvFgDA69O5/+Vl6v+0sK2QD8oNzkG/0nDdJ7smk3Q749VnRphZVOqJS
 XzJa/T7qEmpsK5fYNiuWUPVAy1n7ekNMRXAMoYXrn0iRAQRRDjeuedulginVTfV172D7
 XYNSlGZgwcWvsR4VxQyQpeTjRI6pOYNaOVcOzs5LGfN+J2ZA/4snQiuHrB6pZ4qYGZ2g
 6IFvELEqgqJrzi1kTRuxjoZ+tRlCdH+/YJtvQcEyCSXCwps+axD7dp6z6gBEL/uhS1mD
 LNpA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KnvXSejL
Subject: Re: [Intel-wired-lan] [PATCH] ice: set ethtool autoneg based on
 active cfg
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--Apple-Mail=_418E0241-F043-45CA-8726-8B6ABB022E66
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Tony,

> On 15. Mar 2024, at 22:39, Tony Nguyen <anthony.l.nguyen@intel.com> =
wrote:
>=20
>=20
>=20
> On 3/14/2024 2:15 AM, Ulrich Weber wrote:
>> Current logic uses ICE_AQ_AN_COMPLETED information to
>> flag if autonegotiation is enabled or disabled.
>> Since new ethtool netlink interface checks if there is
>> a configuration change or not and ignores the call, if
>> there is no change, this makes is impossible to disable
>> autonegotiation on links without established autoneg.
>> This will change the logic to check the active phy
>> configuration if autoneg is enabled or not.
>=20
> Sounds like a bug fix, so you should target this to 'iwl-net' and also =
add a Fixes:
>=20
>> Signed-off-by: Ulrich Weber <ulrich.weber@gmail.com =
<mailto:ulrich.weber@gmail.com>>
>> ---
>>  src/ice_ethtool.c | 10 +++++-----
>=20
> What tree are you using? This is not a kernel path.
Wasn=E2=80=99t sure about where the patches should apply to,
So I used the latest sf release. Will adopt to net-next then.

>=20
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>> diff --git a/src/ice_ethtool.c b/src/ice_ethtool.c
>> index e1eeb16babb3..8fe475944f2c 100644
>> --- a/src/ice_ethtool.c
>> +++ b/src/ice_ethtool.c
>> @@ -2857,10 +2857,6 @@ ice_get_link_ksettings(struct net_device =
*netdev,
>>  	else
>>  		ice_get_settings_link_down(ks, netdev);
>>  -	/* set autoneg settings */
>> -	ks->base.autoneg =3D (hw_link_info->an_info & =
ICE_AQ_AN_COMPLETED) ?
>> -		AUTONEG_ENABLE : AUTONEG_DISABLE;
>> -
>>  	/* set media type settings */
>>    	switch (vsi->port_info->phy.media_type) {
>> @@ -2912,6 +2908,10 @@ ice_get_link_ksettings(struct net_device =
*netdev,
>>  	if (err)
>>  		goto done;
>>  +	/* set autoneg settings based on active configuration */
>> +	ks->base.autoneg =3D ice_is_phy_caps_an_enabled(caps) ?
>> +		AUTONEG_ENABLE : AUTONEG_DISABLE;
>=20
> Since this needs to move to after the PHY capabilities call anyways, =
it'd be nicer to put this with the rest of the autoneg code. You could =
probably utilize the existing ice_is_phy_caps_an_enabled check and not =
add a second call as well.
That=E2=80=99s what I tried first, but it didn=E2=80=99t work for me. =
That=E2=80=99s also the reason I changed the comment on the second =
ice_is_phy_caps_an_enabled() call.

I disabled autoeng by explicitly setting config.low_power_ctrl_an to 0:
ICE_AQC_REPORT_ACTIVE_CFG shows autoneg as disabled then,
while ICE_AQC_REPORT_TOPO_CAP_MEDIA shows it still as enabled.

Chers
 Ulrich

>=20
> Thanks,
> Tony
>=20
>> +
>>  	/* Set the advertised flow control based on the PHY capability =
*/
>>  	if ((caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) &&
>>  	    (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE)) {
>> @@ -2960,7 +2960,7 @@ ice_get_link_ksettings(struct net_device =
*netdev,
>>  		ethtool_link_ksettings_add_link_mode(ks, supported, =
FEC_RS);
>>  #endif /* ETHTOOL_GFECPARAM */
>>  -	/* Set supported and advertised autoneg */
>> +	/* Set supported and advertised autoneg based on media */
>>  	if (ice_is_phy_caps_an_enabled(caps)) {
>>  		ethtool_link_ksettings_add_link_mode(ks, supported, =
Autoneg);
>>  		ethtool_link_ksettings_add_link_mode(ks, advertising, =
Autoneg);


--Apple-Mail=_418E0241-F043-45CA-8726-8B6ABB022E66
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div =
dir=3D"auto" style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;"><div dir=3D"auto" =
style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; =
line-break: after-white-space;">Hi Tony,<br><div><br><blockquote =
type=3D"cite"><div>On 15. Mar 2024, at 22:39, Tony Nguyen =
&lt;anthony.l.nguyen@intel.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><meta charset=3D"UTF-8"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">On 3/14/2024 2:15 AM, Ulrich Weber =
wrote:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">Current logic uses ICE_AQ_AN_COMPLETED =
information to<br>flag if autonegotiation is enabled or =
disabled.<br>Since new ethtool netlink interface checks if there is<br>a =
configuration change or not and ignores the call, if<br>there is no =
change, this makes is impossible to disable<br>autonegotiation on links =
without established autoneg.<br>This will change the logic to check the =
active phy<br>configuration if autoneg is enabled or =
not.<br></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">Sounds =
like a bug fix, so you should target this to 'iwl-net' and also add a =
Fixes:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">Signed-off-by: Ulrich Weber &lt;<a =
href=3D"mailto:ulrich.weber@gmail.com">ulrich.weber@gmail.com</a>&gt;<br>-=
--<br>&nbsp;src/ice_ethtool.c | 10 +++++-----<br></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">What tree are you using? This is not a =
kernel path.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"></div></blockquote>Wasn=E2=80=99t sure about where the patches =
should apply to,</div><div>So I used the latest sf release. Will adopt =
to net-next then.</div><div><br><blockquote type=3D"cite"><div><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><blockquote =
type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">&nbsp;1 file changed, 5 insertions(+), 5 deletions(-)<br>diff =
--git a/src/ice_ethtool.c b/src/ice_ethtool.c<br>index =
e1eeb16babb3..8fe475944f2c 100644<br>--- a/src/ice_ethtool.c<br>+++ =
b/src/ice_ethtool.c<br>@@ -2857,10 +2857,6 @@ =
ice_get_link_ksettings(struct net_device *netdev,<br>&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>else<br>&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span><span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span>ice_get_settings_link_down(ks, netdev);<br>&nbsp;-<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>/* set =
autoneg settings */<br>-<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>ks-&gt;base.autoneg =3D =
(hw_link_info-&gt;an_info &amp; ICE_AQ_AN_COMPLETED) ?<br>-<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>AUTONEG_ENABLE : AUTONEG_DISABLE;<br>-<br>&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>/* set =
media type settings */<br>&nbsp;&nbsp;&nbsp;<span class=3D"Apple-tab-span"=
 style=3D"white-space: pre;">	</span>switch =
(vsi-&gt;port_info-&gt;phy.media_type) {<br>@@ -2912,6 +2908,10 @@ =
ice_get_link_ksettings(struct net_device *netdev,<br>&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>if =
(err)<br>&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span><span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span>goto done;<br>&nbsp;+<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>/* set autoneg settings based on =
active configuration */<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>ks-&gt;base.autoneg =3D =
ice_is_phy_caps_an_enabled(caps) ?<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>AUTONEG_ENABLE : =
AUTONEG_DISABLE;<br></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">Since =
this needs to move to after the PHY capabilities call anyways, it'd be =
nicer to put this with the rest of the autoneg code. You could probably =
utilize the existing ice_is_phy_caps_an_enabled check and not add a =
second call as well.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"></div></blockquote><div>That=E2=80=99s what I =
tried first, but it didn=E2=80=99t work for me. That=E2=80=99s also the =
reason I changed the comment on the =
second&nbsp;ice_is_phy_caps_an_enabled() =
call.</div><div><br></div><div>I disabled autoeng by explicitly =
setting&nbsp;config.low_power_ctrl_an to =
0:</div><div>ICE_AQC_REPORT_ACTIVE_CFG shows autoneg as disabled =
then,</div><div>while&nbsp;ICE_AQC_REPORT_TOPO_CAP_MEDIA shows it still =
as =
enabled.</div><div><br></div><div>Chers</div><div>&nbsp;Ulrich</div><br><b=
lockquote type=3D"cite"><div><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline =
!important;">Thanks,</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline =
!important;">Tony</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><blockquote type=3D"cite" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">+<br>&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>/* Set the advertised flow =
control based on the PHY capability */<br>&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>if =
((caps-&gt;caps &amp; ICE_AQC_PHY_EN_TX_LINK_PAUSE) =
&amp;&amp;<br>&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span><span =
class=3D"Apple-converted-space">&nbsp;</span>&nbsp;&nbsp;&nbsp;(caps-&gt;c=
aps &amp; ICE_AQC_PHY_EN_RX_LINK_PAUSE)) {<br>@@ -2960,7 +2960,7 @@ =
ice_get_link_ksettings(struct net_device *netdev,<br>&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>ethtool_link_ksettings_add_link_mode(ks, supported, =
FEC_RS);<br>&nbsp;#endif /* ETHTOOL_GFECPARAM */<br>&nbsp;-<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>/* Set =
supported and advertised autoneg */<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>/* Set supported and advertised =
autoneg based on media */<br>&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>if =
(ice_is_phy_caps_an_enabled(caps)) {<br>&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>ethtool_link_ksettings_add_link_mode(ks, supported, =
Autoneg);<br>&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span><span class=3D"Apple-tab-span" style=3D"white-space: =
pre;">	</span>ethtool_link_ksettings_add_link_mode(ks, advertising, =
Autoneg);</blockquote></div></blockquote></div><br></div></div></body></ht=
ml>=

--Apple-Mail=_418E0241-F043-45CA-8726-8B6ABB022E66--
