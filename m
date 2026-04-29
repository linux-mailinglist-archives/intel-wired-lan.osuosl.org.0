Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPbxLQuJ82mS4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 122294A60B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC97F6E4FA;
	Thu, 30 Apr 2026 16:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3MBxSC8X5_b; Thu, 30 Apr 2026 16:53:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A6066E2A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568007;
	bh=L7Rr9mTkE3RA3Jx039p22gY3aWES/N/FW2UQ9KGdOR8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BGEs1AQdPeGyWXbZXIZXUeudWoUA5wXjCIkH1Y0P2UdMI+vKXmsT3D8+cG/uFlWKb
	 OU+I6njwYXEkuyjFicGLlyZnu3o9YgF4QUzsZ3Jx6TAOn7SC78f4CTu23Xnn0iWDBb
	 hL06bkDRzv15GeIRaYG6TFX4RuP1/Gf/wmOCnFKQb9BcPRk9CXXa4ujiMlTUEi/gjj
	 ZJkTF0lEmzIcAyHVEkqeXCgWrRqEWsYOT21S9oHpjjdfAjedP7cRDCoXr9mwB7qCgN
	 hOw24E8Sqi8+FPVytEk4vkqdI7k5JiIFw+xQR2bMINfbjccPnyfUkXs4H1M49d8Bkz
	 1/TDHIMUN0SwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A6066E2A9;
	Thu, 30 Apr 2026 16:53:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DFB4231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83A974217C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:28:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O7m68345KcqV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 09:28:05 +0000 (UTC)
X-Greylist: delayed 1042 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 29 Apr 2026 09:28:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A55442176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A55442176
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:edc0:2:b01:1d::104; helo=metis.whiteo.stw.pengutronix.de;
 envelope-from=mkl@pengutronix.de; receiver=<UNKNOWN> 
Received: from metis.whiteo.stw.pengutronix.de
 (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A55442176
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:28:04 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1wI0wA-0006pG-NU; Wed, 29 Apr 2026 11:10:30 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b]
 helo=bjornoya.blackshift.org)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <mkl@pengutronix.de>) id 1wI0w3-007oJR-0R;
 Wed, 29 Apr 2026 11:10:23 +0200
Received: from pengutronix.de (p4ffb2dc6.dip0.t-ipconnect.de [79.251.45.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 668E3526F68;
 Wed, 29 Apr 2026 09:10:22 +0000 (UTC)
Date: Wed, 29 Apr 2026 11:10:21 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <20260429-responsible-clever-coyote-6b79f1-mkl@pengutronix.de>
X-AI: stop_reason: "refusal"
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="v5gtri26mw6juc6y"
Content-Disposition: inline
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=pengutronix.de
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
 "David S. Miller" <davem@davemloft.net>,
 Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Philipp Stanner <phasta@kernel.org>, Chi-hsien Lin <chi-hsien.lin@cypress.com>,
 Ido Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Petr Machata <petrm@nvidia.com>, Kory Maincent <kory.maincent@bootlin.com>,
 brcm80211-dev-list.pdl@broadcom.com, GR-Linux-NIC-Dev@marvell.com,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Leon Romanovsky <leon@kernel.org>,
 Denis Benato <benato.denis96@gmail.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Vincent Mailhol <mailhol@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 122294A60B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[31];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[mkl@pengutronix.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,intel.com,dama.to,lists.linux.dev,brownhat.org,google.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,pengutronix.de,marvell.com,davemloft.net,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,cypress.com,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,corigine.com,lunn.ch,sipsolutions.net,pm.waw.pl];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:joe@dama.to,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:m.grzeschik@pengutronix.de,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:davem@davemloft.net,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnu
 lli.us,m:enelsonmoore@gmail.com,m:phasta@kernel.org,m:chi-hsien.lin@cypress.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:khc@pm.waw.pl,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[82];
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


--v5gtri26mw6juc6y
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next] net: Consistently define pci_device_ids using
 named initializers
MIME-Version: 1.0

On 28.04.2026 19:18:44, Uwe Kleine-K=C3=B6nig (The Capable Hub) wrote:
>  drivers/net/can/m_can/m_can_pci.c             |   6 +-
>  drivers/net/can/sja1000/plx_pci.c             | 167 +++----
[...]
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

>  };
>  MODULE_DEVICE_TABLE(pci, plx_pci_tbl);
>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--v5gtri26mw6juc6y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCafHK+wAKCRDMOmT6rpmt
0kuPAP4rY0fDutYzl1X17t0y+XEGDgmxOmjPiXuxZCBfayCaXgD7BrMtvC4i+l07
M4r5isb3cwO71VZn6lO9ZL8xNJtpyAo=
=hO9H
-----END PGP SIGNATURE-----

--v5gtri26mw6juc6y--
