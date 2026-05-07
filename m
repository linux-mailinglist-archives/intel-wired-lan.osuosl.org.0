Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBKRA32g/Gm1SAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 16:23:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E17844EA179
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 16:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27BCC4114B;
	Thu,  7 May 2026 14:23:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2HSIVPDIr-LF; Thu,  7 May 2026 14:23:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9237241149
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778163833;
	bh=KHdHPIlg8ERzV5KgqRTDZ9XRFXSHKLYAiHw6AYH9eg4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GxUJIVLUeRintfuhkD1AyMMusTkdJpsow8qbphD3V0NrN3MpvfPtdEfiDbQCgz17P
	 JacdEuqttxpJx+ZKlDhkah3JmhxKxP80jHh1GZ7BcdaG4z/CqlQeIL23Uvx+xNhUrj
	 6gA4RuAdmdnr6QECDESdPXf1ZtxS58eJdsduqjycha9q6B6cdGHL9FuwC+bw972Q/Y
	 315Wte/IMJDpStyDlvZgq/3Sdh727AaQSZGoLVx/Xufrn3Io6dgRRZpl6/pi8knaJX
	 ueKSl1qm61YYA3WRVai3SdpgjezTiU3ES6VfyQF+vDHb2awd6OHaAhQ9FWiEupSYLR
	 sB+t56ehop4PQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9237241149;
	Thu,  7 May 2026 14:23:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0624E317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 14:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF78682F98
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 14:23:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9q7KnM2wkuEL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 14:23:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=ukleinek@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A5E882993
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A5E882993
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A5E882993
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 14:23:47 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-4852a9c6309so8131495e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 May 2026 07:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778163825; x=1778768625;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KHdHPIlg8ERzV5KgqRTDZ9XRFXSHKLYAiHw6AYH9eg4=;
 b=r5gkq9O9B3OXWMEVeaEwEbzaQUUITiOAcx1ESbp395y3Oz6CWp6cOg0Nv+arVM9BKt
 LQPhOWJnZYNTWpuqpVAVvTajCj2BjlMWpEJhAh8H7cImKijJyS2rNUo6HIjpSCapu3Lk
 dGq6VmkKp+WbkMV++BP70j90lgu4iZACe47zhGpEC2HO1wtMjUr1UMUb06vgUxjpUa/c
 WWNXUwNwTlySgeUeyBReGa9RTCEERcORRptxghyPBykjrDDTdqhUr5jxcVRY0mmAM7rm
 JC5gEm1N1ef1oietQQ8FlnX4VF+Z9Kp2NJB7hAaL6eenyXwAyB5SrA+pGvJyTgU05oX8
 8NIw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+eHYa4jNyrn/mPYACLncAcQQz32qFMVnHoBOklug8XXzUJv9fPJDNgL2Omn7N09IP3YTMKkG9qw4o1akUZyHQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzMYL4w1g5kp3PYsnvWkWktboIkOhSlKbkiKViq0AV+xdGpW+HG
 YoI2OdT1GS/6Ihiswr6j1knm21hwniYBQa3JJClI3Mdy7905RDa80dJDkfcoFmGt9Po=
X-Gm-Gg: AeBDietWwd4pL56G2z5fAM1NsQfk2gSVGJYPL/gL23MOu/E/2hD/dm22Hvt/DI1pRwN
 D+Q9SUNLxKWmUWRGE7fIfkgrzCKXo9qZT3KLQo7ssE5M4fR6/EAKG13jfD4Lh4Ma29E3dBfeAcL
 sVAb8sH5JT+uIXdOvsqNX92GJOBgA6ROTvPU4W2p8HTCqclT/POww3vSkBL4o++1w+6BUIQS9xf
 k6R97jchDOoiDhugcy8W08EMcAmuBkf2BpNuHobJchwNeyoerjoqjZ9e8jq++2AwSFzNKtv1BbT
 vtRwmyrXZ0bO/pR4kTy08+XaQ6CqgCbLa1XqBd63bj5Shbozk56S9X9NqASTbEruiSw5ZoFbNjb
 c43SJsQ3xefqSEzu2adp4Xv8VbkjFSFEPCcIGK4X01pdfNqgvA1A0IPDuKO8Z2N+kYE/SpgRI2C
 hIZs80S0E4IGGbnV8C9j24ivZVW8qq/v1SCdoF6j1NcSlp+fvg9cHrQMxb5zUh7T/wDfVhJrv8h
 MmYgQ+Ee0vvg57C1KNDAbyieSfo2Ot96Bx4
X-Received: by 2002:a05:600c:628e:b0:48e:60a3:220a with SMTP id
 5b1f17b1804b1-48e60a32224mr33559005e9.0.1778163825055; 
 Thu, 07 May 2026 07:23:45 -0700 (PDT)
Received: from localhost
 (p200300f65f114e08e9fd60f450b139aa.dip0.t-ipconnect.de.
 [2003:f6:5f11:4e08:e9fd:60f4:50b1:39aa])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-48e538a8159sm137501655e9.6.2026.05.07.07.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2026 07:23:44 -0700 (PDT)
