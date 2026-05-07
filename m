Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDP3J+Vv/GmkQAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 12:56:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DBB4E719B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 12:56:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 220CA83B89;
	Thu,  7 May 2026 10:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OD1Jh-cQwdNn; Thu,  7 May 2026 10:56:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E60683B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778151394;
	bh=4T8SRfubYSidiXl3PYqb4SiN/ZhagWS/FSjMbB5B6xA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YZ4Gg3gdSiViB4rgOob601TU1iqfFCTElWZw+8tToIL21IATel5tTvhrv1gE0bkOO
	 J0XtIdZAL4qAjSBfaNH+LGrhUAU0B70RMD7xMoW9u6GlDyBf1MUnD/Ed2glqe8Ccfg
	 H/YK3hWmS2bVW/sR6TAnVanAA5ssdsNgpVq2w9cAdfaVU9+9rXlbbvbDZJD8oZYkhf
	 YmDBkOiWISHWfgl1U3lQ1kBM3YQZYLnMx+x/h7ONcCsv5I0BK807d3S4AUZ9Axjs2C
	 L7MJGSjUntBeTGP/JMmPH9BZnI+1xcNo9nkP5EuWcO/ACXYjWUO0OcZG4capUlo+W3
	 HG6wcurSS6Ntg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E60683B8B;
	Thu,  7 May 2026 10:56:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A5A4511B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:56:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8ADD683B89
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:56:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtSd5cGgi91z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 10:56:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:edc0:2:b01:1d::104; helo=metis.whiteo.stw.pengutronix.de;
 envelope-from=mkl@pengutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D37383B6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D37383B6A
Received: from metis.whiteo.stw.pengutronix.de
 (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D37383B6A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:56:29 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1wKwOz-0001uh-6W; Thu, 07 May 2026 12:56:21 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b]
 helo=bjornoya.blackshift.org)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <mkl@pengutronix.de>) id 1wKwOQ-000uFj-2Z;
 Thu, 07 May 2026 12:55:47 +0200
Received: from pengutronix.de (p4ffb2dc6.dip0.t-ipconnect.de [79.251.45.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 2374E5302D0;
 Thu, 07 May 2026 10:55:46 +0000 (UTC)
Date: Thu, 7 May 2026 12:55:45 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <20260507-healthy-gainful-fox-500552-mkl@pengutronix.de>
X-AI: stop_reason: "refusal"
References: <cover.1778149923.git.u.kleine-koenig@baylibre.com>
 <76da4f44d48bdde84580963862bf9616bee5c9e9.1778149923.git.u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="bj6moo23k7mnjddb"
Content-Disposition: inline
In-Reply-To: <76da4f44d48bdde84580963862bf9616bee5c9e9.1778149923.git.u.kleine-koenig@baylibre.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=pengutronix.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] net: Consistently
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
 Michael Grzeschik <mgr@kernel.org>, Ion Badulescu <ionut@badula.org>,
 Yeounsu Moon <yyyynoom@gmail.com>, Manish Chopra <manishc@marvell.com>,
 Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Denis Kirjanov <kirjanov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-parisc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, Ido Schimmel <idosch@nvidia.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>, Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Petr Machata <petrm@nvidia.com>, Kory Maincent <kory.maincent@bootlin.com>,
 brcm80211-dev-list.pdl@broadcom.com, GR-Linux-NIC-Dev@marvell.com,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Leon Romanovsky <leon@kernel.org>,
 Denis Benato <benato.denis96@gmail.com>, Rasesh Mody <rmody@marvell.com>,
 David Arinzon <darinzon@amazon.com>, oss-drivers@corigine.com,
 Vincent Mailhol <mailhol@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: E8DBB4E719B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:mgr@kernel.org,m:ionut@badula.org,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:enelsonmoore@gmail.com,m:larysa.zaremb
 a@intel.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:khc@pm.waw.pl,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mkl@pengutronix.de,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,google.com,intel.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,amazon.com,corigine.com,lunn.ch,sipsolutions.net,davemloft.net,pm.waw.pl];
	DMARC_NA(0.00)[pengutronix.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,pengutronix.de:url,pengutronix.de:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[79];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mkl@pengutronix.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action


--bj6moo23k7mnjddb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next v2 1/2] net: Consistently define pci_device_ids
 using named initializers
