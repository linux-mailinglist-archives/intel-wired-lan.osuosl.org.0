Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MjrGg6J82md4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 195704A60D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAD5442BBC;
	Thu, 30 Apr 2026 16:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7w51Pys2NPoj; Thu, 30 Apr 2026 16:53:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 721E542BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568011;
	bh=FAU+laBnEtUtqsKtQVHrzB08mfX6f6gr6ykNiU5Tq5Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J0a3JFLWnTUIFDiXCJ4ItsBMX8UISLotIZOoxQ0Oz/PPyOgkyedhOD2oFYZDqWAZw
	 tnvS6d04AzhOBeTd4K78vDEi9QAPD/tMn0wInVMmwLD1ULK8JskxaPifTf/bYDQPrG
	 0szzCMCt+r5FTBPqE8RXhHzguuFTVdn4NmqPomxbEFWwYYS9NTqUhufHVwKacdZFQ8
	 GFbpLF26/hT16QvxZcOm7WjzqqT2b/yNGl3VYkFG4Ya53cwgCGFzzQAC59qNfh+OO4
	 WpFRknWtoWuxBjxRsrSlONk2AlB2QGjYD3qTuNFxUb7h1+1kiJlEW1G0Lfb/13wy+2
	 dhHjBsWrBYWqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 721E542BD6;
	Thu, 30 Apr 2026 16:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DEB72192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3EA160F4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1dc8Lotay6k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 13:13:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=ukleinek@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 48A3660F47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48A3660F47
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48A3660F47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:13:17 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4891c00e7aeso8197325e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 06:13:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777554796; x=1778159596;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FAU+laBnEtUtqsKtQVHrzB08mfX6f6gr6ykNiU5Tq5Q=;
 b=TYzE2jtroITgm0gcbHspIMGOe6IV5aCBBQSwi+49NNeFmth5ncDFgCI/NLiMBQhVkE
 uQCjB3TPhw+V+/KVRdYEF1ayDy0AhOPFIG4YfAvkRChEm5DRcTbcjf381faDReebmVzy
 +YOZFpN7ZJjihSxUUURlyIN3GwoMGpvHa9tQP3sIz3nozPj3e+8YG9gFYmA/Ow2SHPc/
 HSdu1Ry0L6/eSXACXKXvOC6JJJDsnvO9bwYwquLN4Rne/vqb2P9f6TOPgsnsAQuL8yht
 bpNuP8K0FJlAZTBEH3b6pSUqbwA3X4qNptcKlJMDDtSp825gq3UEjjfcC0p8BZON4E2q
 +Axg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+3goFROs64wJcy7Aex4r8SIoNxWMFvTCy/MD3P8u4LdF3IEB/iONGj6FkQlilTJxuaktIJrYa89J2XfZqWZwA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzsn/wOza/7i23ywJMrJgS656t4a6v2JT9dtvKzRRzpwjCtFB6f
 9+SY+ki1lXkMt+xcDUu8GWNTohi3X9sLUrr70G7w16CdZVE278wwZndrWvAneZ+OA7k=
X-Gm-Gg: AeBDievRdsFYnEwelwdiFZ3JaQ+dYxUFUZQ7TGIMRBw6CetHsdBQCdJApD2SOtlLfBu
 KRvdhPKSAzC+WgBDipel5gvDhAjoHmG97ryUqHrWy0duuxrcSbI6+FJajHhWwS/IA+Ds6I/Qpvy
 AKtqJUiCI0YGr+kMefY6Zz/aZ5991Mbhxdd6vdi6Tmd3rOQmEVpfI5PlAHAF0jr4Ac31QCLvhP9
 t0xup3IQrHXEb9e33iqg2enTuODfb9n//GCI/p0FTvj70+6TbfehWuOcHlwQVIq9yOL8M+yTGR0
 LsZPviuQUJkBGNfAMIIOI8idJYoS257PbtcJy3DViJNSq3iniagsE8+1VzjRPWV/L2+BH0h/xY4
 G9y207i71aUT8QRRyMd5voDqABX+GFILgRAPievSZ0VL3atFIlC8WGFB0CZ+cdC4P/A8lzh+xIi
 6e5p6mPTIB/O/dnShru+l7OkhLktqiVIlDz00PjAKV20X5/7YLf74W7grSn+gJr7iwm9Pq/pD7I
 kZ84ayAsU/x/nNJl/8NnyAZLA==
