Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB58963C529
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2F1A40B54;
	Tue, 29 Nov 2022 16:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2F1A40B54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739405;
	bh=BqgnO4kPkj6EfXIOxfHGP0wChsabb94Ov+oEdBjgO1s=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jZKkaCu4dR5Np6UahT4eCsYxkVdhEQeDR1PeoAkV/+gJonGJKw6ncLjrZ/MxRg6GB
	 /RLMpOdPBWzdSk0j+H3wi68BaZmK7ZEx5XzqpJjm4JvoCeoJayIQDxLXY5K7V4Nmzj
	 KJ8fZ94SAgCb47irNuXY/eaXwYKxJBLImQcIoj4hFACJJ9gIoVfu3dmhUp5tQ7rkVm
	 5CHdMuAA1JsffANC3YffdECgWWv0sIpW4OJzgPwlh3jkQ61FkOa7GLeflVOkbu7ina
	 oafJ98YbmRKvONqB+WWQLtm9SDLg15kk0ZhcpWS3v92Gh9ZushZI0/OhsmxQHEHx7w
	 Eqlmy+hewyWpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bK7hTihdcfJT; Tue, 29 Nov 2022 16:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B50CE40B60;
	Tue, 29 Nov 2022 16:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B50CE40B60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 304661BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0956B408BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:37:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0956B408BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsZQW2vSFbqg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 09:37:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13AB64081F
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13AB64081F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:37:53 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id w23so12835931ply.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:37:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q+AGSUb4FRLyd7s2US6m9NjBG7l9wn0Ll8edLLRQmpU=;
 b=4XDvnWnfp8ev336VjoIWMlGq3iLL6RfC8zPFBKMD3godvUuMAtqnndI3I2mxtDrWfh
 Ez4kDbyLZ8S50cjYKMp01V/muqWOOov00mtYTXpPFnnM18BnRHXyJ4oOsqiioJ6oo+pG
 WcnRsezrqoseLtRlrOV0Wub4W025DBlAbvhSaImLMlMxIOFOpAOquGV53mUGbXJ/iB66
 eLMCmwDwp2VdV4Rzm4n4wwusSH8P5uwKkOydWdF75cPcoxznBwq6R+DWWKPgl0tFbuQ2
 BH4O6fwXo18lKqB4dJD0D9ZYwHBj+iMF74MjyeztTubj6vcO7VJ+b1JtPHbsfZ/rMu+Z
 Wkyg==
X-Gm-Message-State: ANoB5pkYGg6n+hzpt6Im3uAhrY+FHmUVzibtLCwjR2gLatWym3f/zvZU
 Hicf1JPvdLUVljt2TNwwbFvg7ScrA9O/tMof7/4=
X-Google-Smtp-Source: AA0mqf7WfI50hoerRcgf3B/Jf6GLxqEsRVWE+x+RBOR4VhqxVFXsP3t8iwfzE3TOjubAK9pXbOzPm3C5PvcYml5Z24M=
X-Received: by 2002:a17:903:452:b0:189:6574:7ac2 with SMTP id
 iw18-20020a170903045200b0018965747ac2mr22126393plb.65.1669714672421; Tue, 29
 Nov 2022 01:37:52 -0800 (PST)
MIME-Version: 1.0
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
 <Y4XCCl6F+N2w+ngn@nanopsycho>
In-Reply-To: <Y4XCCl6F+N2w+ngn@nanopsycho>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Tue, 29 Nov 2022 18:37:41 +0900
Message-ID: <CAMZ6RqJnxkDmMtXSvUF2aondZ_8BGYq4XL35Cg7Vxy9qqsfAeg@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Mailman-Approved-At: Tue, 29 Nov 2022 16:29:52 +0000
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
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Arnaud Ebalard <arno@natisbad.org>, Jiri Pirko <jiri@mellanox.com>,
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

On Tue. 29 Nov. 2022 at 17:25, Jiri Pirko <jiri@resnulli.us> wrote:
> Tue, Nov 29, 2022 at 01:05:48AM CET, mailhol.vincent@wanadoo.fr wrote:
> >Now that the core sets the driver name attribute, drivers are not
> >supposed to call devlink_info_driver_name_put() anymore. Remove it.
> >
> >Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
>
> I agree with Jacob that this could be easily squashed to the previous
> patch. One way or another:

OK. Let's have the majority decide: I will squash patches 1 and 2 and send a v6.

> Reviewed-by: Jiri Pirko <jiri@nvidia.com>

Thank you for the review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
