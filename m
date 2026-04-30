Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N5ULhKJ82md4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 580034A60EF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5A3484EBC;
	Thu, 30 Apr 2026 16:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SuqxtWy5vVh1; Thu, 30 Apr 2026 16:53:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED48984EBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568012;
	bh=Q14Nfv+UEqF4wGTpTXYwRmNvMzztXWMPU3JKrPL0wNU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ntFdF2fwH5syC9Hy7xBIVkK/VAF7xnGMQHvGjWjvOoxn0aO34Lfvr7/hUihcq291Z
	 hDvMbs1f2C3JICVYaXgxDzCMWloppxMU4IC18ScuUBAp/TWlGd2bI6zjTltV32EpPB
	 vvzLHSSPDVyZud5HqB8GmCUoGzC1yDXqCrBKrHA8smuNfVDTaukt4zwn2LaAmjPVRc
	 EfFo8cEQ8bZUk4g6enG5AUrHyg5n2HEBqQQwhr4IWhTZzgqvnm2lizZDj2b8lBaHFD
	 ADLB8uGNLE+MHm1tToNQEnBOvMdfW+ghif8OriqvH7C1TLi0s5tksf11g2a1oEo+zu
	 pXr6et2/YVs2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED48984EBA;
	Thu, 30 Apr 2026 16:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95657192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B2F94078E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZepFpRk_RPub for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 13:15:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=ukleinek@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 59C844078B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59C844078B
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59C844078B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:15:11 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-488d2079582so9328205e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 06:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777554910; x=1778159710;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Q14Nfv+UEqF4wGTpTXYwRmNvMzztXWMPU3JKrPL0wNU=;
 b=AFgvg+Dg7CeN2x8+97hUTo+/Z/tSmNDAh49PfGAFDjqj6eu8TqO1SBykufEDiqqwBN
 MMUE95fYObOe7FR/VAez/AFGPQ/lISHlxL8liFZuHVhXupTXohS/tPGn6TvQzr3Ar9PQ
 w7JBWFsR+QTZC6iseOPkYSep/g8TIcEZmnNUJmFL3kpv4FUBT+YDuDb25/KMe5+Liaqa
 Z3XvOeg+Xy0ts1mGZvBfaSCHC++f9aVduybBLfS2dDs8GzTMk8cbULZOC4MM71SNg3Jc
 DNlt7G/wzgNVIFLtiVeaxJMdcljC26pwmduLdCV01wigqKekIchNtXFDqqrHKNzTeZ8a
 a4eA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+7znngOJ+FmFafmGuDzX+ls+enaEi4zNbnqqYZVKq0NDLi29N8GQXVwsYv3NyWB53gv6smlnStd8w59bWu4LU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzdtLPImWDgzZZjXFAkX4AxqDqdKzIWl74VixN3ZChaMRRckblh
 hWr4tsoG50dfakEUNHwNM7V+8og46RnbVFvjuEkslY7BNj1ujm87POF2m/Pu4v3Pq3I=
X-Gm-Gg: AeBDiet8ibbimljiDTJ6FcLD+08IUSdMmhY9kvGNxRCRMP671UJK6zEzEO+4DUd/SZ5
 Bi3/85qOwjYlS+cB+tA/FGUGq+AHNxhhUyCUoyfR2CFmj/X6aJHZlAbz/kihqGU0ptWp0+wyb70
 Sr1liqFxx1OoE31RV4VL86cqVQuClKMEiQ6ntmxvTWaX/Rt4q8BiWqHb92hQSYvrH9ERGP9q93c
 m0xAV47/kX6foVCEp6BEnFL7/eq3cWSkzZFp+otmLC+/AoOc0+XpQqVgw7qhlVdUBYb6sqo/iG3
 U2T/uG8yVLTyzOKTDbvamutbNbJOVg4HQqDuMvTEBG/1K670s+Oolp6NgPPMs0/WgSk7VT1eZXo
 g6sW90kyEYH9a58U5JTZz2+c6xE3RN1CHhn7DysnNPNPny+Cu5z5stNDeLydXlFb4plbn5mbZZ0
 PYDCGsS1+47IrOyleu0/EqkA8uC4AIBG+ibW1/VC86YxhlY7CwjkpF/rxEH682q0XcMG2MQ70Y3
 YQ/2F4Sl95zguctg8vEv8JVtQ==
X-Received: by 2002:a05:600c:c0db:b0:489:284:44ab with SMTP id
 5b1f17b1804b1-48a83f6b306mr35501805e9.12.1777554909754; 
 Thu, 30 Apr 2026 06:15:09 -0700 (PDT)
Received: from localhost
 (p200300f65f114e0859f76ff87a50eb14.dip0.t-ipconnect.de.
 [2003:f6:5f11:4e08:59f7:6ff8:7a50:eb14])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-447b3d47ff1sm13921904f8f.6.2026.04.30.06.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2026 06:15:08 -0700 (PDT)
Date: Thu, 30 Apr 2026 15:15:07 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Message-ID: <afNVhCLPqPf-OKK3@monoceros>
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
 <DI6D3JVJ6JG6.8V4XUVGJA2D4@baylibre.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="6b5ffjhgb6zy7r2y"
