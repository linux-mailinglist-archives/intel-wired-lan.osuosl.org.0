Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF3EA882C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE576F5A9;
	Mon, 14 Apr 2025 13:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwfX0iK_x0GM; Mon, 14 Apr 2025 13:44:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25FBD61150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744638252;
	bh=fmi7flxlGHpvF4HSkQqrqNLSomJ0qJnIgw5w4V6dOUI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kVqKGWxuwSvF2SaRo1avaz0yr3VlYDAecfGWvDRpp2+mNJqj+jCtKmZyYDkrPYpt/
	 jLeZ7ZF++/YSeBDNLQSsExCpiDCfnnJyrjdpDH2czKujf2gxdN7DMiGLZisSd0J148
	 Yw1gInxYdhTS7Gfp2XKQXoRsuuSkyzJqJ3wpCkuMnKbhxxg3xb5G77fM4z5DSBouIk
	 tgRHRnUHM4g9Wk8TWLCKWJsnLTrZtiSbgsej0Ke6P5i/0cw4C8wGMdum+FD86fMRxZ
	 /XRXuTOvkGa9EpaWtqUXX93qTkxdZPqMAPBLScriythdYq8HszsJoIifBfgirocHqG
	 TwRkXb/9NEqUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25FBD61150;
	Mon, 14 Apr 2025 13:44:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DE2F250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2D8C6F5DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VvShqarMq8cx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:44:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2001:4b98:dc4:8::222;
 helo=relay2-d.mail.gandi.net; envelope-from=kory.maincent@bootlin.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA6A061145
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA6A061145
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::222])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA6A061145
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:44:07 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1E7634385F;
 Mon, 14 Apr 2025 13:44:04 +0000 (UTC)
Date: Mon, 14 Apr 2025 15:44:04 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250414154404.1c25ae91@kmaincent-XPS-13-7390>
In-Reply-To: <20250414130007.366132-7-martyna.szapar-mudlaw@linux.intel.com>
References: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250414130007.366132-7-martyna.szapar-mudlaw@linux.intel.com>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvddtjedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtqhertdertdejnecuhfhrohhmpefmohhrhicuofgrihhntggvnhhtuceokhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgfdutdefvedtudegvefgvedtgfdvhfdtueeltefffefffffhgfetkedvfeduieeinecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehkmhgrihhntggvnhhtqdgirffuqddufedqjeefledtpdhmrghilhhfrhhomhepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepgedprhgtphhtthhopehmrghrthihnhgrrdhsiigrphgrrhdqmhhuughlrgifsehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhishhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrt
 ghpthhtohepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomh
X-GND-Sasl: kory.maincent@bootlin.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1744638245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fmi7flxlGHpvF4HSkQqrqNLSomJ0qJnIgw5w4V6dOUI=;
 b=EODCCOImDJZJOCuCcz84zOFvtZMDxT4NZa9TkcGXku1evj31hS+THtNKRgd9yoakJGrz7U
 ydr24cRWnnXmHHgbpwKTV0CaGQ8yeT2LmSTNJ9VQpz9U70sYiEVWtnzZqb9GESO+g/Q8vp
 coexTfA6xmvzuj6cH1klbv5oQO+3eOc+tzPxWpKgGviZUHIQ0E8A8ZEAbcYZOSYhLhUhix
 LmlQ646pPSACpeTG+77yImfHqthGpVNj66tH90x9J+lXZk8L6MtK8fYjIVEbklGuFdmJ5b
 29dXRe3yD2OruLnXq67eGUYgBz+pmd82LLMZrt17cqxndSPOl/wXGbTzxm7Prw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bootlin.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=EODCCOIm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbe: add
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

On Mon, 14 Apr 2025 15:00:11 +0200
Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com> wrote:

> Introduce a link_down_events counter to the ixgbe driver, incremented
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
