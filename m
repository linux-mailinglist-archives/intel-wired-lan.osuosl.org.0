Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN2CIxCJ82md4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF584A60E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEB9D84EAE;
	Thu, 30 Apr 2026 16:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fxViUYYGkd_S; Thu, 30 Apr 2026 16:53:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3226084EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568010;
	bh=oTklDTNdxgMiOr8HV0Z6gDUQcK4MMB7dBQkYfU4NXYc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gpD0brUQYqC84FfxZTq8SVPejEkD4yHneJE6l4QkYFaifcMadkBqqAnzZen/Tz2hO
	 hR8gWLWOpZcyQjdtd15bTOq+xrMwirNu6hGRjUe+FVkOaqfNqEZ4MiptfWqOZHchfR
	 flratUmn3RalXky0C9JE/HcpoxjIkUyWXEV9UuSN13wK0eYYcC8p4N/ywIpBnZWAd5
	 mnfZbXfHTmA439wuNAN4tQ1ZCW2qDieidHvnJZBxI/jZTajMIlzaIrFfWw5oCsUh0z
	 19q5Li0ewJYXoDsiVVaQ0jVBnQ8G0EN3R7wB5pkye7y2PqsnEw9lacAgbqA+LoR/kE
	 Ya9svnWk8y3Mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3226084EB4;
	Thu, 30 Apr 2026 16:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C8567192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C65AA42311
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FPMDplc_iiES for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 08:55:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::433; helo=mail-wr1-x433.google.com;
 envelope-from=msp@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 560A940871
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 560A940871
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 560A940871
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:55:24 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-449e96a8a80so3117f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 01:55:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777539323; x=1778144123;
 h=in-reply-to:references:content-transfer-encoding:to:from:subject:cc
 :message-id:date:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oTklDTNdxgMiOr8HV0Z6gDUQcK4MMB7dBQkYfU4NXYc=;
 b=M2kkoF3EyFFc2ZrjDgQRXENYZSjAc5JS51FOmvh31TKegPKiBXRwcQ52MfGaNqXcm+
 Gj8pnmOrKyHiIc9qu+9xP2NBiogelX8WsBQ+UpCGzGnHuShFjYdo2YNUZU/GNG0550qs
 N98+TXCksk3xGVkM5ic1iZuOfllaGmPJK8muCDA8hoo847iMN5znBXC2pEAXLdrWSvKb
 4kIkjdXxHMH3DmcXBToEx07V4A0GlSEjhJBZdykhdt4DgidUvMgaWFtfY51NeSducRSb
 DQrUEmPHeH0zDWTuj2U2m3oo8ZOw2gc8SZYNItN3cDNfB3nIrW9Q4arj6kdFzOy1UbCY
 qtpg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+Ej/UjEYS+yTEcTAqLvIj3BDtgWBQ07mj+YLZ2iTjjBOpfPR4zJQWic04RvqSWBLPTufP3smiEvqI8jGIVggQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyFEj73Kk+8pOdz6U623fp80BV7SUkijK8ZAwukI2kaFeaqX+VK
 8/TC77dH0oI3E89ZJ1D3VK3TLb4d0dEEPk8pxGSm1Xuid4D0ADJxitqzEHk0n8x2gr0=
X-Gm-Gg: AeBDiesg2HfgrdPdkEl16sXdrrvAfwg5DjfGfPncAaKiujAsMcQ6cp4JpPbCjMI+l1O
 CIqpWsizVXvADpRKiNIkqUyv+M3cZfYx+NklVw9FZNe4zDdAfzpF5EPvqsnpG8SE441NOKEYnC5
 o4TFJH4/e9qksDBDc8IhmzXBFh97GQaJt7K8SrbHN9A2idFT9sX+5eqiObMWp66FHH66krCTzoC
 R70ntqWlaPOu0fxL8BcsNkRfP8xY3oMeUdtrmlQvqhkXaSBgqX3NhIxfQtwehWt0Arr6vwfJaQ1
 CL71YvdNSISqj2T1yrq4Cinto9QDrqVIhq5e3gtp/Iftk+KzYcrULmxOEZB20x9lBcf7E9hzBgY
 OPE3uaNv7BzCJsNm5zkYAhHUNmgTW/Q9Kqa1RQQaWayvSQNHg166T4JaVjT+h1hIfrfweQWDD/R
 EmDAxLw9qggF2A68Yz+cDUKxjypGM=