Date: Thu, 7 May 2026 16:23:43 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <afyfa4E4rNbkMYTk@monoceros>
References: <cover.1778149923.git.u.kleine-koenig@baylibre.com>
 <76da4f44d48bdde84580963862bf9616bee5c9e9.1778149923.git.u.kleine-koenig@baylibre.com>
 <20260507-healthy-gainful-fox-500552-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="2r3luua3e55dgqvk"
Content-Disposition: inline
In-Reply-To: <20260507-healthy-gainful-fox-500552-mkl@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1778163825; x=1778768625;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=KHdHPIlg8ERzV5KgqRTDZ9XRFXSHKLYAiHw6AYH9eg4=;
 b=HW9yWwwwsrCVWF6YM8OUSR95PksWl+Chx/Z3Qv73lWmyIUxkGl84Lw8bAIP3CGOQ0l
 yYIcPV0Pxej7cMBZ328/zTlmaYfTkvsiLIqJutYYDx5me0D5Dv0bZO773pY6IkefB1RY
 azSqeeNe3L4P0VWmJv09L8rf6aFxnPxCKjnz48VwCV8WVCUXmKBflf3odisQpPahan7S
 1D/CY8poECMVbwE5Hu7O7MZE28/EK3fNimTnoFgaVhq4+tJFq06oL4j+g+O/IVOfGKkf
 rSRvdf0u6CcRDcW6S1J4udz0cYrE9wv1r/8EobNBua1P0l+lJxIAxOkZdtZjChPPo0GN
 0uWg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=HW9yWwww
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
X-Rspamd-Queue-Id: E17844EA179
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mkl@pengutronix.de,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:mgr@kernel.org,m:ionut@badula.org,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:enelsonmoore@gmail.com,m:larysa.zaremba@intel.co
 m,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:khc@pm.waw.pl,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,google.com,intel.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,amazon.com,corigine.com,lunn.ch,sipsolutions.net,davemloft.net,pm.waw.pl];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


--2r3luua3e55dgqvk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next v2 1/2] net: Consistently define pci_device_ids
 using named initializers
MIME-Version: 1.0

Hello Marc,

On Thu, May 07, 2026 at 12:55:45PM +0200, Marc Kleine-Budde wrote:
> > +	}, {
> >  		/* ASEM Dual CAN raw -new model */
> > -		ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> > -		ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID_BIS,
> > -		0, 0,
> > -		(kernel_ulong_t)&plx_pci_card_info_asem_dual_can
> > +		PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVICE_ID,
> > +			       ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_SUB_DEVICE_ID_BIS),
> > +		.driver_data =3D (kernel_ulong_t)&plx_pci_card_info_asem_dual_can,
> >  	},
> > -	{ 0,}
> > +	{ }
>=20
> Nitpick: can you convert the terminating entry to follow the same style
> as the rest of the driver:
>=20
> diff --git a/drivers/net/can/sja1000/plx_pci.c b/drivers/net/can/sja1000/=
plx_pci.c
> index a03553b80a5d..d69ff0ccfd94 100644
> --- a/drivers/net/can/sja1000/plx_pci.c
> +++ b/drivers/net/can/sja1000/plx_pci.c
> @@ -353,8 +353,8 @@ static const struct pci_device_id plx_pci_tbl[] =3D {
>                  PCI_DEVICE_SUB(ASEM_RAW_CAN_VENDOR_ID, ASEM_RAW_CAN_DEVI=
CE_ID,
>                                 ASEM_RAW_CAN_SUB_VENDOR_ID, ASEM_RAW_CAN_=
SUB_DEVICE_ID_BIS),
>                  .driver_data =3D (kernel_ulong_t)&plx_pci_card_info_asem=
_dual_can,
> -        },
> -        { }
> +        }, {
> +        }
>  };
>  MODULE_DEVICE_TABLE(pci, plx_pci_tbl);

After the conversation in the v1 thread it was unclear to me if you
stand by your opinion, so I kept the format as it was. I interpret your
repetition of the nitpick as request to rework the can drivers for the
next revision (if that happens).

Best regards
Uwe

--2r3luua3e55dgqvk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmn8oGwACgkQj4D7WH0S
/k5magf/eyQ23u39ybxkW2OdbwK59q0fpRutP/sxrKWuT6tv8V2fFyOeuGTCjF38
S+nSwmuH/rU1tyi6cJiCBx8U/lrBqlri55tfqDeMMmEdaTgDx/f8rLh5gw/OXR6w
iiW3jwdOchqKMQAWW0XFekrRumOxBYByCEve5jEyzQwjs4cggMP+GUBgYLi9VMsu
p0EMeC469BJE9KTtF0MQoLVR4xXQebXlYBWyCtn6NXuHOWYlZbFW4NYx1YQADQGM
vg8UmTZiP5QB08RryLszWVJxAzMjkvPj8VPLDjxs5zDqJDt6Zbm3G+mNqj3JHLlV
t3qw6OQQis3J/F/BMUIXdtL08Ss0JA==
=i/K5
-----END PGP SIGNATURE-----

--2r3luua3e55dgqvk--
