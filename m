Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLHDHLwT8WlZcwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 22:08:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 054ED48B787
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 22:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E57FA41EA9;
	Tue, 28 Apr 2026 20:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vMUDQpXZ5eCm; Tue, 28 Apr 2026 20:08:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04C2041EAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777406901;
	bh=iRxzu9RmmpZ7pX5zdGly9rKj0q1oCfBMxB/0kO0YbvI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m0UHOj33FKNSWuWxdPiei/1Wl2PdXIOTdsxsdRSeyBf5xlvPObV+erVwl5fe07ME2
	 Vbgz+8TXcIXTb2DwtpltNnjh2zaSxJ3cSl1Lbk9zaxMimD7QRxtVwK1XBNImC9/1TM
	 QaEufT5iCJsgYbh48CrL+yyd5JLH290+x34npc7/6m4XZDqg5CUWCQCevnaORg8Jqo
	 tFagaq77j3DtZCvWzdOqETti0h2CHgScNAIXrYXXFJEHFhX1Fz7T+fJLOfqYarF31G
	 tlov/zxcZGjNZWsYl0JqW/7zPhoNh0uOB09w75WKOrgn7zPZYz6v3aF+KsbsOX0AWZ
	 X/gkUoHvcFbVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04C2041EAB;
	Tue, 28 Apr 2026 20:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CEC041B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 20:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4E914101C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 20:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BmpgJfctN4MN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 20:08:18 +0000 (UTC)
X-Greylist: delayed 1923 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 Apr 2026 20:08:16 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03FAA4057B
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2a01:4f8:242:246e::2;
 helo=sipsolutions.net; envelope-from=johannes@sipsolutions.net;
 receiver=<UNKNOWN> 
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03FAA4057B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 20:08:16 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.98.2) (envelope-from <johannes@sipsolutions.net>)
 id 1wHoD6-0000000154Q-0Yr2; Tue, 28 Apr 2026 21:35:08 +0200
Message-ID: <54d6fd70b123bf7c158e8e97817b0b3a033205b2.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= "(The Capable Hub)"	
 <u.kleine-koenig@baylibre.com>, Michael Grzeschik
 <m.grzeschik@pengutronix.de>,  Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet	 <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni	 <pabeni@redhat.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol	 <mailhol@kernel.org>,
 Krzysztof Halasa <khc@pm.waw.pl>
Date: Tue, 28 Apr 2026 21:35:05 +0200
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
 (sfid-20260428_191919_544927_6ED8AE93)
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
 (sfid-20260428_191919_544927_6ED8AE93)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=iRxzu9RmmpZ7pX5zdGly9rKj0q1oCfBMxB/0kO0YbvI=; 
 t=1777406897; x=1778616497; b=fXCN/KlqDK+4nfH2/Er/fy/x09nHwgh7TpwZoWq5NCph7Of
 pI1XEJ3ddAZzeZ+lwIO9GueJwVbx5xuoFO1CkSJYCztF7NVs9l+2fO/8byvWPVEDOyRUL60/MOVBf
 Suhzz1BZOLMMrZJQnwP7kOs2hh9RcnayB1f84TR1VSm27yOa8MynqvSpupcmQa9vBU1ySPAbSWEbq
 3lkGtrcJdAQqKZjicxG2fvHYPlV6DcYsfgxVLDBC53c4HDLZi++3TGtq4TOV3y96rqRkXqENjt43y
 WwWdDDafwKwonBHu3boIB63GQNyP6D8OnD7ow3IXn8JTE1wKfQnD6lPN/SsMUWYA==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org; dmarc=permerror
 header.from=sipsolutions.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=fXCN/Klq
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
 Yonglong Liu <liuyonglong@huawei.com>, Kees Cook <kees@kernel.org>,
 linux-wireless@vger.kernel.org, Larysa Zaremba <larysa.zaremba@intel.com>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>,
 oss-drivers@corigine.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Marco Crivellari <marco.crivellari@suse.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Philipp Stanner <phasta@kernel.org>,
 Chi-hsien Lin <chi-hsien.lin@cypress.com>, Ido Schimmel <idosch@nvidia.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>, Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Joe Damato <joe@dama.to>,
 Petr Machata <petrm@nvidia.com>, Kory Maincent <kory.maincent@bootlin.com>,
 brcm80211-dev-list.pdl@broadcom.com, GR-Linux-NIC-Dev@marvell.com,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Manish Chopra <manishc@marvell.com>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Yeounsu Moon <yyyynoom@gmail.com>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 054ED48B787
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:m.grzeschik@pengutronix.de,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:khc@pm.waw.pl,m:richardcochran@gmail.com,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:oss-drivers@corigine.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:marco.crivellari@suse.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:andriy.shevchenko@intel.com,m:leon@kernel.org,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:mengyuanlou@net-swift.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.k
 ernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:phasta@kernel.org,m:chi-hsien.lin@cypress.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:joe@dama.to,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:manishc@marvell.com,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:yyyynoom@gmail.com,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sipsolutions.net: no valid DMARC record];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sipsolutions.net:mid,sipsolutions.net:email,osuosl.org:dkim];
	FORGED_SENDER(0.00)[johannes@sipsolutions.net,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,huawei.com,kernel.org,vger.kernel.org,intel.com,lists.linux.dev,brownhat.org,corigine.com,ti.com,tux.org,suse.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,net-swift.com,broadcom.com,realtek.com,resnulli.us,cypress.com,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,linux.dev,google.com,seu.edu.cn,mucse.com,dama.to,bootlin.com,infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[johannes@sipsolutions.net,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[82];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.826];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]

On Tue, 2026-04-28 at 19:18 +0200, Uwe Kleine-K=C3=B6nig (The Capable Hub)
wrote:
>=20
> I handled all of drivers/net/ in a single patch, please tell me if I
> should split by subsystem.

I guess wireless would be the one not in net-next initially normally,
but

>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  17 +-
>  drivers/net/wireless/intel/ipw2x00/ipw2200.c  |  52 +-

Nobody has been touching *that* code, so from my perspective this is
fine.

Acked-by: Johannes Berg <johannes@sipsolutions.net>

johannes
