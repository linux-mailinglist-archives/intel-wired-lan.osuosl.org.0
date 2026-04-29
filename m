Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMVpGA6J82mS4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CD14A60C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFCF284EBB;
	Thu, 30 Apr 2026 16:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZJlWWmmUlkdI; Thu, 30 Apr 2026 16:53:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6664684EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568008;
	bh=mfvKfJJPf0ASmalSXv+63KXtxyjY0rmQCt/O1qy7v1U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f4W4BBt0OajkhdlBI5TkjfsO3qIcmZnShDYurtDtLmAFRK5+7PpyeW4ckZuoE8hYH
	 I1p3pg5C/0O3i4zwzOAGRtBaJqxK/x1fjFFSUh2s6CQS91i6Qr0POKPcwjc0dVtKRq
	 gQgl0HaB/vD941EATpsBJLhbICV6irU3AcYjXO/tIRXg6tWHu4oPW39JJrS1R2iGnK
	 0ilvmE5g6dAFl+sNfHNG1wzCyP4gmq/4q9I6AWW4eSigs94Tai6nxBccBboXD6aJDw
	 CQCWhZY0wSjEXYMrbvQFW2+wvRalGXmQ6QnsA+Kx13kmz5qZnj5E5mGD3UEZIuu/fI
	 sSx5oKshys0ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6664684EB4;
	Thu, 30 Apr 2026 16:53:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3160231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7E9A6119E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YN__tOByw6k6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 10:26:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=ukleinek@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 459E960ECF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 459E960ECF
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 459E960ECF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:26:37 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-488a9033b2cso129676205e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777458395; x=1778063195;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mfvKfJJPf0ASmalSXv+63KXtxyjY0rmQCt/O1qy7v1U=;
 b=c2JfQeK5kTe1Y+xJTWSd41EU3n+UlxUxyxqW4oWgTAeixFnrviVT8GINKUrvWcig5E
 k4mLZgtCcpqfPlJLSw+j2XxWBVaReVD+CL8Dhuk6unz6KvFFAJ39f76Pg3fYy/V7c76G
 V07NPXWgfWgrcHNJnjY1TjYUFOPdrmOX9yABvavIpD0dTFMd2u1ksJREiHQdCslU3grD
 1vjoRGbOqpTAkZKWUXtEuUPB3pCMLyIfyNxQhDgv+4ZVrLk2BGW8EWz/a8TmxwKwYCNE
 59RJAo4Jc7e16SDqix8+oQtEaLb6Gfzxu1nkP8rjjLk3Qkzn8vNHABDg7vxIkFWdswQl
 2Slw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+1Vw/JG6TUhdM5oSB/iA0yWxFFTQCJOn6z2+IuvumpbjyhSXKuHd5umBxB/MBOcwgmY+JNjnEHwop4hpNa7H4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy2hAdwB+ggVVH9pjozIfySBQZgiOG/15Q5KbduCfQbZLL4cn3a
 VST+IRMAE2+rTbrvaGg/UTwIlonjrxhHzylsFZNlm6z9LZNooeJBVzmlxzf1rp/Jpeo=
X-Gm-Gg: AeBDievi+BOewP/lmnFcl88lqjGAkMLYpTfFKuppXoeRrDMko1CGOR5k+sfkRYUVylF
 IFPnR/rAHQ9EQeA4tgWsccYGVxcKHiBrqCjO6hIsMRn/UqI9ucmv9p57W3vBLAAl1I/z3UTOxoj
 2tK3aTuFhuBVmeiborLYQMesvC9dGZsTqhh3ZPyB5QJ0yOXDMWou/ynYfHQxeZ4Dc9A5vj+cZJp
 WlwWH0EJ0JMPhpnRFahfr4XBhdIy7RJd1QnZBSi9mMLNKNOGna+nseCtOqaiEe0WlfD4j59+6hH
 tkcq5tL3dL49eJY/BJKojJrA8eCQcf2jBpkqcEWGC9CLA4XP9qgQuaeevIXxQXA4QyNF0zijr+L
 UO95YBJYi1lOOJHolxns/EIrlyVEwtSnRWxN2DvcMf+iYpxbB+AMLnKg5C087SZxrqcAuc+jLg5
 GkvtuLbQ85tMdVY2TE+cRHAHprXInws0Br1p1P3wD5E/TkZZRpLOrOzp4OMzb9w8dbeJkERlpbj
 0U3ncUmcXruEen7GOEvywghcw==
X-Received: by 2002:a05:600d:8402:b0:489:149a:f9e7 with SMTP id
 5b1f17b1804b1-48a77b25340mr88922285e9.27.1777458393898; 
 Wed, 29 Apr 2026 03:26:33 -0700 (PDT)
Received: from localhost
 (p200300f65f114e08936c55da887fa426.dip0.t-ipconnect.de.
 [2003:f6:5f11:4e08:936c:55da:887f:a426])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-48a7b912ee3sm28053445e9.2.2026.04.29.03.26.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2026 03:26:33 -0700 (PDT)
Date: Wed, 29 Apr 2026 12:26:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Message-ID: <afHbcwzVucHRYmDW@monoceros>
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
 <afGrPvUeZ-DjWbC8@ashevche-desk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="k4r3nmtfjdpszuus"
