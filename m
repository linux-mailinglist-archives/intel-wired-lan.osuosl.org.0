Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF0E63B184
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 19:42:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68A01409B1;
	Mon, 28 Nov 2022 18:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68A01409B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669660935;
	bh=BSbiCfcrJCa88CD9fxnnd9jf1NI2Tw5lZxd6H7UQABc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eDZZ3h1K0FyQ7ddYqqgbMGN/1vDQTDFZbVfzbkpWMYAqzYDqfJ0/mq+d6PyYkD5iP
	 QOM8drqUk92Zdo+z+Go/q0lo6b1R3C85LZk5912t4SPIRxcjT8YYzjztqulFfAQJMl
	 j1QmVn+hhvKaOx7fNVLE/rit+5JmmRiUG4kgUJaLO18WBNyu27/F5rzdFzJ+O/FDlf
	 zOERE57XCQ4pxzXuoz+laR0BmVi1bSXaYxH3dhUIjHoXEKpKM3sIgJjFBtp/U94J5/
	 p4VmPaMBPRVC2LmRW66jKWQaG/45Oq+mGcLy+GlDa1XRRgzng5cdlPHlkqyfoG4R/6
	 4YmWcmB8gx7wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ERe3I4az9QLk; Mon, 28 Nov 2022 18:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13334409A5;
	Mon, 28 Nov 2022 18:42:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13334409A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEE6A1BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 18:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5B3660590
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 18:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5B3660590
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrPQq109mRYm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 18:42:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E275A60017
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E275A60017
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 18:42:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0E45D611D4;
 Mon, 28 Nov 2022 18:42:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3B1DC433D6;
 Mon, 28 Nov 2022 18:42:04 +0000 (UTC)
Date: Mon, 28 Nov 2022 10:42:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <20221128104203.079ce802@kernel.org>
In-Reply-To: <20221128041545.3170897-4-mailhol.vincent@wanadoo.fr>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221128041545.3170897-1-mailhol.vincent@wanadoo.fr>
 <20221128041545.3170897-4-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1669660926;
 bh=c/Kya75Gow4UGO+kWaBvGk9V0lZ53wcA1385i+8THwU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ggtZa/EXaHIafcJ28igxOSiRe6MpAjEMroyUUXUKor1ZOYtErOk9h4Pg1uPxHTxPJ
 8uAReJ0QZbagmOuMZEltNe1MCOovSlZ6aKjAFkKJBjOktJHPOOcJUdIGoDPi6uUQ20
 MXyNg8MjRmfA8OWJbemROMNNwero5+hww9jG3uqbHEl6XgfqMRA95nQWL2mU4WLE38
 Hta0auaTwNimuhOfvVFOfz8grj/MzLiZ83WQRvmPdQ///4aXS7FjPvsfYQLqXw3cOa
 FzX7m1h0inABUmO0kFCTG9vaaUHpJAcoA7JqFSsdD78EQAPQM+He4ME9C0JSq2ajri
 +/RYwrUokWRUQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ggtZa/EX
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] net: devlink: make
 the devlink_ops::info_get() callback optional
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, drivers@pensando.io,
 Linu Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Jiri Pirko <jiri@mellanox.com>, Jiri Pirko <jiri@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Petr Machata <petrm@nvidia.com>,
 Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Vadim Pasternak <vadimp@mellanox.com>, linux-kernel@vger.kernel.org,
 Geetha sowjanya <gakula@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>, linux-crypto@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jerin Jacob <jerinj@marvell.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 28 Nov 2022 13:15:45 +0900 Vincent Mailhol wrote:
> Some drivers only reported the driver name in their
> devlink_ops::info_get() callback. Now that the core provides this
> information, the callback became empty. For such drivers, just
> removing the callback would prevent the core from executing
> devlink_nl_info_fill() meaning that "devlink dev info" would not
> return anything.
> 
> Make the callback function optional by executing
> devlink_nl_info_fill() even if devlink_ops::info_get() is NULL.
> 
> Remove all the empty devlink_ops::info_get() functions from the
> drivers.
> 
> N.B.: the drivers with devlink support which previously did not
> implement devlink_ops::info_get() will now also be able to report
> the driver name.

These should be two separate patches, tho.
Please don't post v5 in-reply-to.

Otherwise looks good. Kinda risky but good :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