MIME-Version: 1.0

> diff --git a/drivers/net/can/sja1000/plx_pci.c b/drivers/net/can/sja1000/=
plx_pci.c
> index 08183833c9bc..a03553b80a5d 100644
> --- a/drivers/net/can/sja1000/plx_pci.c
> +++ b/drivers/net/can/sja1000/plx_pci.c
> @@ -272,124 +272,89 @@ static struct plx_pci_card_info plx_pci_card_info_=
asem_dual_can =3D {
>  static const struct pci_device_id plx_pci_tbl[] =3D {
>  	{
>  		/* Adlink PCI-7841/cPCI-7841 */
> -		ADLINK_PCI_VENDOR_ID, ADLINK_PCI_DEVICE_ID,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		PCI_CLASS_NETWORK_OTHER << 8, ~0,
> -		(kernel_ulong_t)&plx_pci_card_info_adlink
> -	},
> -	{
> +		PCI_DEVICE(ADLINK_PCI_VENDOR_ID, ADLINK_PCI_DEVICE_ID),
> +		.class =3D PCI_CLASS_NETWORK_OTHER << 8,
> +		.class_mask =3D ~0,
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_adlink,
> +	}, {
>  		/* Adlink PCI-7841/cPCI-7841 SE */
> -		ADLINK_PCI_VENDOR_ID, ADLINK_PCI_DEVICE_ID,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		PCI_CLASS_COMMUNICATION_OTHER << 8, ~0,
> -		(kernel_ulong_t)&plx_pci_card_info_adlink_se
> -	},
> -	{
> +		PCI_DEVICE(ADLINK_PCI_VENDOR_ID, ADLINK_PCI_DEVICE_ID),
> +		.class =3D PCI_CLASS_COMMUNICATION_OTHER << 8,
> +		.class_mask =3D ~0,
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_adlink_se,
> +	}, {
>  		/* esd CAN-PCI/200 */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9050,
> -		PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCI200,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_esd200
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9050,
> +				PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCI200),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_esd200,
> +	}, {
>  		/* esd CAN-CPCI/200 */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9030,
> -		PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_CPCI200,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_esd200
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9030,
> +				PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_CPCI200),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_esd200,
> +	}, {
>  		/* esd CAN-PCI104/200 */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9030,
> -		PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCI104200,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_esd200
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9030,
> +				PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCI104200),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_esd200,
> +	}, {
>  		/* esd CAN-PCI/266 */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9056,
> -		PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCI266,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_esd266
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9056,
> +				PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCI266),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_esd266,
> +	}, {
>  		/* esd CAN-PMC/266 */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9056,
> -		PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PMC266,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_esd266
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9056,
> +				PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PMC266),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_esd266,
> +	}, {
>  		/* esd CAN-PCIE/2000 */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9056,
> -		PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCIE2000,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_esd2000
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9056,
> +				PCI_VENDOR_ID_ESDGMBH, ESD_PCI_SUB_SYS_ID_PCIE2000),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_esd2000,
> +	}, {
>  		/* IXXAT PC-I 04/PCI card */
> -		IXXAT_PCI_VENDOR_ID, IXXAT_PCI_DEVICE_ID,
> -		PCI_ANY_ID, IXXAT_PCI_SUB_SYS_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_ixxat
> -	},
> -	{
> +		PCI_DEVICE_SUB(IXXAT_PCI_VENDOR_ID, IXXAT_PCI_DEVICE_ID,
> +			       PCI_ANY_ID, IXXAT_PCI_SUB_SYS_ID),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_ixxat,
> +	}, {
>  		/* Marathon CAN-bus-PCI card */
> -		PCI_VENDOR_ID_PLX, MARATHON_PCI_DEVICE_ID,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_marathon_pci
> -	},
> -	{
> +		PCI_VDEVICE(PLX, MARATHON_PCI_DEVICE_ID),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_marathon_pci,
> +	}, {
>  		/* Marathon CAN-bus-PCIe card */
> -		PCI_VENDOR_ID_PLX, MARATHON_PCIE_DEVICE_ID,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_marathon_pcie
> -	},
> -	{
> +		PCI_VDEVICE(PLX, MARATHON_PCIE_DEVICE_ID),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_marathon_pcie,
> +	}, {
>  		/* TEWS TECHNOLOGIES TPMC810 card */
> -		TEWS_PCI_VENDOR_ID, TEWS_PCI_DEVICE_ID_TMPC810,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_tews
> -	},
> -	{
> +		PCI_DEVICE(TEWS_PCI_VENDOR_ID, TEWS_PCI_DEVICE_ID_TMPC810),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_tews,
> +	}, {
>  		/* Connect Tech Inc. CANpro/104-Plus Opto (CRG001) card */
> -		PCI_VENDOR_ID_PLX, PCI_DEVICE_ID_PLX_9030,
> -		PCI_SUBVENDOR_ID_CONNECT_TECH, CTI_PCI_DEVICE_ID_CRG001,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_cti
> -	},
> -	{
> +		PCI_VDEVICE_SUB(PLX, PCI_DEVICE_ID_PLX_9030,
> +				PCI_SUBVENDOR_ID_CONNECT_TECH, CTI_PCI_DEVICE_ID_CRG001),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_cti,
> +	}, {
>  		/* Elcus CAN-200-PCI */
> -		CAN200PCI_VENDOR_ID, CAN200PCI_DEVICE_ID,
> -		CAN200PCI_SUB_VENDOR_ID, CAN200PCI_SUB_DEVICE_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_elcus
> -	},
> -	{
> +		PCI_DEVICE_SUB(CAN200PCI_VENDOR_ID, CAN200PCI_DEVICE_ID,
> +			       CAN200PCI_SUB_VENDOR_ID, CAN200PCI_SUB_DEVICE_ID),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_elcus,
> +	}, {
>  		/* moxa */
> -		MOXA_PCI_VENDOR_ID, MOXA_PCI_DEVICE_ID,
> -		PCI_ANY_ID, PCI_ANY_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_moxa
> -	},
> -	{
> +		PCI_DEVICE(MOXA_PCI_VENDOR_ID, MOXA_PCI_DEVICE_ID),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_moxa,
> +	}, {
>  		/* ASEM Dual CAN raw */
> -		ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> -		ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_asem_dual_can
> -	},
> -	{
> +		PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> +			       ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_asem_dual_can,
> +	}, {
>  		/* ASEM Dual CAN raw -new model */
> -		ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> -		ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID_BIS,
> -		0, 0,
> -		(kernel_ulong_t)&plx_pci_card_info_asem_dual_can
> +		PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> +			       ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID_BIS),
> +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_asem_dual_can,
>  	},
> -	{ 0,}
> +	{ }

Nitpick: can you convert the terminating entry to follow the same style
as the rest of the driver:

diff --git a/drivers/net/can/sja1000/plx_pci.c b/drivers/net/can/sja1000/pl=
x_pci.c
index a03553b80a5d..d69ff0ccfd94 100644
--- a/drivers/net/can/sja1000/plx_pci.c
+++ b/drivers/net/can/sja1000/plx_pci.c
@@ -353,8 +353,8 @@ static const struct pci_device_id plx_pci_tbl[] =3D {
                 PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE=
_ID,
                                ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SU=
B_DEVICE_ID_BIS),
                 .driver_data =3D (kernel_ulong_t)&plx_pci_card_info_asem_d=
ual_can,
-        },
-        { }
+        }, {
+        }
 };
 MODULE_DEVICE_TABLE(pci, plx_pci_tbl);

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--bj6moo23k7mnjddb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCafxvrQAKCRDMOmT6rpmt
0pHeAP9XFcWG4TIkfsDgMbSsjB0BDeIaX/oOHy7GN10y7WrRXAD9HGFep6ozobs7
Ky/tnJ+5OGyoiQeSoshTzXtNkIIEoQA=
=kV9y
-----END PGP SIGNATURE-----

--bj6moo23k7mnjddb--
