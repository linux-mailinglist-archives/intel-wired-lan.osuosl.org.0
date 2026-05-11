Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIWEOO8SAmrangEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 703AC5138BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 19:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0FA1809BB;
	Mon, 11 May 2026 17:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0NIX6ip6ezcP; Mon, 11 May 2026 17:33:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D013A80DA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778520804;
	bh=Sf1/UiR9Ps90mVJSmmKtta/sIyGJtin4xUFGhet+TYw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KlufucSmkzZK3Vw3rdL1Ceo0fq5oMK3ihCjnhYUJ5tuaxNncDQajoRQnFGrguAzBE
	 3RAYL3I46AqD7vLWrvTdJoB2SztkQB22vKvmay3985g6+h0gC5CWx1IrSI3qxXV0Nm
	 IvqmvAXUU6gBBk+ohKv/3oCc6RLcOT9FFP8+vYRWMUXRH8axJ7w2aYbY5xm/NLb3cv
	 SlVEr9RWruBaVfTuddy4Qde8Yt0uPU1wQkXwx1zCeg1qMzer5SN6TGQvt+kQcWpO1V
	 A3Mq+y8LPfuy4Z/QRacin6Wr61SpZ9pyFtkSvn2Bm6sxsSjiOptNdo62VZQ86QODLg
	 78Hd8rqzCfqyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D013A80DA6;
	Mon, 11 May 2026 17:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EE97223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50ED340338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vJiUo0SAObi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 11:58:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mgr@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 329554032B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 329554032B
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 329554032B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:58:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 44B4C6012B;
 Mon, 11 May 2026 11:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD16EC2BCF7;
 Mon, 11 May 2026 11:57:51 +0000 (UTC)
Date: Mon, 11 May 2026 13:57:49 +0200
From: Michael Grzeschik <mgr@kernel.org>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <agHEPQ5tLFKW0uum@pengutronix.de>
References: <20260511090023.1634387-4-u.kleine-koenig@baylibre.com>
 <20260511090023.1634387-6-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260511090023.1634387-6-u.kleine-koenig@baylibre.com>
X-Mailman-Approved-At: Mon, 11 May 2026 17:33:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778500686;
 bh=KF1t/bRGs16yza3DBTgFCMGGOZGbS2ZRe4/jmsnl72o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jvjdQJFhfyjs3E/5QNKeFp1jTRAOxDNvz4Mh8U1RxGbjks/gpXVIlmydk3WFacZhD
 l3f9a2vKk3bOmeWc34go+yHhoRM3iBRq3LZ8M7XZ59udEW1MqdS7mKupb4h1wVV4Do
 KkvCSR3C+uHG3tH2YS5uwHfM+9OpvFxe4qYtM2DSiMg7qYdP1QRCHem+lUwMYjOqmr
 X5gNyzzBOvSy7yuBJdyKREHmHjj5av7KbAFq6bfRiAEx+MwwD+2sRATPB1Q8jc1b4u
 FTEA9GZv56qYWosTkb/DEeuVpP3AGfbpItzeaDDDn/7i4IwntV9jTHGbBse/kGCO8p
 EO/cNlRqVgdlg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jvjdQJFh
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net: Consistently
 define pci_device_ids using named initializers
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
 Ian Lin <ian.lin@infineon.com>, brcm80211@lists.linux.dev,
 Daniele Venzano <venza@brownhat.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Mengyuan Lou <mengyuanlou@net-swift.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>, Yeounsu Moon <yyyynoom@gmail.com>,
 Manish Chopra <manishc@marvell.com>, Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Denis Kirjanov <kirjanov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-parisc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Larysa Zaremba <larysa.zaremba@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Mark Einon <mark.einon@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Zilin Guan <zilin@seu.edu.cn>,
 linux-can@vger.kernel.org, Yibo Dong <dong100@mucse.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>, Petr Machata <petrm@nvidia.com>,
 Kory Maincent <kory.maincent@bootlin.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Leon Romanovsky <leon@kernel.org>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Vincent Mailhol <mailhol@kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Jian Shen <shenjian15@huawei.com>,
 Jijie Shao <shaojijie@huawei.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Thomas Gleixner <tglx@kernel.org>, Simon Horman <horms@kernel.org>,
 Yicong Hui <yiconghui@gmail.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Johannes Berg <johannes@sipsolutions.net>,
 Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 703AC5138BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mgr@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,google.com,intel.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,amazon.com,corigine.com,lunn.ch,pengutronix.de,sipsolutions.net,davemloft.net];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:larysa.zaremba@intel.com,m:idosch@nvidia.com,m:bharat@c
 helsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:mark.einon@gmail.com,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mkl@pengutronix.de,m:johannes@sipsolutions.net,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:hkallweit1@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,nvidia.com:email,intel.com:email,baylibre.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,huawei.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[78];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mgr@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 11:00:24AM +0200, Uwe Kleine-König (The Capable Hub) wrote:
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
> 
> Reviewed-by: Jijie Shao <shaojijie@huawei.com>
> Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com> # for mlxsw
> Acked-by: Jacob Keller <jacob.e.keller@intel.com>
> Acked-by: Johannes Berg <johannes@sipsolutions.net>
> Signed-off-by: Uwe Kleine-König (The Capable Hub) <u.kleine-koenig@baylibre.com>
> Forwarded: id:76da4f44d48bdde84580963862bf9616bee5c9e9.1778149923.git.u.kleine-koenig@baylibre.com (v2)
> ---
>  drivers/net/arcnet/com20020-pci.c             | 242 +++------