Content-Disposition: inline
In-Reply-To: <DI6D3JVJ6JG6.8V4XUVGJA2D4@baylibre.com>
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1777554910; x=1778159710;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Q14Nfv+UEqF4wGTpTXYwRmNvMzztXWMPU3JKrPL0wNU=;
 b=FsIXK/ebPrNMD5iPiy4mp57+AEjsuba36Blu64IePyewV5jc+AbuhYqpvMstr3bPxA
 V1CzK85rX0QHr8LRDBqfUAptdL52pqgOTm+Y7EL68XHnMVNWUAXzZanhU1cWYQLLujDq
 8NbgTT+cR1V9te0TZ6fZoVYPbWUHPa0pXDpxcA0ttfHseZ+kedsUkl8sVrArGjubhTsJ
 frIkHYVEX5ivW5EGkUbIrVLtdvrAKoRtop+VqrQ2qv1NP7OXahncG2QXFgK1fpmGR+/h
 WeUatbQl2VFnEKtJsfAY75HKSllZr4JWswvh5Btn2BTefsv660ht+VpMnTGQKNOOh9nk
 sDxA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=FsIXK/eb
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
 Ion Badulescu <ionut@badula.org>,
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
 linux-can@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Jiawen Wu <jiawenwu@trustnetic.com>, Cai Huoqing <cai.huoqing@linux.dev>,
 Mark Einon <mark.einon@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, Yibo Dong <dong100@mucse.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>, Petr Machata <petrm@nvidia.com>,
 Kory Maincent <kory.maincent@bootlin.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Leon Romanovsky <leon@kernel.org>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 oss-drivers@corigine.com, Vincent Mailhol <mailhol@kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Jian Shen <shenjian15@huawei.com>,
 Jijie Shao <shaojijie@huawei.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Thomas Gleixner <tglx@kernel.org>, Simon Horman <horms@kernel.org>,
 Yicong Hui <yiconghui@gmail.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 580034A60EF
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
	FORGED_RECIPIENTS(0.00)[m:msp@baylibre.com,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:joe@dama.to,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:m.grzeschik@pengutronix.de,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:enelsonmoore@gmail.com,m:phasta@kernel.org,m:idosch
 @nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:linux-can@vger.kernel.org,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:mark.einon@gmail.com,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mkl@pengutronix.de,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:khc@pm.waw.pl,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,intel.com,dama.to,lists.linux.dev,brownhat.org,google.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,pengutronix.de,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,corigine.com,lunn.ch,sipsolutions.net,davemloft.net,pm.waw.pl];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]


--6b5ffjhgb6zy7r2y
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next] net: Consistently define pci_device_ids using
 named initializers
MIME-Version: 1.0

Hello Markus,

On Thu, Apr 30, 2026 at 10:55:14AM +0200, Markus Schneider-Pargmann wrote:
> On Tue Apr 28, 2026 at 7:18 PM CEST, Uwe Kleine-K=F6nig (The Capable Hub)=
 wrote:
> > diff --git a/drivers/net/can/m_can/m_can_pci.c b/drivers/net/can/m_can/=
m_can_pci.c
> > index eb31ed1f9644..cb9335c1d3ea 100644
> > --- a/drivers/net/can/m_can/m_can_pci.c
> > +++ b/drivers/net/can/m_can/m_can_pci.c
> > @@ -183,9 +183,9 @@ static SIMPLE_DEV_PM_OPS(m_can_pci_pm_ops,
> >  			 m_can_pci_suspend, m_can_pci_resume);
> > =20
> >  static const struct pci_device_id m_can_pci_id_table[] =3D {
> > -	{ PCI_VDEVICE(INTEL, 0x4bc1), M_CAN_CLOCK_FREQ_EHL, },
> > -	{ PCI_VDEVICE(INTEL, 0x4bc2), M_CAN_CLOCK_FREQ_EHL, },
> > -	{  }	/* Terminating Entry */
> > +	{ PCI_VDEVICE(INTEL, 0x4bc1), .driver_data =3D M_CAN_CLOCK_FREQ_EHL, =
},
> > +	{ PCI_VDEVICE(INTEL, 0x4bc2), .driver_data =3D M_CAN_CLOCK_FREQ_EHL, =
},
> > +	{ }	/* terminating entry */
>=20
> M_CAN_CLOCK_FREQ_EHL is basically hardcoded for all PCI devices since
> 2020. I don't think we need this driver data at all and can just drop it
> and use M_CAN_CLOCK_FREQ_EHL directly in the code for the frequency.
> Once a real new PCI device gets added we can see if and what driver_data
> is needed.

Sounds like a nice *separate* change, right?

Best regards
Uwe

--6b5ffjhgb6zy7r2y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnzVdgACgkQj4D7WH0S
/k4x3Af/edtfz9YYPFE6xum2g4TegCtLIvKw++0KDUAoyqpgkttjiVhQP2pkII1I
bwoXEDLgA701tfOm6K4xaBwmjr22fTEMmwqGBUUV9kbxJkZTOYaAvGL9vZUhumqW
aON4lzwvfmfJ4n1Nk/YWjSE0QmjI9PG7aoUCczzIPsEamTrS3xLh7OpHvF2bshFv
8t879m4kyInFizFXvDm3Pb+7WfqIwJHbJBKFtf3yy5ZlAf4JxFccVoOC3ygeZaz7
2S+yew8q9RxoAdReZzT/aUjlxkf0z4CmHidC1JcBK8qT/tAsE7w86uaDZOy5/ZKz
gpkzwoU/cOxmGkcr+S/smN1/kcOCJg==
=Kvic
-----END PGP SIGNATURE-----

--6b5ffjhgb6zy7r2y--