X-Received: by 2002:a05:600c:1382:b0:488:a977:8d6 with SMTP id
 5b1f17b1804b1-48a84458db6mr47509015e9.19.1777554795369; 
 Thu, 30 Apr 2026 06:13:15 -0700 (PDT)
Received: from localhost
 (p200300f65f114e0859f76ff87a50eb14.dip0.t-ipconnect.de.
 [2003:f6:5f11:4e08:59f7:6ff8:7a50:eb14])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-48a7b912ee3sm74461355e9.2.2026.04.30.06.13.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2026 06:13:14 -0700 (PDT)
Date: Thu, 30 Apr 2026 15:13:13 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Jijie Shao <shaojijie@huawei.com>
Message-ID: <afNUNeIsN4MrjWN7@monoceros>
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
 <814632c8-070b-4b21-adbb-5a01a62d52f2@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="eswuwmcxtpmq7cnr"
Content-Disposition: inline
In-Reply-To: <814632c8-070b-4b21-adbb-5a01a62d52f2@huawei.com>
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1777554796; x=1778159596;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FAU+laBnEtUtqsKtQVHrzB08mfX6f6gr6ykNiU5Tq5Q=;
 b=cevolYYt5SeJzXbiOyTDQdt6BuxzIR2wQ6rpvc9uX4QKwm2I+FOzE7EOz+B2H/dhNY
 vJf61V7eQ4u97IyO1pVq8akxdNnchArvBOXXZdmyfnxTV5jBTBBwvwjvDF+jcsbOI8a4
 +kOnnwssR9cBThtoietMCTRvQuai9suGrTK99hkuUgF5leJFByKcniwKrsE/rL9BLUZr
 MHm9yZ9HapN7uNhPx7ZGYVaD0KB1qtgfFn7pP6lq5nsWIqEJ5O/xJoQkVdRT58/7FKnl
 9g8DPVnhhL+nWMi2xQ/6dDfVtkS7b6xOXlQkzBBbUjG+AfGCAiTxWqt3DZXg7GrfjqnO
 Jeuw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=cevolYYt
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: Consistently define
 pci_device_ids using named initializers
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Randy Dunlap <rdunlap@infradead.org>, Yonglong Liu <liuyonglong@huawei.com>,
 Kees Cook <kees@kernel.org>, linux-wireless@vger.kernel.org,
 Larysa Zaremba <larysa.zaremba@intel.com>, Joe Damato <joe@dama.to>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Mengyuan Lou <mengyuanlou@net-swift.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Yeounsu Moon <yyyynoom@gmail.com>, Manish Chopra <manishc@marvell.com>,
 Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Philipp Stanner <phasta@kernel.org>, Ido Schimmel <idosch@nvidia.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>, Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Mark Einon <mark.einon@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Zilin Guan <zilin@seu.edu.cn>,
 linux-can@vger.kernel.org, Yibo Dong <dong100@mucse.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>, Petr Machata <petrm@nvidia.com>,
 Kory Maincent <kory.maincent@bootlin.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Leon Romanovsky <leon@kernel.org>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 oss-drivers@corigine.com, Vincent Mailhol <mailhol@kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Jian Shen <shenjian15@huawei.com>,
 Ion Badulescu <ionut@badula.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Thomas Gleixner <tglx@kernel.org>, Simon Horman <horms@kernel.org>,
 Yicong Hui <yiconghui@gmail.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 195704A60D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shaojijie@huawei.com,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:joe@dama.to,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:m.grzeschik@pengutronix.de,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:enelsonmoore@gmail.com,m:phasta@kernel.org,m:idosch@nvidia.com,m:b
 harat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:mark.einon@gmail.com,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:ionut@badula.org,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mkl@pengutronix.de,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:khc@pm.waw.pl,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,baylibre.com:email,huawei.com:email];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,intel.com,dama.to,lists.linux.dev,brownhat.org,google.com,ti.com,tux.org,net-swift.com,farsite.co.uk,pengutronix.de,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,corigine.com,badula.org,lunn.ch,sipsolutions.net,davemloft.net,pm.waw.pl];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_GT_50(0.00)[79];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]


--eswuwmcxtpmq7cnr
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next] net: Consistently define pci_device_ids using
 named initializers
