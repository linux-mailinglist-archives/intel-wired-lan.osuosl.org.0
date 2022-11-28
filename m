Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CBD63ADD1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:33:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D27F88174C;
	Mon, 28 Nov 2022 16:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D27F88174C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653183;
	bh=DaNJR8yMXYFcouARdRsGSTxMuCdaWE1XLvYdLyJaI7M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G1HV9iewKxWPUBRcXa7cmREX4y/+GVSWZlxK912HOWO87mXFwQn9EgdO/91X/U0EZ
	 72PxSo2upg53PWDo3Kb9nc7OGngLPdzHKkxqiYyHdxRHn4olMD5q6N9b2br78XJtI+
	 5k4sGuixKyhF7MvhrL7eh228/v3U9difholFcMY5TYFGpmMUPrfVkfaT9JN05NUVz3
	 70ixWyOJ37cYhpTfm7+psT4w65iRXpIZu2sDGz3nEf1ak4SgpFZonIFzo47I2Y1YXi
	 7/F07RMPAJWh9Cux33vY9plgu8ltSW/dOqugHG4Dv3d3d5+5VXAibFs2jFxdEvhwZe
	 cHeT5VbmRepBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mq0MfZRTUS5m; Mon, 28 Nov 2022 16:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C222F8140C;
	Mon, 28 Nov 2022 16:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C222F8140C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B83391BF392
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 01:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E26341504
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 01:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E26341504
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8SpgAKdDhpb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 01:42:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 491F2414E5
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 491F2414E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 01:42:35 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id o12so270611pjo.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 17:42:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vugqIFRxCyknBbu9V+wKU89OOIphCVzqPgtGWbeU2e0=;
 b=FBPo8162zktUmB8r176FDXlsXEsUWbWcCiNN6GkNvfgcCQ83hUpbf89YwqBf2A5grB
 t6PPtXNifzG+uKC7a/1301KQlXfmnYXCnnpBhHJczQePa4bPAW1ouAXlpsDV0OGE/jvb
 MPI13yk5Zi3XtSCZdb8nBPAowKITCpIK63d7g9d9urgjuJq/6aU0dDsNvTbyn3iCe6q3
 h9FySnI8B5BeQG89zUcNyLZT4mHSRzbvSxXMUvHuLKXnvKoim+YoFZcVRiJ9iA5W0rHP
 7YNI+jpn6S4ULpqOwC0GqbofZHEP2gcr6qCCAVh5wYqWFV/PlHxfW/2VNxm0nlo65GvP
 9aWw==
X-Gm-Message-State: ANoB5pm33bOEIrRyYsoLpamA9fBj0ru/NNPLIjkBDwV2951UFpJw9gFF
 cVMn8NNfZsvUs6Pc5rGFT94JvQJL1ydOs+fEWAg=
X-Google-Smtp-Source: AA0mqf5fJFd4OI/wqCAiSyik0VLVFVoFMfzJ9mryfA/1K6FyI90QwUxChWz0UdSQwVRwuYvQMcWJhOKG5dmt/m6SpnU=
X-Received: by 2002:a17:90a:77cc:b0:219:1747:f19c with SMTP id
 e12-20020a17090a77cc00b002191747f19cmr11037058pjs.222.1669599754664; Sun, 27
 Nov 2022 17:42:34 -0800 (PST)
MIME-Version: 1.0
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-3-mailhol.vincent@wanadoo.fr>
 <Y4ONgD4dAj8yU2/+@shredder>
In-Reply-To: <Y4ONgD4dAj8yU2/+@shredder>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Mon, 28 Nov 2022 10:42:23 +0900
Message-ID: <CAMZ6RqKfED-ABYPboF09FUZjcKQSb0ALYjY2hiffP7fXZRb2mQ@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] mlxsw: core: fix
 mlxsw_devlink_info_get() to correctly report driver name
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
 Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko <vadfed@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Jiri Pirko <jiri@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
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

On Mon. 28 Nov. 2022 at 01:17, Ido Schimmel <idosch@nvidia.com> wrote:
> On Sun, Nov 27, 2022 at 10:09:16PM +0900, Vincent Mailhol wrote:
> > Currently, mlxsw_devlink_info_get() reports the device_kind. The
> > device_kind is not necessarily the same as the device_name. For
> > example, the mlxsw_i2c implementation sets up the device_kind as
> > ic2_client::name in [1] which indicates the type of the device
>
> s/ic2/i2c/
>
> > (e.g. chip name).
> >
> > Fix it so that it correctly reports the driver name.
> >
> > [1] mlxsw_i2c_probe() from drivers/net/ethernet/mellanox/mlxsw/i2c.c
> > Link: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714
>
> Same comment as before.
>
> Before the series:
>
> # devlink dev info i2c/2-0048 | grep driver
>   driver mlxsw_minimal
>
> After the series:
>
> # devlink dev info i2c/2-0048 | grep driver
>   driver mlxsw_minimal

ACK. I was overall confused by the device_kind. Thank you for your
confirmation. I will drop the first two patches from this series.


Yours sincerely,
Vincent Mailhol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
