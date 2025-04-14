Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C34A88480
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 16:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 574C440C21;
	Mon, 14 Apr 2025 14:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WUhxkSnzk6il; Mon, 14 Apr 2025 14:21:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 554824091A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744640468;
	bh=Gx49b71SlJ4tBbfJnUYpEAjs6QxmArSYk5uevCK8vuw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OkAGc5dq91zNnVAutC5Ljml3zGG7HN9eBcSSB+t2tiuobtm9pzcFkHxNugbOFkh9v
	 UkDaOZk9OUZAjVCwglYSa3EiZ9jQi42LT+pvkaJFE62hJzKrOO+sXiwnRDvI2i2unC
	 oDHAl2B4huWIK7qj6fPr4hiSSodX8ZFgw9SAJwOKjDOF91aHcCSWNDWd/k6Gad3cJe
	 TLLfxY9Fp4ROksjsXIhMTmK1pxZlE3EysnOECc1cUR4a6FkR1G4IwLlqHYYRO0vnPj
	 p0o8WzmP4t5Dp0mrFDMQI1kdLa/hGoVkWA8jUNZAxOGgnewj1A9FgyaE36i7fcklnN
	 Mt2TKyPVeH0kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 554824091A;
	Mon, 14 Apr 2025 14:21:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48DD8250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AAE740126
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:21:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kM4UXIO1cRLc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 14:21:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.70.178.249;
 helo=mslow3.mail.gandi.net; envelope-from=kory.maincent@bootlin.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3419440494
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3419440494
Received: from mslow3.mail.gandi.net (mslow3.mail.gandi.net [217.70.178.249])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3419440494
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:21:01 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mslow3.mail.gandi.net (Postfix) with ESMTP id 107A0584B89
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:43:37 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 46B8F43B5F;
 Mon, 14 Apr 2025 13:43:31 +0000 (UTC)
Date: Mon, 14 Apr 2025 15:43:30 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250414154330.37509a17@kmaincent-XPS-13-7390>
In-Reply-To: <20250414130007.366132-5-martyna.szapar-mudlaw@linux.intel.com>
References: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250414130007.366132-5-martyna.szapar-mudlaw@linux.intel.com>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvddtjeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtqhertdertdejnecuhfhrohhmpefmohhrhicuofgrihhntggvnhhtuceokhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgfdutdefvedtudegvefgvedtgfdvhfdtueeltefffefffffhgfetkedvfeduieeinecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehkmhgrihhntggvnhhtqdgirffuqddufedqjeefledtpdhmrghilhhfrhhomhepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepgedprhgtphhtthhopehmrghrthihnhgrrdhsiigrphgrrhdqmhhuughlrgifsehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhishhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrt
 ghpthhtohepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomh
X-GND-Sasl: kory.maincent@bootlin.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1744638211;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Gx49b71SlJ4tBbfJnUYpEAjs6QxmArSYk5uevCK8vuw=;
 b=AIH4hTUhIRTZbVGnIigQk3eHxcg+oZHK0qplYKh+ADe4hKMd420t2YfKcFzNX7SGPhdKv3
 YPe3GVrTWZ4M7rybjffWF+aUt42H6lLSN5Xm1/WhZZClbTYYn04hq0yQmt2OlNnbEZ5ulT
 KGQKnZ8PtCL9b2spZsQkw13W2YikfboebGYQ5z/jxvGczbFdX3+2djZohPzgOaB5Aa1yOJ
 ih1sf/IFJMy1246x62TV3JCAQd4oC3H/s1WOe/YdHVLeAEQj3+D+6cmXOl5eA4jZem+O+e
 hpxgCtQ5NT9tz71o4XYtFCWgqs4T5kwhx7edy8xxMwiBAGCb1i4NXSPjJeOX7Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bootlin.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=AIH4hTUh
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: add
 link_down_events statistic
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

On Mon, 14 Apr 2025 15:00:09 +0200
Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com> wrote:

> Introduce a link_down_events counter to the ice driver, incremented
> each time the link transitions from up to down.
> This counter can help diagnose issues related to link stability,
> such as port flapping or unexpected link drops.
>=20
> The value is exposed via ethtool's get_link_ext_stats() interface.
>=20
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.c=
om>

Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>

Thank you!
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