MIME-Version: 1.0

Hello,

On Thu, Apr 30, 2026 at 02:53:29PM +0800, Jijie Shao wrote:
> on 2026/4/29 1:18, Uwe Kleine-K=F6nig (The Capable Hub) wrote:
> > ... and PCI device helpers.
> >=20
> > The various struct pci_device_id arrays were initialized mostly by one
> > the PCI_DEVICE macros and then list expressions. The latter isn't easily
> > readable if you're not into PCI. Using named initializers is more
> > explicit and thus easier to parse.
> >=20
> > Also use PCI_DEVICE* helper macros to assign .vendor, .device,
> > .subvendor and .subdevice where appropriate and skip explicit
> > assignments of 0 (which the compiler takes care of).
> >=20
> > The secret plan is to make struct pci_device_id::driver_data an
> > anonymous union (similar to
> > https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@baylib=
re.com/)
> > and that requires named initializers. But it's also a nice cleanup on
> > its own.
> >=20
> > This change doesn't introduce changes to the compiled pci_device_id
> > arrays. Tested on x86 and arm64.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig (The Capable Hub) <u.kleine-koenig@ba=
ylibre.com>
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/hisilicon/hibmcge/hbg_main.c b/driver=
s/net/ethernet/hisilicon/hibmcge/hbg_main.c
> > index 068da2fd1fea..b3e01b2f8319 100644
> > --- a/drivers/net/ethernet/hisilicon/hibmcge/hbg_main.c
> > +++ b/drivers/net/ethernet/hisilicon/hibmcge/hbg_main.c
> > @@ -489,7 +489,7 @@ static void hbg_shutdown(struct pci_dev *pdev)
> >   }
> >   static const struct pci_device_id hbg_pci_tbl[] =3D {
> > -	{PCI_VDEVICE(HUAWEI, 0x3730), 0},
> > +	{ PCI_VDEVICE(HUAWEI, 0x3730) },
> >   	{ }
> >   };
>=20
> Reviewed-by: Jijie Shao <shaojijie@huawei.com>

Thanks.

> > +	{
> > +		PCI_VDEVICE(HUAWEI, HNAE3_DEV_ID_GE),
> > +		.driver_data =3D 0,
> > +	}, {
> > +		PCI_VDEVICE(HUAWEI, HNAE3_DEV_ID_25GE),
> > +		.driver_data =3D 0,
>=20
> Thanks for your work.
>=20
> If .driver_data =3D 0, is it possible to delete it to be consistent with =
other parts, for example:
>=20
> { PCI_VDEVICE(HUAWEI, HNAE3_DEV_ID_GE) }
>=20
> > +	}, {
> > +		PCI_VDEVICE(HUAWEI, HNAE3_DEV_ID_25GE_RDMA),
> > +		.driver_data =3D HNAE3_DEV_SUPPORT_ROCE_DCB_BITS,

However keeping the explicit .driver_data =3D 0 to have a contrast to
other `pci_device_id`s having a non-zero .driver_data in the same driver
is also a good reason to keep the (technically redundant) assignment.
For other drivers I dropped these assignments if this is possible for
all array members.

Having said that I don't intend to rework the patch for this suggestion.

Best regards
Uwe

--eswuwmcxtpmq7cnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnzVWYACgkQj4D7WH0S
/k6Htwf7BvJ3rYQezsd5ccz+2MAtba8pHTB3I6pUsnO2mYagJg6HKmfMspgye4AX
BO1wngPAitkKYC0Y1QVjeL8mZpJnkiTKh5ZpywnJ5LC1/Y46vbJl1a7z45/l4MF2
zOsQls/uPpw8h/Dif+kH4laLc33EYUiN6uoPtEBvyJuZUfEXWMc6KHtzmIZnagla
mZcae0icKZUF5MyFeux8zVGWeLTcdBYGrtWUJ2x68bnP62MozIOSPUXTFkPxWruD
HFTrL81mQYbLfZ88SKlMyogAeA7UjBd5/MpVdnfzLm1viy3XHq/Y9eIDkr/WypiX
51YxF/Ol5KsTDi2naPCCB1uZE9k0xQ==
=gn92
-----END PGP SIGNATURE-----

--eswuwmcxtpmq7cnr--
