Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B31A89690
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 10:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D82D240B85;
	Tue, 15 Apr 2025 08:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_TdXMqhnkpc; Tue, 15 Apr 2025 08:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15D7540D19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744705789;
	bh=iHJWbSB0ymhRZHV1VgYAg5TLOfdwWd395GC4IpAL4TA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HLc4n4n5U+ro+rxPbq5YBhgvXQwWpDNtPV2jnw18KeXk3C1WcOQ7qqtVqhLqor0du
	 m9elKpsH1tTDp+7qdp0TnjQqnDDltSpetkgfMChMo0L2uMTr1m5WghevNcUkdw9Wg8
	 n7spObrfnLsqDuhHE3M6f38T2iZayCZVf0C4kd9y9KPeQf0M91i5YHWLJ/v93gZzrO
	 k8YbpbU0wAnsuibP7n0LHH3waruPIjL44u3nKkro+7rCTCajXMqAYuaNcLL01PjJde
	 vVuYRMRaaDnWi26iwCABApWv2hUpb+Y+SLUGb8Z1vMduVVYrZZfOcOpeExV3Hag1EP
	 aCvGK7wWI2+Ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15D7540D19;
	Tue, 15 Apr 2025 08:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A9B41109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 08:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F9B0607A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 08:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zyM8DLhDKAtQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 08:29:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2001:4b98:dc4:8::223;
 helo=relay3-d.mail.gandi.net; envelope-from=kory.maincent@bootlin.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 512916058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 512916058B
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::223])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 512916058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 08:29:45 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1910F1FCE6;
 Tue, 15 Apr 2025 08:29:38 +0000 (UTC)
Date: Tue, 15 Apr 2025 10:29:38 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Bryan
 Whitehead <bryan.whitehead@microchip.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Paul Barker
 <paul.barker.ct@bp.renesas.com>, Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?=
 <niklas.soderlund@ragnatech.se>, Richard Cochran
 <richardcochran@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, Russell
 King <linux@armlinux.org.uk>, Andrei Botila <andrei.botila@oss.nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Message-ID: <20250415102938.53665eda@kmaincent-XPS-13-7390>
In-Reply-To: <20250414-jk-supported-perout-flags-v2-0-f6b17d15475c@intel.com>
References: <20250414-jk-supported-perout-flags-v2-0-f6b17d15475c@intel.com>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeftddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtqhertdertdejnecuhfhrohhmpefmohhrhicuofgrihhntggvnhhtuceokhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgfdutdefvedtudegvefgvedtgfdvhfdtueeltefffefffffhgfetkedvfeduieeinecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemtggsudelmeekheekjeemjedutddtmeelugejtgemudgrudgsmegvkehfugemuggruddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegtsgduleemkeehkeejmeejuddttdemlegujegtmedurgdusgemvgekfhgumegurgduvddphhgvlhhopehkmhgrihhntggvnhhtqdgirffuqddufedqjeefledtpdhmrghilhhfrhhomhepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepfedtpdhrtghpthhtohepjhgrtghosgdrvgdrkhgvlhhlvghrsehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnughrvgifsehluhhnnhdrtghhpdhrtghpthhtohepohhlt
 hgvrghnvhesghhmrghilhdrtghomhdprhgtphhtthhopegurghvvghmsegurghvvghmlhhofhhtrdhnvghtpdhrtghpthhtohepvgguuhhmrgiivghtsehgohhoghhlvgdrtghomhdprhgtphhtthhopehkuhgsrgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgrsggvnhhisehrvgguhhgrthdrtghomhdprhgtphhtthhopegrnhhthhhonhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomh
X-GND-Sasl: kory.maincent@bootlin.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1744705782;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iHJWbSB0ymhRZHV1VgYAg5TLOfdwWd395GC4IpAL4TA=;
 b=avoJCGzOyI+/qeQWpTYUeIpFAimgxpl3v3j63LrJbyqibztcNuLa5wdrkXU7UG3C7DND4I
 U1/0jPMqPqlHPCpMQ0a0IXq376F4eRg0NQQyusk+eJKvrOJVWDKG+T6DQ5oCyvJ0a18u66
 nMTvMqicqSWk6+EwZN9vIDLqpn+GNF9bUqPpA99323paG1mXgLCaS+e/QIluqgHUB9B6ol
 R6cdP3JhJFPDyGX1FzAvLevIq4svrl6rBsiqN+nmLYJnRG89pYhAeFulyDxFytGzdVhxKX
 dONbEoR4IKeeIAQ1Mn5nJFlVQK3SJlAHUcTIsX39lhMAVO69xIDcI4YpSw4SJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bootlin.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=avoJCGzO
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] net: ptp: driver
 opt-in for supported PTP ioctl flags
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 14 Apr 2025 14:26:29 -0700
Jacob Keller <jacob.e.keller@intel.com> wrote:

> Both the PTP_EXTTS_REQUEST(2) and PTP_PEROUT_REQUEST(2) ioctls take flags
> from userspace to modify their behavior. Drivers are supposed to check
> these flags, rejecting requests for flags they do not support.
>=20
> Many drivers today do not check these flags, despite many attempts to
> squash individual drivers as these mistakes are discovered. Additionally,
> any new flags added can require updating every driver if their validation
> checks are poorly implemented.
>=20
> It is clear that driver authors will not reliably check for unsupported
> flags. The root of the issue is that drivers must essentially opt out of
> every flag, rather than opt in to the ones they support.
>=20
> Instead, lets introduce .supported_perout_flags and .supported_extts_flags
> to the ptp_clock_info structure. This is a pattern taken from several
> ethtool ioctls which enabled validation to move out of the drivers and in=
to
> the shared ioctl handlers. This pattern has worked quite well and makes it
> much more difficult for drivers to accidentally accept flags they do not
> support.
>=20
> With this approach, drivers which do not set the supported fields will ha=
ve
> the core automatically reject any request which has flags. Drivers must o=
pt
> in to each flag they support by adding it to the list, with the sole
> exception being the PTP_ENABLE_FEATURE flag of the PTP_EXTTS_REQUEST ioctl
> since it is entirely handled by the ptp_chardev.c file.
>=20
> This change will ensure that all current and future drivers are safe for
> extension when we need to extend these ioctls.
>=20
> I opted to keep all the driver changes into one patch per ioctl type. The
> changes are relatively small and straight forward. Splitting it per-driver
> would make the series large, and also break flags between the introduction
> of the supported field and setting it in each driver.
>=20
> The non-Intel drivers are compile-tested only, and I would appreciate
> confirmation and testing from their respective maintainers. (It is also
> likely that I missed some of the driver authors especially for drivers
> which didn't make any checks at all and do not set either of the supported
> flags yet)
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>

Thank you!
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
