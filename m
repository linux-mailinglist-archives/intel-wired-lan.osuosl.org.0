Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 533D463C50B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CF5660FB4;
	Tue, 29 Nov 2022 16:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CF5660FB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739021;
	bh=8Be7YfSSuqidG8L6JXuqbvWyPH+6Ia0rSbTPtpmaQSY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nf3n5pvEOJnEoIVW1NImIWIkjuVhRrGce6rHw1FKvmC/gzOiPl1hJeszdqmcnCXVv
	 m0kRKENlUuIoDW66fes0nK0GleLVfeoWAI/UGYtQoMpDc3vh+uZGCBk7nN/7dW/RFa
	 WFMF6tDdztJogv+i+gdclMnZ7HzZTKKN4QhtU+p3d2uEFXRwJmyz6SrCyFiO+5e+Bo
	 rbL9dO5ZaRyMEnezPGwfGYrO7GmtOykkL2keUN6qO9aOjIb8m01riiHo6yKiiuaQjQ
	 Gh+XDTb0NiKgdn/f455SxAN8dNpVlOpVC82TITfyGho7MUcvwEprx7nOpA7sdn5Ixz
	 KmswdJPBobrfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6KCRuPbVX84; Tue, 29 Nov 2022 16:23:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B90A600D1;
	Tue, 29 Nov 2022 16:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B90A600D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9E2F1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 16:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A39D3409EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 16:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A39D3409EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4xpt3c5rM2Js for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 16:23:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 822F140B54
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 822F140B54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 16:23:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 50956617A9;
 Tue, 29 Nov 2022 16:23:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84196C433B5;
 Tue, 29 Nov 2022 16:23:30 +0000 (UTC)
Date: Tue, 29 Nov 2022 08:23:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Message-ID: <20221129082329.2a97d67a@kernel.org>
In-Reply-To: <CAMZ6RqJnxkDmMtXSvUF2aondZ_8BGYq4XL35Cg7Vxy9qqsfAeg@mail.gmail.com>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
 <Y4XCCl6F+N2w+ngn@nanopsycho>
 <CAMZ6RqJnxkDmMtXSvUF2aondZ_8BGYq4XL35Cg7Vxy9qqsfAeg@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1669739012;
 bh=cGjM50Wf3CjbI5CufedpeRJgmUVOB+oAD7sMhicvcvc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iGGqHvYp3sWtlvL3jCszoyk0Brtf4U7s5IZ36y4/y1m554vmFunVA5ClffSXnH849
 yt1hdu1rUqoJE7r7VOV3tfT0J2smr71P3tQMbjnIRA8cMt+170myHsgSoVSucd0bYi
 OjMhYsiSqUsyk/SVaonvZnGvOho+Y94h9/yNkGZzPui9wIXrQpviLgKo+/UFhWOxIA
 M/mUJkkdbPaXcqsEf4mq/p9pO0g7uKimEwyyDHDcE4ff7z24vz0ap1DzqqCQyFv6Rh
 zI07kmFsHNsqft+khjFYFwCqfphkmhqIOyLb20egHw818U8HUNGAANKuqd6ofsW2wo
 F6ISh741HsxKg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iGGqHvYp
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/4] net: devlink: remove
 devlink_info_driver_name_put()
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
 Ioana Ciornei <ioana.ciornei@nxp.com>, Ariel Elior <aelior@marvell.com>,
 drivers@pensando.io, Linu Cherian <lcherian@marvell.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Jiri Pirko <jiri@resnulli.us>, Ido Schimmel <idosch@nvidia.com>,
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

On Tue, 29 Nov 2022 18:37:41 +0900 Vincent MAILHOL wrote:
> > I agree with Jacob that this could be easily squashed to the previous
> > patch. One way or another:  
> 
> OK. Let's have the majority decide: I will squash patches 1 and 2 and send a v6.

FTR I prefer v5, much easier to review the code when driver changes are
separated from core changes. But doesn't matter.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