X-Received: by 2002:a05:6000:26d1:b0:43e:a703:3665 with SMTP id
 ffacd0b85a97d-4493f42ced4mr3244142f8f.25.1777539322750; 
 Thu, 30 Apr 2026 01:55:22 -0700 (PDT)
Received: from localhost ([2001:4090:a246:83ca:298c:ceb1:1a:f428])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-447b7ca5fe6sm11988989f8f.32.2026.04.30.01.55.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2026 01:55:21 -0700 (PDT)
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=49f7733329a22fff4b83a1680bdebfd7a9830dc80234132c7fb08fa112fd;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 30 Apr 2026 10:55:14 +0200
Message-Id: <DI6D3JVJ6JG6.8V4XUVGJA2D4@baylibre.com>
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: =?utf-8?b?VXdlIEtsZWluZS1Lw7ZuaWcgKFRoZSBDYXBhYmxlIEh1Yik=?=
 <u.kleine-koenig@baylibre.com>, "Michael Grzeschik"
 <m.grzeschik@pengutronix.de>, "Andrew Lunn" <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>,
 "Jakub Kicinski" <kuba@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>,
 "Marc Kleine-Budde" <mkl@pengutronix.de>, "Vincent Mailhol"
 <mailhol@kernel.org>, "Krzysztof Halasa" <khc@pm.waw.pl>, "Johannes Berg"
 <johannes@sipsolutions.net>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0-126-g9e77103592fe
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1777539323; x=1778144123;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:content-transfer-encoding:to:from:subject:cc
 :message-id:date:mime-version:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oTklDTNdxgMiOr8HV0Z6gDUQcK4MMB7dBQkYfU4NXYc=;
 b=ho2Ws5inyN+AQXbfCDPyDuD+s6WNVmETqzhUHrgj9oRwVTyvRzsUe45FC8ucvumVXY
 B742+7jGpeoewfbOQzzJIY2BLOAGWXSwFO2fUNZi6kEodrtth5DcfjYdXCu+RgUR8MIg
 fznRJR7dtBaY0wwjaiyP0+Y7S4N8MNFuQzx8y0ME/44PLQqOl+uNTGj1tu5IycFniKvX
 uCqjBI9UdGpWu+Er7Em1ehNPATaNIoIg5p1dtleq6sgGYC2Swxq4mnAAJMJgwe1hJ/iA
 81sDQaYSz7tGnsarfbwinic/r2S/BnEL53DCt/I5oNc9plZdyFOVrlV8V8PVDDdFVLao
 5X6A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=ho2Ws5in
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
 brcm80211@lists.linux.dev, Daniele
 Venzano <venza@brownhat.org>, oss-drivers@corigine.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, MD Danish
 Anwar <danishanwar@ti.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Marco Crivellari <marco.crivellari@suse.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>, Ion
 Badulescu <ionut@badula.org>, Andy
 Shevchenko <andriy.shevchenko@intel.com>, Leon
 Romanovsky <leon@kernel.org>, Colin Ian King <colin.i.king@gmail.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>, Sai
 Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Philipp Stanner <phasta@kernel.org>,
 Chi-hsien Lin <chi-hsien.lin@cypress.com>, Ido
 Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn
 Helgaas <bhelgaas@google.com>, Zilin Guan <zilin@seu.edu.cn>,
 linux-can@vger.kernel.org, Yibo Dong <dong100@mucse.com>, Joe
 Damato <joe@dama.to>, Petr Machata <petrm@nvidia.com>,
 Kory Maincent <kory.maincent@bootlin.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Vadim
 Fedorenko <vadim.fedorenko@linux.dev>, Manish Chopra <manishc@marvell.com>,
 Denis Benato <benato.denis96@gmail.com>, Rasesh
 Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Yeounsu Moon <yyyynoom@gmail.com>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sudarsana
 Kalluru <skalluru@marvell.com>, Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 5CF584A60E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:m.grzeschik@pengutronix.de,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:khc@pm.waw.pl,m:johannes@sipsolutions.net,m:richardcochran@gmail.com,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:oss-drivers@corigine.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:marco.crivellari@suse.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:andriy.shevchenko@intel.com,m:leon@kernel.org,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:mengyuanlou@net-swift.com,m:klassert@kernel.org,m:stas.yakovlev@g
 mail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:phasta@kernel.org,m:chi-hsien.lin@cypress.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:joe@dama.to,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:manishc@marvell.com,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:yyyynoom@gmail.com,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:hkallweit1@gmail.com,m:andre
 w@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[msp@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,huawei.com,kernel.org,vger.kernel.org,intel.com,lists.linux.dev,brownhat.org,corigine.com,ti.com,tux.org,suse.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,net-swift.com,broadcom.com,realtek.com,resnulli.us,cypress.com,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,linux.dev,google.com,seu.edu.cn,mucse.com,dama.to,bootlin.com,infradead.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[83];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

--49f7733329a22fff4b83a1680bdebfd7a9830dc80234132c7fb08fa112fd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Uwe,

On Tue Apr 28, 2026 at 7:18 PM CEST, Uwe Kleine-K=C3=B6nig (The Capable Hub=
) wrote:
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
> https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@baylibre=
.com/)
> and that requires named initializers. But it's also a nice cleanup on
> its own.
>
> This change doesn't introduce changes to the compiled pci_device_id
> arrays. Tested on x86 and arm64.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig (The Capable Hub) <u.kleine-koenig@b=
aylibre.com>
> ---
> Hello,
>
> the mentioned follow-up quest allows to do
>
> 			PCI_DEVICE(0x1571, 0xa203),
> 	+		.driver_data =3D (kernel_ulong_t)&card_info_10mbit,
> 	-		.driver_data_ptr =3D &card_info_10mbit,
>
> which gets rid of a bunch of casts and so brings a little bit more type
> safety. This patch is a preparation for that.
>
> I handled all of drivers/net/ in a single patch, please tell me if I
> should split by subsystem.
>
> Best regards
> Uwe
> ---

