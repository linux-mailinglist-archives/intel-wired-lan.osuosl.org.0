Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPrQC1Wm/GmwSQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 16:48:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 564974EA839
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 16:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDD296102D;
	Thu,  7 May 2026 14:48:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BRftM6EEoq9b; Thu,  7 May 2026 14:48:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AB2461057
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778165328;
	bh=MzCFuRNb8Sslv8kY4I/Dbvw9vys0PYrJGfq6VDvNHpI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yqFOCeriFyW+SN3sW7uPfKbDucIOWrbvlRtzjUvv1TpRNZbGKl4nAUvVr7Tpse6a8
	 ZGCPzP20iKhulMjE3GR5MWYWQoVpkQPlkKa0ckJUxocnzMSk1iCAgBMR61n25cZzpf
	 g1VdEh/D4gwTmRId0Ykkapt2LOoouuQRHnyyVxAHDzoNUxQ1Gq0ZQAq7iTSdnmT9Ko
	 rsCbyc2hXnwpT+SgntR2VcKG4ZNhzvxVcyNEElRqqlohBNICNVX15lyTZti2pAYqWz
	 AkWJ+eqoUfG5CGIXj8CgT+rHnhQs7kWJTepxlRkSk1ASZvJvA0dQMfEo7oMkEJKQl7
	 360+PcIP0zHTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AB2461057;
	Thu,  7 May 2026 14:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 61F6A280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 14:48:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47F1141161
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 14:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZJwd4PkBy9y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 14:48:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:edc0:2:b01:1d::104; helo=metis.whiteo.stw.pengutronix.de;
 envelope-from=mkl@pengutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD5134115E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD5134115E
Received: from metis.whiteo.stw.pengutronix.de
 (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD5134115E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 14:48:43 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1wL01i-0001Vq-3i; Thu, 07 May 2026 16:48:34 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b]
 helo=bjornoya.blackshift.org)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <mkl@pengutronix.de>) id 1wL01Z-000wEM-1k;
 Thu, 07 May 2026 16:48:26 +0200
Received: from pengutronix.de (p4ffb2dc6.dip0.t-ipconnect.de [79.251.45.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 264265306B3;
 Thu, 07 May 2026 14:48:25 +0000 (UTC)
Date: Thu, 7 May 2026 16:48:24 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Message-ID: <20260507-dangerous-manipulative-guan-bfd474-mkl@pengutronix.de>
X-AI: stop_reason: "refusal"
References: <cover.1778149923.git.u.kleine-koenig@baylibre.com>
 <76da4f44d48bdde84580963862bf9616bee5c9e9.1778149923.git.u.kleine-koenig@baylibre.com>
 <20260507-healthy-gainful-fox-500552-mkl@pengutronix.de>
 <afyfa4E4rNbkMYTk@monoceros>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="3r5cznssyoe7scuq"
Content-Disposition: inline
In-Reply-To: <afyfa4E4rNbkMYTk@monoceros>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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
X-Rspamd-Queue-Id: 564974EA839
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:mgr@kernel.org,m:ionut@badula.org,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:enelsonmoore@gmail.com,m:larysa.zaremb
 a@intel.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:khc@pm.waw.pl,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[mkl@pengutronix.de,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,google.com,intel.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,amazon.com,corigine.com,lunn.ch,sipsolutions.net,davemloft.net,pm.waw.pl];
	DMARC_NA(0.00)[pengutronix.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,pengutronix.de:mid,pengutronix.de:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[79];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mkl@pengutronix.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action


--3r5cznssyoe7scuq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next v2 1/2] net: Consistently define pci_device_ids
 using named initializers
MIME-Version: 1.0

On 07.05.2026 16:23:43, Uwe Kleine-K=C3=B6nig (The Capable Hub) wrote:
> Hello Marc,
>
> On Thu, May 07, 2026 at 12:55:45PM +0200, Marc Kleine-Budde wrote:
> > > +	}, {
> > >  		/* ASEM Dual CAN raw -new model */
> > > -		ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> > > -		ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID_BIS,
> > > -		0, 0,
> > > -		(kernel_ulong_t)&plx_pci_card_info_asem_dual_can
> > > +		PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> > > +			       ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID_BIS=
),
> > > +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_asem_dual_can,
> > >  	},
> > > -	{ 0,}
> > > +	{ }
> >
> > Nitpick: can you convert the terminating entry to follow the same style
> > as the rest of the driver:
> >
> > diff --git a/drivers/net/can/sja1000/plx_pci.c b/drivers/net/can/sja100=
0/plx_pci.c
> > index a03553b80a5d..d69ff0ccfd94 100644
> > --- a/drivers/net/can/sja1000/plx_pci.c
> > +++ b/drivers/net/can/sja1000/plx_pci.c
> > @@ -353,8 +353,8 @@ static const struct pci_device_id plx_pci_tbl[] =3D=
 {
> >                  PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DE=
VICE_ID,
> >                                 ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CA=
N_SUB_DEVICE_ID_BIS),
> >                  .driver_data =3D (kernel_ulong_t)&plx_pci_card_info_as=
em_dual_can,
> > -        },
> > -        { }
> > +        }, {
> > +        }
> >  };
> >  MODULE_DEVICE_TABLE(pci, plx_pci_tbl);
>
> After the conversation in the v1 thread it was unclear to me if you
> stand by your opinion, so I kept the format as it was. I interpret your
> repetition of the nitpick as request to rework the can drivers for the
> next revision (if that happens).

Doh - Yes, right, we discussed this already. Keep it as is and add my:

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de> # for drivers/net/can

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--3r5cznssyoe7scuq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCafymNgAKCRDMOmT6rpmt
0nq+AQDxBatA6k3wbRiLlE0iYqFi1UszWzbE6VspAxP9GaL27AEAvpxnHmYAF7Ba
NGRZfHI9sLbcPJXvBj/FLuPCtchoBwQ=
=GAHD
-----END PGP SIGNATURE-----

--3r5cznssyoe7scuq--
