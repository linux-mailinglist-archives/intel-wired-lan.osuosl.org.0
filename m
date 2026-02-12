Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wO+sAiuajWnU5AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 10:15:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E1E12BCB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 10:15:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 685C541D6A;
	Thu, 12 Feb 2026 09:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H3BPKgwPYR1H; Thu, 12 Feb 2026 09:15:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 922FE41D61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770887717;
	bh=NBQ0um2OOklXClR8+J1qD5vX1aCXhThrgaK/pCpwCg8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fQxSqzNna1OlFobzLPtwRYbeMJ3l+3Rvc/W64Y0vxENXIRsR9d2/Fc4uLTMPyDanl
	 iU7llWvCac6iiRWJTAHoTM2m19uEv2TGMmJ75yg4RBnxYl/01OuPSBpn+2OOkBLkdU
	 heVM/hdG6lZASp7f972Ox2grWPk0eLxirNPFMYDZQnb93q+lnFonjnq3LgrGN2LI3S
	 3Pl+pcateToghsb2x4t2LA87SVuX4DTu4u2VimSRkHdzcEUtARTAG3GQQZb8Bz0zgJ
	 YaXn5mO9b+Kf3SpBG5q8vB+p18sXzwXIJzq0nkOmgAWGIBJfjBsvxBghWpcQt2Es5w
	 DBzj5t1b1seGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 922FE41D61;
	Thu, 12 Feb 2026 09:15:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 092B6BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 09:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD74941D5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 09:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id njbHqDJNuCpz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 09:15:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.52;
 helo=mail-lf1-f52.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5329341D32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5329341D32
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5329341D32
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 09:15:14 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-59e62834439so1530872e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 01:15:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770887712; x=1771492512;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NBQ0um2OOklXClR8+J1qD5vX1aCXhThrgaK/pCpwCg8=;
 b=evneUA5x0u00qck8/bkOGXPTngYMcDrW76m/EgnlUCEpl4GNrhfWnhbfy3h7NEuwTV
 OdWtu2EXp3XFIG2ypfMuv02v5Zb+2QO0NEAToopPGEGpoB5RiCuuBDO0MK/IS8l5ptYt
 EtuWye254AZhGF2NHGMv7DYx1d7rzifk8pwRALIedCm7/UIr1nLeOYCiOOQiunf+fQJ6
 1F8Dj6y7sgXdelebANJ8vd9SfPUb9RKSKwzodursapIcYAXYfnSNapblOEv5mGHsfn24
 vHiKIVr169x4OXct3TvJfLR9gl603W7FWNpXalNI4kOwsLs6rIKRha+SXLSMpTAAwwTm
 JHPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRKdDQDhBk6ZEfrJu6l8sJSxCMPgM2IOzJZ3Hk1AD2AZT0iB+v2Lnk26f39PKSiZkTPCRRuuHVuxj1nJQ0WyA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzdTvx7iGHKV/wDQ5LpfOITA6fSz3CqzhcH7JCL8NFRvIRAn664
 PUz+516VGitR781kvc09g05VmPqK/df9wEZQKD6Ab5c+kv8b7BrQHuah
X-Gm-Gg: AZuq6aLule6IWePZlMaD8+voENg9wBrEdqMmIFuhRRAVuDR5TveB7FS5Vxu/WxKxnoW
 z4Dz1H4d8rOlS6hrzviBSYsiyLkAiQT5RvCzWDo/rgLFg+i9kzMdawbmDtqEPEyCGId/DLnUV5Z
 gCP6vcaP8d9WaC5P68Izlk5TligNlulHH4r38cNEo1FTmg4KK0psDEa8h1obCVXnS2uMasqXmRh
 3sA55u3Y0y5btxLR1BKcNCPq7m9R3GcsKNbJ8G39nTEIb4tTiiWgP43E+jvt7rKvJSyRcDaFdqI
 2dF/OsMK+9CTX4a1sUEsYgqZ6WXbIWRAPbASDDpVHF2bfQJZOCEqgs+t2NNJMym/6Ps4UwqFTic
 Bzjuq6FTQ8967vNipXiV3YwmHT4aychwfT6mYL1VjndzPjPoFFmOHxuQmbOiqHHomPkO0ddBxua
 olxFO/rNSm8OXUIXslvj2U3Eb7STS1/wF1yNgPdKHfRkYbWSpvwpa79ZVJSDuc1fFOfUM8Nrc=
