Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1AFA7E36A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50872811F4;
	Mon,  7 Apr 2025 15:11:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5CxBRkRazEe8; Mon,  7 Apr 2025 15:10:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72B2F80E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038659;
	bh=FgBkAfF7LRh3OjsY0EeWJNc7q8ieecweD7h2bVdhnwU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zwsnPyIgHTvlph0hDlV966VJ2t4TYRgRXnjFPtak8RdWJde5lIF0i/EcJb+Ez6kry
	 NjycyRVZt8HQdoDeOFepBPFGOveYEj50odzQ9POf75QSPjDhBQrLSqtzDXX+aqO9zp
	 EKc2wkGVOdzToVnk6eLwtZqQskLH2Pvpj6/k8OBavYSIo1GdOSuZ3ayj+w8i7xLbx1
	 WznN6xAYiBykNzeBMZ9aN18c2q4FacRzetS87MlDO1YoDq9lGfwfPr3kK433tY1fxP
	 dvER1lME4OIN8YJXEHUdjlbx03tyUltJwVrgznYMHc2EPurUcOUau4VIun63wXfhmq
	 tuWS3M5bnZF0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72B2F80E7B;
	Mon,  7 Apr 2025 15:10:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B3734DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CE7161057
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvn8d-eg_GPU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 13:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.70.178.249;
 helo=mslow3.mail.gandi.net; envelope-from=kory.maincent@bootlin.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 95EA861054
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95EA861054
Received: from mslow3.mail.gandi.net (mslow3.mail.gandi.net [217.70.178.249])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95EA861054
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:39:03 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::221])
 by mslow3.mail.gandi.net (Postfix) with ESMTP id 635A5583C42
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:32:11 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E372D4431F;
 Mon,  7 Apr 2025 13:32:04 +0000 (UTC)
Date: Mon, 7 Apr 2025 15:32:03 +0200
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
Message-ID: <20250407153203.0a3037d7@kmaincent-XPS-13-7390>
In-Reply-To: <20250407123714.21646-1-mpazdan@arista.com>
References: <20250407123714.21646-1-mpazdan@arista.com>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvtddtfedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtqhertdertdejnecuhfhrohhmpefmohhrhicuofgrihhntggvnhhtuceokhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgfdutdefvedtudegvefgvedtgfdvhfdtueeltefffefffffhgfetkedvfeduieeinecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehkmhgrihhntggvnhhtqdgirffuqddufedqjeefledtpdhmrghilhhfrhhomhepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepvddtpdhrtghpthhtohepmhhprgiiuggrnhesrghrihhsthgrrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnhesl
 hhishhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtoheprghnthhhohhnhidrlhdrnhhguhihvghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepphhriigvmhihshhlrgifrdhkihhtshiivghlsehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnughrvgifodhnvghtuggvvheslhhunhhnrdgthhdprhgtphhtthhopegurghvvghmsegurghvvghmlhhofhhtrdhnvght
X-GND-Sasl: kory.maincent@bootlin.com
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1744032726;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FgBkAfF7LRh3OjsY0EeWJNc7q8ieecweD7h2bVdhnwU=;
 b=pzDd6IgTeal0WpkpWTMQcRZZo0sGBgmuBkicvVFeXcclqzMuD5Bre5csabultSvIrWabAA
 4NnsU8sG7lv2IVtGJO+5Lrki7OWFbmwlg+mJUn5a+teZdvkzZMZY+fpWtN39NQxSr6TvoK
 uWKdyRgv0FzDLExNQkJpuyH9HwEEyvGuz55mrWptmxrsS0/WVxt/4HSl8NGmIRHudi7leM
 vnHx+N6Jgb7zQQHFtvuERN6irFV564ds4WLSYWxZ4luMsUiHU64P7JXj8XB4iFYhXQL6dZ
 PXxWIKszN/4ZYtF5zbi776wpIW7oMq13jSf4rw9RU9BzCz3QQz49JFbxiwJ9HA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bootlin.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=pzDd6IgT
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ethtool: transceiver reset and
 presence pin control
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

On Mon,  7 Apr 2025 12:35:37 +0000
Marek Pazdan <mpazdan@arista.com> wrote:

> Signal Definition section (Other signals) of SFF-8636 Spec mentions that
> additional signals like reset and module present may be implemented for
> a specific hardware. There is currently no user space API for control of
> those signals so user space management applications have no chance to
> perform some diagnostic or configuration operations. This patch uses
> get_phy_tunable/set_phy_tunable ioctl API to provide above control to
> user space. Despite ethtool reset option seems to be more suitable for
> transceiver module reset control, ethtool reset doesn't allow for reset
> pin assertion and deassertion. Userspace API may require control over
> when pin will be asserte and deasserted so we cannot trigger reset and
> leave it to the driver when deassert should be perfromed.

nit: performed

ETHTOOL_PHY_G/STUNABLE IOCTLs are targeting the PHY of the NIC but IIUC in =
your
case you are targeting the reset of the QSFP module. Maybe phylink API is m=
ore
appropriate for this feature.

You have to add net-next prefix in the subject like this [PATCH net-next 1/=
2]
when you add new support to net subsystem.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