[...]

> diff --git a/drivers/net/arcnet/com20020-pci.c b/drivers/net/arcnet/com20020-pci.c
> index dbadda08dce2..6474c7be2992 100644
> --- a/drivers/net/arcnet/com20020-pci.c
> +++ b/drivers/net/arcnet/com20020-pci.c
> @@ -459,168 +459,88 @@ static struct com20020_pci_card_info card_info_eae_fb2 = {
>  
>  static const struct pci_device_id com20020pci_id_table[] = {
>  	{
> -		0x1571, 0xa001,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0,
> +		PCI_DEVICE(0x1571, 0xa001),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa002),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa003),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa004),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa005),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa006),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa007),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa008),
> +		.driver_data = 0,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa009),
> +		.driver_data = (kernel_ulong_t)&card_info_5mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa00a),
> +		.driver_data = (kernel_ulong_t)&card_info_5mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa00b),
> +		.driver_data = (kernel_ulong_t)&card_info_5mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa00c),
> +		.driver_data = (kernel_ulong_t)&card_info_5mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa00d),
> +		.driver_data = (kernel_ulong_t)&card_info_5mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa00e),
> +		.driver_data = (kernel_ulong_t)&card_info_5mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa201),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa202),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa203),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa204),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa205),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE(0x1571, 0xa206),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE_SUB(0x10B5, 0x9030, 0x10B5, 0x2978),
> +		.driver_data = (kernel_ulong_t)&card_info_sohard,
> +	}, {
> +		PCI_DEVICE_SUB(0x10B5, 0x9050, 0x10B5, 0x2273),
> +		.driver_data = (kernel_ulong_t)&card_info_sohard,
> +	}, {
> +		PCI_DEVICE_SUB(0x10B5, 0x9050, 0x10B5, 0x3263),
> +		.driver_data = (kernel_ulong_t)&card_info_eae_arc1,
> +	}, {
> +		PCI_DEVICE_SUB(0x10B5, 0x9050, 0x10B5, 0x3292),
> +		.driver_data = (kernel_ulong_t)&card_info_eae_ma1,
> +	}, {
> +		PCI_DEVICE_SUB(0x10B5, 0x9050, 0x10B5, 0x3294),
> +		.driver_data = (kernel_ulong_t)&card_info_eae_fb2,
> +	}, {
> +		PCI_DEVICE(0x14BA, 0x6000),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> +	}, {
> +		PCI_DEVICE(0x10B5, 0x2200),
> +		.driver_data = (kernel_ulong_t)&card_info_10mbit,
>  	},
> -	{
> -		0x1571, 0xa002,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0,
> -	},
> -	{
> -		0x1571, 0xa003,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0
> -	},
> -	{
> -		0x1571, 0xa004,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0,
> -	},
> -	{
> -		0x1571, 0xa005,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0
> -	},
> -	{
> -		0x1571, 0xa006,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0
> -	},
> -	{
> -		0x1571, 0xa007,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0
> -	},
> -	{
> -		0x1571, 0xa008,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		0
> -	},
> -	{
> -		0x1571, 0xa009,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_5mbit
> -	},
> -	{
> -		0x1571, 0xa00a,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_5mbit
> -	},
> -	{
> -		0x1571, 0xa00b,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_5mbit
> -	},
> -	{
> -		0x1571, 0xa00c,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_5mbit
> -	},
> -	{
> -		0x1571, 0xa00d,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_5mbit
> -	},
> -	{
> -		0x1571, 0xa00e,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_5mbit
> -	},
> -	{
> -		0x1571, 0xa201,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x1571, 0xa202,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x1571, 0xa203,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x1571, 0xa204,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x1571, 0xa205,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x1571, 0xa206,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x10B5, 0x9030,
> -		0x10B5, 0x2978,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_sohard
> -	},
> -	{
> -		0x10B5, 0x9050,
> -		0x10B5, 0x2273,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_sohard
> -	},
> -	{
> -		0x10B5, 0x9050,
> -		0x10B5, 0x3263,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_eae_arc1
> -	},
> -	{
> -		0x10B5, 0x9050,
> -		0x10B5, 0x3292,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_eae_ma1
> -	},
> -	{
> -		0x10B5, 0x9050,
> -		0x10B5, 0x3294,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_eae_fb2
> -	},
> -	{
> -		0x14BA, 0x6000,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{
> -		0x10B5, 0x2200,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&card_info_10mbit
> -	},
> -	{ 0, }
> +	{ }
>  };
>  
>  MODULE_DEVICE_TABLE(pci, com20020pci_id_table);

For the com20020 arcnet driver:

Reviewed-by: Michael Grzeschik <mgr@kernel.org>