X-Received: by 2002:a05:6512:ad5:b0:59e:56f3:6c8e with SMTP id
 2adb3069b0e04-59e64011da2mr764476e87.11.1770887711569; 
 Thu, 12 Feb 2026 01:15:11 -0800 (PST)
Received: from onyx.my.domain (n5eie63pn7902kdzuba-1.v6.elisa-mobile.fi.
 [2001:999:500:839e:5994:7818:d9ee:a136])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59e5f5a50c2sm847173e87.45.2026.02.12.01.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Feb 2026 01:15:11 -0800 (PST)
Date: Thu, 12 Feb 2026 11:15:06 +0200
From: Timo Teras <timo.teras@iki.fi>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>, Todd Brandt
 <todd.e.brandt@intel.com>, David Box <david.e.box@linux.intel.com>, Len
 Brown <lenb@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <marmarek@invisiblethingslab.com>, <jeremie.wenger@edu.ge.ch>
Message-ID: <20260212111506.16bc402a@onyx.my.domain>
In-Reply-To: <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:vitaly.lifshits@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[iki.fi];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[timo.teras@iki.fi,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,onyx.my.domain:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[timo.teras@iki.fi,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D1E1E12BCB4
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 15:11:58 +0200
"Ruinskiy, Dima" <dima.ruinskiy@intel.com> wrote:

> On 10/02/2026 13:11, Timo Teras wrote:
> >=20
> > This seems to retrigger the malfunction on a Dell Pro 16 Plus PB16250 l=
aptop.
> >=20
> > CPU Interl Core Ultra 5 235U
> > CPU family 6 model 181 stepping 0
> >=20
> > On Mon,  2 Feb 2026 12:32:57 +0200
> > Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> >  =20
> >> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> >> disabled K1 by default on Meteor Lake and newer systems due to packet
> >> loss observed on various platforms. However, disabling K1 caused an
> >> increase in power consumption due to blocking PC10 state.
> >>
> >> To mitigate this, reconfigure the PLL clock gate value so that K1 can
> >> remain enabled without incurring the additional power consumption.
> >>
> >> Link: https://bugzilla.kernel.org/show_bug.cgi?id=3D220954
> >> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> >> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> >> ---
>=20
> We do not currently have exactly such a setup as you mentioned. I will=20
> see if I can procure one for testing.
>=20
> The PLL timeout change proposed in this patch successfully resolved the=20
> original issue on a couple of systems in our lab that were previously=20
> experiencing it, while keeping K1 enabled.

Is there other PLL timeout value to test?

> With this patch, and manually disabling K1 via the private flag, does=20
> the issue on your Dell laptop disappear? I expect it would.

Yes, it disappears in this case.

> We are aware that there are some systems in the field, for which we are=20
> unable to fully solve the Rx packet performance issue with K1 active.
>=20
> On the other hand, disabling it exposes us to a power penalty more=20
> significant that the K1 itself - blocking PC10 affects the power usage=20
> of the entire system, which, in turn, may prevent compliance with=20
> various regulations, such as Energy Star.
>
> At the moment we do not have a configuration that allows us to achieve=20
> optimal performance and optimal power settings on 100% of the systems,=20
> so the K1 control flag has to stay. The only question here is that of=20
> the default value.
>=20
> The PLL change further reduces the percentage of systems suffering from=20
> Rx packet drop. Choosing between a default value that blocks PC10 in all=
=20
> situations, versus one that deteriorates LAN connectivity in a small %=20
> of cases, the latter seems the better way.

If you look at the earlier issues, the regression happened on numerous
devices. You have been able to verify one or two devices? I was able to
report that one is still broken. Changes are that there are also other
devices that will regress with this change.

This patch has two changes:
 - configure PLL timeout
 - change K1 default mode for specific models

The PLL timeout change is independent and good to go.

The K1 default mode changing is wide. Perhaps the change could be
scoped to SOCs that are known to be good?

Alternatively, the original change that caused this in the first place
is commit efaaf344 "e1000e: change k1 configuration on MTP and later platfo=
rms"
is the K1 exit timeout changed there something that could be tuned
differently?

There was also never reply to the question on how likely / large issue
the potential Rx packet drop is? How many units it may affect?

=46rom the earlier discussion we know that the "network does not work
after cable unplug/plug" issue this causes is affecting multiple different
vendors and is a *major* problem.

Thanks for considering and on the continued assistance on determining
the root cause why these devices are affected.

If you end up changing K1 default, please add a mechanism to add
quirks on how to disable it on affected systems without needing user
space configuration. I find it unacceptable that userspace needs to
be modified to fix kernel driver behavior on known bad devices.

Timo


