Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D75A7E36E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E73698120F;
	Mon,  7 Apr 2025 15:11:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FA0XV3q76lIk; Mon,  7 Apr 2025 15:11:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31926811C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038660;
	bh=+3Vrefcf/NQ+JQxSP5ld2ShyoQDx5GSabMC/kL9H49g=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0EhPzn5GC//D7zlC+51k+vyAd5U4XsQo+GgCR+HKoAMMoB2M6Wobf8ThQz8zg213X
	 vkqlSyAchDob752lodUMr+trEUZjTkXcnkLQMdVpVhFtsCCnBBjVAgxYU2AcpG8/DL
	 vBJUGe1q06K1K53/UJ8LM3aSmMAY6sQjjAj3+iN/uHfdKiq6n6ZiLdWz/+9Pp0oB61
	 6AkPCiPBIq/VgA/NLRBRP7wWLEn7Y5ENbtMYWlprWeEeT4rv4MdaVEET0p/m8nfvnj
	 QD6/hAVpcAF+CU2vcEGzxsywy+NRzWADXFAgvvmBunpQFT4lBh5MCQFwgKZ0k20dMC
	 ttqPtcaUS3n1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31926811C9;
	Mon,  7 Apr 2025 15:11:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B0F3DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4708840B85
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:46:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IvMeFahY47Xc for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 13:46:20 +0000 (UTC)
X-Greylist: delayed 850 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Apr 2025 13:46:20 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3EB91403BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EB91403BE
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2001:4b98:dc4:8::226;
 helo=relay6-d.mail.gandi.net; envelope-from=kory.maincent@bootlin.com;
 receiver=<UNKNOWN> 
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::226])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3EB91403BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:46:19 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F29B4442A3;
 Mon,  7 Apr 2025 13:46:14 +0000 (UTC)
Date: Mon, 7 Apr 2025 15:46:13 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Marek Pazdan <mpazdan@arista.com>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Willem de
 Bruijn <willemb@google.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Mina Almasry <almasrymina@google.com>,
 Edward Cree <ecree.xilinx@gmail.com>, Daniel Zahka
 <daniel.zahka@gmail.com>, Jianbo Liu <jianbol@nvidia.com>, Gal Pressman
 <gal@nvidia.com>
Message-ID: <20250407154613.00e7afe2@kmaincent-XPS-13-7390>
In-Reply-To: <20250407123714.21646-2-mpazdan@arista.com>
References: <20250407123714.21646-1-mpazdan@arista.com>
 <20250407123714.21646-2-mpazdan@arista.com>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvtddtfeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtqhertdertdejnecuhfhrohhmpefmohhrhicuofgrihhntggvnhhtuceokhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgfdutdefvedtudegvefgvedtgfdvhfdtueeltefffefffffhgfetkedvfeduieeinecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehkmhgrihhntggvnhhtqdgirffuqddufedqjeefledtpdhmrghilhhfrhhomhepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepvddtpdhrtghpthhtohepmhhprgiiuggrnhesrghrihhsthgrrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnhesl
 hhishhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtoheprghnthhhohhnhidrlhdrnhhguhihvghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepphhriigvmhihshhlrgifrdhkihhtshiivghlsehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnughrvgifodhnvghtuggvvheslhhunhhnrdgthhdprhgtphhtthhopegurghvvghmsegurghvvghmlhhofhhtrdhnvght
X-GND-Sasl: kory.maincent@bootlin.com
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1744033576;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+3Vrefcf/NQ+JQxSP5ld2ShyoQDx5GSabMC/kL9H49g=;
 b=i+b9Qm4RpUC95spqhOdbohwP/qQCK6GvMnmHFO1cOgPcmWCoafh0BxHuEexLCgRmKA9t21
 Yu0Q/18Zcal8laTx28aA/x05T1OZFL47PL/yj9rq7bnpcWWEtnj9G1kkj9yBSJzr62gg+R
 CqqBDHtv70zvA743gHo+0lbyXnmwsvngB+SRboyDmmOUDOTa1qOAn8TsX8PvRVN45UHSIS
 OV10edGh87/+0R4PG8VSijPOtljEhrcoXYKFnNy1YKHfSS8hrfnyfWxKC1kkakNxmjb1fL
 2l3O0Dy/J71nfvX4+R5Ng5kAJXgte8njuIIK8XerrQObme9frsaq55OOuFZYQg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bootlin.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=i+b9Qm4R
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ice: add qsfp transceiver reset
 and presence pin control
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

On Mon,  7 Apr 2025 12:35:38 +0000
Marek Pazdan <mpazdan@arista.com> wrote:

> Commit f3c1c896f5a8 ("ethtool: transceiver reset and presence pin control=
")
> adds ioctl API extension for get/set-phy-tunable so that transceiver
> reset and presence pin control is enabled.

I don't think pointing and explaining the first commit is relevant here.

> This commit adds functionality to utilize the API in ice driver.

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submi=
tting-patches.rst#L95

You could simply write:
Add support for the newly introduced transceiver reset feature in the ice
driver.

> According to E810 datasheet QSFP reset and presence pins are being
> connected to SDP0 and SDP2 pins on controller host. Those pins can
> be accessed using AQ commands for GPIO get/set.[O

Weird character at the end.

--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
