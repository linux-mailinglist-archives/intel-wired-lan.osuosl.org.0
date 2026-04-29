Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOyJDguJ82mS4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BA34A60B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61BEF84EB2;
	Thu, 30 Apr 2026 16:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BlpfUwJZGoww; Thu, 30 Apr 2026 16:53:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A03A584EAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568006;
	bh=fyAlsVdunjru5rWSr/Juwi2+ZRlXG6w2sK3jkr2KfmQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=igrCgHThaGNAyq1LykhmyzMQKNgirm8bl3Hb4ccA8rXQpyghRC0H+eGkMXVuiGng6
	 AVKi2QVGlNl1FobpjYTC2JZWtNKExyta128yx9xAav4Oy8HCselUAgLMFdFEwqqVEV
	 ZoRlgNJAdEI0Z047sHFRvIdNuxjiCKM+wZ/XkWEMAeYv1goCHsn3KLjfRWkRyZ9op/
	 fAnK3HXS9lOtT+iUyWHL02X26xh6ciTTO4ys6TQKyFktY/lzVqGM6AywV5WY0Nzsya
	 TCAy3FnXEfualFKye8kGbj8kIMm6LNxlZCe+2WYfyS3FwmtdwkIhyQJcg4wSfkZ2ec
	 YvSbHF9jEEYyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A03A584EAF;
	Thu, 30 Apr 2026 16:53:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BDCF61B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF9B0409C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:55:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nn3gCs4PyXng for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 06:55:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5EAA409AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5EAA409AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5EAA409AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:55:14 +0000 (UTC)
X-CSE-ConnectionGUID: b3GIDGP6S2e1M5KTyHp7hg==
X-CSE-MsgGUID: oYgXW7FgR6Cp0vZPYs14HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89456628"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="89456628"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 23:55:14 -0700
X-CSE-ConnectionGUID: NWCIGupGRW+k5c69AnHXJQ==
X-CSE-MsgGUID: 5oHPhrg7Q1iV2x0zLMtPhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="235958719"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.141])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 23:54:56 -0700
Date: Wed, 29 Apr 2026 09:54:54 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <afGrPvUeZ-DjWbC8@ashevche-desk.local>
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777445715; x=1808981715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kYYeufPkRyGcr0hiIW6bKGaXhz8Q+nnaSSo0fxSS6co=;
 b=mRYNGpKkdPZn92Js4w44vvHbhSgXVXy1f8mAr+/9W1FABmA43BvjO7EP
 GVD0J2RI12BQWLSVn+4pSjmpK3tJLexJPN1TP7IkIGvcp1XQ3/d//xFrS
 CJp3WQFbkvgN16LA4psH1fQ+t2XLRziSgU91OeRpokNK6AaSQAq0gdaSG
 uvWDZk0FksjFnREON71yB0shU5ojBgYqTUbdKAnKCfQpfx76Fc62Dnd3u
 WaBINNRZ0vVuN8peK/uponY/3gyaThgUpnevzRqr5fFlkDu/NtPvnOYcD
 K8l9VlBFLlOf6aC4AUDY9hYTH3ZFoMnxoSpVTUBBdaTPfOlQyc0M39ger
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mRYNGpKk
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
Cc: Cai Huoqing <cai.huoqing@linux.dev>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Randy Dunlap <rdunlap@infradead.org>, Yonglong Liu <liuyonglong@huawei.com>,
 Kees Cook <kees@kernel.org>, linux-wireless@vger.kernel.org,
 Larysa Zaremba <larysa.zaremba@intel.com>, Joe Damato <joe@dama.to>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>,
 Richard Cochran <richardcochran@gmail.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Mengyuan Lou <mengyuanlou@net-swift.com>,
 Jian Shen <shenjian15@huawei.com>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Yeounsu Moon <yyyynoom@gmail.com>, Manish Chopra <manishc@marvell.com>,
 Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Philipp Stanner <phasta@kernel.org>,
 Chi-hsien Lin <chi-hsien.lin@cypress.com>, Ido Schimmel <idosch@nvidia.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>, Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Petr Machata <petrm@nvidia.com>, Kory Maincent <kory.maincent@bootlin.com>,
 brcm80211-dev-list.pdl@broadcom.com, GR-Linux-NIC-Dev@marvell.com,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Leon Romanovsky <leon@kernel.org>,
 Denis Benato <benato.denis96@gmail.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Vincent Mailhol <mailhol@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jijie Shao <shaojijie@huawei.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 linux-rdma@vger.kernel.org, Mark Einon <mark.einon@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 98BA34A60B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[33];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:cai.huoqing@linux.dev,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:joe@dama.to,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:richardcochran@gmail.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:shenjian15@huawei.com,m:mingo@kernel.org,m:ionut@badula.org,m:m.grzeschik@pengutronix.de,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:kevin.curtis@farsite.co.uk,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli
 .us,m:phasta@kernel.org,m:chi-hsien.lin@cypress.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:mkl@pengutronix.de,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:enelsonmoore@gmail.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:davem@davemloft.net,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:linux-rdma@vger.kernel.org,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:khc@pm.waw.pl,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,intel.com,dama.to,lists.linux.dev,brownhat.org,google.com,ti.com,gmail.com,tux.org,net-swift.com,badula.org,pengutronix.de,marvell.com,lists.osuosl.org,redhat.com,farsite.co.uk,broadcom.com,realtek.com,resnulli.us,cypress.com,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,seu.edu.cn,mucse.com,bootlin.com,corigine.com,davemloft.net,lunn.ch,sipsolutions.net,pm.waw.pl];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_GT_50(0.00)[82];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, Apr 28, 2026 at 07:18:44PM +0200, Uwe Kleine-König (The Capable Hub) wrote:
> ... and PCI device helpers.
> 
> The various struct pci_device_id arrays were initialized mostly by one
> the PCI_DEVICE macros and then list expressions. The latter isn't easily
> readable if you're not into PCI. Using named initializers is more
> explicit and thus easier to parse.
> 
> Also use PCI_DEVICE* helper macros to assign .vendor, .device,
> .subvendor and .subdevice where appropriate and skip explicit
> assignments of 0 (which the compiler takes care of).
> 
> The secret plan is to make struct pci_device_id::driver_data an
> anonymous union (similar to
> https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@baylibre.com/)
> and that requires named initializers. But it's also a nice cleanup on
> its own.
> 
> This change doesn't introduce changes to the compiled pci_device_id
> arrays. Tested on x86 and arm64.

...

> -	{0,}						/* 0 terminated list. */
> +	{ }						/* 0 terminated list. */

The comments like these are just noises. The rule of thumb is to play with a
trailing comma:
- always drop it in the terminator entry
- always keep it in the normal initialisers when semantically it's not a
terminator

...

>  static const struct pci_device_id liquidio_pci_tbl[] = {
>  	{       /* 68xx */
> -		PCI_VENDOR_ID_CAVIUM, 0x91, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0
> +		PCI_VDEVICE(CAVIUM, 0x91)

Use full fixed-width device id value(s). 0x0091 here and so on...

>  	},

Also seems that you may decrease number of LoC here putting it as

	{ PCI_VDEVICE(CAVIUM, 0x0091) }, /* 68xx */

and so on...

>  	{       /* 66xx */
> -		PCI_VENDOR_ID_CAVIUM, 0x92, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0
> +		PCI_VDEVICE(CAVIUM, 0x92)
>  	},
>  	{       /* 23xx pf */
> -		PCI_VENDOR_ID_CAVIUM, 0x9702, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0
> +		PCI_VDEVICE(CAVIUM, 0x9702)
>  	},
> -	{
> -		0, 0, 0, 0, 0, 0, 0
> -	}
> +	{ }
>  };

...

>  #define CH_PCI_DEVICE_ID_TABLE_DEFINE_END \
> -		{ 0, } \
> +		{ } \
>  	}

Why do we have this macro at all?


> -#define CH_PCI_DEVICE_ID_TABLE_DEFINE_END { 0, } }
> +#define CH_PCI_DEVICE_ID_TABLE_DEFINE_END { } }

Ditto.

...

>  static const struct pci_device_id de_pci_tbl[] = {
> -	{ PCI_VENDOR_ID_DEC, PCI_DEVICE_ID_DEC_TULIP,
> -	  PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0 },
> -	{ PCI_VENDOR_ID_DEC, PCI_DEVICE_ID_DEC_TULIP_PLUS,
> -	  PCI_ANY_ID, PCI_ANY_ID, 0, 0, 1 },
> +	{ PCI_VDEVICE(DEC, PCI_DEVICE_ID_DEC_TULIP), .driver_data = 0 },
> +	{ PCI_VDEVICE(DEC, PCI_DEVICE_ID_DEC_TULIP_PLUS), .driver_data = 1 },
>  	{ },

Drop comma. I.o.w. please make sure you also unify the style of the ID tables,
including terminator entries.

>  };

...

>  static const struct pci_device_id sis190_pci_tbl[] = {
> -	{ PCI_DEVICE(PCI_VENDOR_ID_SI, 0x0190), 0, 0, 0 },
> -	{ PCI_DEVICE(PCI_VENDOR_ID_SI, 0x0191), 0, 0, 1 },
> -	{ 0, },
> +	{ PCI_VDEVICE(SI, 0x0190), .driver_data = 0 },
> +	{ PCI_VDEVICE(SI, 0x0191), .driver_data = 1 },
> +	{ },

Ditto and so on...

>  };

...

Also I somehow managed to remove, but I remember you had an inner comma in some
cases after the .driver_data, when the full ID entry is located on a single
line. I.o.w. do

	{ PCI_...(), .driver_data = ... // no trailing comma here! },

When it's a single line trailing comma inside helps nothing and just makes
lines longer and harder to read.

-- 
With Best Regards,
Andy Shevchenko