[...]

> diff --git a/drivers/net/can/m_can/m_can_pci.c b/drivers/net/can/m_can/m_=
can_pci.c
> index eb31ed1f9644..cb9335c1d3ea 100644
> --- a/drivers/net/can/m_can/m_can_pci.c
> +++ b/drivers/net/can/m_can/m_can_pci.c
> @@ -183,9 +183,9 @@ static SIMPLE_DEV_PM_OPS(m_can_pci_pm_ops,
>  			 m_can_pci_suspend, m_can_pci_resume);
> =20
>  static const struct pci_device_id m_can_pci_id_table[] =3D {
> -	{ PCI_VDEVICE(INTEL, 0x4bc1), M_CAN_CLOCK_FREQ_EHL, },
> -	{ PCI_VDEVICE(INTEL, 0x4bc2), M_CAN_CLOCK_FREQ_EHL, },
> -	{  }	/* Terminating Entry */
> +	{ PCI_VDEVICE(INTEL, 0x4bc1), .driver_data =3D M_CAN_CLOCK_FREQ_EHL, },
> +	{ PCI_VDEVICE(INTEL, 0x4bc2), .driver_data =3D M_CAN_CLOCK_FREQ_EHL, },
> +	{ }	/* terminating entry */

M_CAN_CLOCK_FREQ_EHL is basically hardcoded for all PCI devices since
2020. I don't think we need this driver data at all and can just drop it
and use M_CAN_CLOCK_FREQ_EHL directly in the code for the frequency.
Once a real new PCI device gets added we can see if and what driver_data
is needed.

Best
Markus

--49f7733329a22fff4b83a1680bdebfd7a9830dc80234132c7fb08fa112fd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCafMY8hsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMiwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlPG
LAD/fzJVNBHtKblmZr7CitXNgE0iUthbQCQShJJb37V4mMgA/2HCptgFXjEqdTdF
h7pcmno1RbnSKnZ/TDh+JQ7CnAwN
=RRmw
-----END PGP SIGNATURE-----

--49f7733329a22fff4b83a1680bdebfd7a9830dc80234132c7fb08fa112fd--