Content-Disposition: inline
In-Reply-To: <afGrPvUeZ-DjWbC8@ashevche-desk.local>
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1777458395; x=1778063195;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mfvKfJJPf0ASmalSXv+63KXtxyjY0rmQCt/O1qy7v1U=;
 b=B1HjytEFUrAHzKDx4QFG1YmOF0HexxWJsZKxUKd2RhnRITKY3P54T45kYpoGfUQTdq
 l8q0PMXW2o+84C1T8DHA57stMYsewz2Te+dmd2P6Ek9N2ggRrHJbXsw1g4SfggZpCoZP
 oOchcUJvsMQQu0gKpDglJz4+MZA1cTJofY+s2X7zxYcdooP+6spWhMBH288VeVxQqcZ9
 osbIePGtbzHnxMgobiIfyEufrGBsXhzUSAN69pmKmnjfYXQWSAgEcnjql1kSjLFt4bLm
 4+sWnCXhcKqebi64AZEMa82i+fipa2j2gcpp+ME9RCizfpy8aSXEMbvZY46s9lZWMT+O
 0RNg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=B1HjytEF
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
 Jiri Pirko <jiri@resnulli.us>, Philipp Stanner <phasta@kernel.org>,
 Ido Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
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
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: A7CD14A60C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[30];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:cai.huoqing@linux.dev,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:joe@dama.to,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:richardcochran@gmail.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:m.grzeschik@pengutronix.de,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:phasta@kernel.or
 g,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:mkl@pengutronix.de,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:enelsonmoore@gmail.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:khc@pm.waw.pl,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[79];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,intel.com,dama.to,lists.linux.dev,brownhat.org,google.com,ti.com,gmail.com,tux.org,net-swift.com,farsite.co.uk,badula.org,pengutronix.de,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,seu.edu.cn,mucse.com,bootlin.com,corigine.com,lunn.ch,sipsolutions.net,davemloft.net,pm.waw.pl];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


--k4r3nmtfjdpszuus
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next] net: Consistently define pci_device_ids using
 named initializers
MIME-Version: 1.0

[I dropped a few addresses from Cc: that bounced for me before.]

Hello Andy,

On Wed, Apr 29, 2026 at 09:54:54AM +0300, Andy Shevchenko wrote:
> On Tue, Apr 28, 2026 at 07:18:44PM +0200, Uwe Kleine-K=F6nig (The Capable=
 Hub) wrote:
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
>=20
> ...
>=20
> > -	{0,}						/* 0 terminated list. */
> > +	{ }						/* 0 terminated list. */
>=20
> The comments like these are just noises.

Agreed, but I'd consider it out of scope for this patch to drop these
comments. That might also be subjective.

> The rule of thumb is to play with a
> trailing comma:
> - always drop it in the terminator entry
> - always keep it in the normal initialisers when semantically it's not a
> terminator

That was my intention. Will rework.

> >  static const struct pci_device_id liquidio_pci_tbl[] =3D {
> >  	{       /* 68xx */
> > -		PCI_VENDOR_ID_CAVIUM, 0x91, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0
> > +		PCI_VDEVICE(CAVIUM, 0x91)
>=20
> Use full fixed-width device id value(s). 0x0091 here and so on...

Sounds fair.

> >  	},
>=20
> Also seems that you may decrease number of LoC here putting it as
>=20
> 	{ PCI_VDEVICE(CAVIUM, 0x0091) }, /* 68xx */
>=20
> and so on...

Agreed if all lines of an array can be compressed like that.

> >  	{       /* 66xx */
> > -		PCI_VENDOR_ID_CAVIUM, 0x92, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0
> > +		PCI_VDEVICE(CAVIUM, 0x92)
> >  	},
> >  	{       /* 23xx pf */
> > -		PCI_VENDOR_ID_CAVIUM, 0x9702, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0
> > +		PCI_VDEVICE(CAVIUM, 0x9702)
> >  	},
> > -	{
> > -		0, 0, 0, 0, 0, 0, 0
> > -	}
> > +	{ }
> >  };
>=20
> ...
>=20
> >  #define CH_PCI_DEVICE_ID_TABLE_DEFINE_END \
> > -		{ 0, } \
> > +		{ } \
> >  	}
>=20
> Why do we have this macro at all?

Over engineering? Reworking that also seems to be out of scope for this
patch to me.

> Also I somehow managed to remove, but I remember you had an inner comma i=
n some
> cases after the .driver_data, when the full ID entry is located on a sing=
le
> line. I.o.w. do
>=20
> 	{ PCI_...(), .driver_data =3D ... // no trailing comma here! },

That was also my intention. Will rework.

Best regards
Uwe

--k4r3nmtfjdpszuus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnx3NUACgkQj4D7WH0S
/k7M1wf/QelV4pupjiZbLcg8qPVRzGgZ0AKqDUMY0oLZjH5ck6W8VSMONm3Ln4fu
Tbzeul8HVUK14PBHvYKQiDU7OCUzVwfgAgM2qs9BuyfAmX3mBr2SaZI1M1DtYNUv
3FRPKSiDWXcbe5sguySJb0BKepJc6DdUYzpRBrF5m90mvuM2dZALWRiO3lFvMYlS
Kls/wTkony/O5uB/oAAHI7y91nhHIw++GuY0fge4rmRUISKTZ+G1/Lz8VrcUzt+p
8iTGVh5MpStGQuFRrjho2JzPcrXxcOYiI6Z3rRBMCu5qZbVlrzaKcVvwCMd7n4gc
gbcV922oXzCW/OtCAcZtPNggcidTXA==
=we79
-----END PGP SIGNATURE-----

--k4r3nmtfjdpszuus--
