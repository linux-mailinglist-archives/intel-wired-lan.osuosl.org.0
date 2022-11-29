Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C16AD63C525
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 827024033C;
	Tue, 29 Nov 2022 16:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 827024033C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739398;
	bh=Nw0LSq2PatMhka1d7Q9jVPxNK/k789oZcRjGJ42pHJA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NODj6DAXHQ39RhBy0DhhhSY8rKwQ63UxwuJoUX0JUh0MGteZ6U/pN5l9CyTF56zTq
	 Ud0oeWjuq9SXZ47072HgtNE3AECk5CE8bfkBBFJG9/9EIrhO8Vg+9LntyA71UmXU85
	 9FXaPNWitxt5BqXcbgxfOg8NuRR0AtHCQbenKlu0lgsZJrikgSiHjw7ZlkYHm9OXcG
	 xrWqtwe7uuOxSUmrmQgcjyBwcZ5++sdVK6S9GGCq90+ITCgqxWnldD1Bd2Tn5UFb5d
	 pa9/8IyvvQgysVGf+TQPgQOIeVGcQHvrVcz4Q8Dd7t/K0a09L6nil1O1kx3QhQdvrI
	 v37fmbwm5nP2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-C4LQS-lASb; Tue, 29 Nov 2022 16:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16D614032F;
	Tue, 29 Nov 2022 16:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16D614032F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA571BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E721D4169E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E721D4169E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K8l0fQq4g2fl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 01:11:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FAD941694
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FAD941694
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:11:00 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id 136so11592195pga.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=678Rz0nlTDvk01JF3xLjph/IJ0sNRc7bNOs5ipe5d6A=;
 b=ixEJSVMpF76NPn5O3f18b7OpS0jV5q5bpqBnM/W2GRD8cK5ugUSODf3XCLSLIET6K/
 3jN+JnIufJork+XJkqzQxsELPUR32FBgMdWCYNHHZc66cK/yXV3rv65GS+C/IPBqTXNd
 G7qiHngZPSzDBwD2kQOPHRglWZ8khxsbAJO3HBg55GM3SrCRg3Crdi1e2TImaTcO0bV8
 0+Alejomq6EnLXQ5kybbqrU3GmjGnT7O2/8f6DGBJx2aFC09fpdhbhlhpiAVfAQygU0t
 kWXJqpNSbhcVXQNkfSHZLiGd6tkwlqqI2GBgsTIRkjMSh5y/G3kaCAUHwVLycqLvdFiG
 dDxg==
X-Gm-Message-State: ANoB5pmzExxxwO5Dr1t43ybmd7bpWOFHnBjYFBOSkfEucPfsfV88cDbU
 LGcs22Qg0uK0h1wHf+sPIN1PFuaR089fLYbX/Ks=
X-Google-Smtp-Source: AA0mqf6g455B4kdX0QwF3SkDnGxNnFGnm/CGRMIZz8vQWon94mfO2b8uzYbTZ44P0SHZ1J702h8xcHpRTwPx/UOfwrs=
X-Received: by 2002:a62:1a8b:0:b0:572:7c58:540 with SMTP id
 a133-20020a621a8b000000b005727c580540mr36086790pfa.69.1669684259924; Mon, 28
 Nov 2022 17:10:59 -0800 (PST)
MIME-Version: 1.0
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
 <CO1PR11MB5089EEF30335EC3CEDA8FCB7D6129@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB5089EEF30335EC3CEDA8FCB7D6129@CO1PR11MB5089.namprd11.prod.outlook.com>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Tue, 29 Nov 2022 10:10:48 +0900
Message-ID: <CAMZ6RqKy0Jnybz933tzjAPCX88KhKMC67RaN01yoFJxekvgLHg@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
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
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 Linu Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko <vadfed@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Arnaud Ebalard <arno@natisbad.org>, Jiri Pirko <jiri@mellanox.com>,
 Jiri Pirko <jiri@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Vadim Pasternak <vadimp@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Geetha sowjanya <gakula@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jerin Jacob <jerinj@marvell.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jacob,

Thanks for the review!

On Tue. 29 Nov. 2022 at 09:23, Keller, Jacob E <jacob.e.keller@intel.com> wrote:
> > -----Original Message-----
> > From: Vincent Mailhol <vincent.mailhol@gmail.com> On Behalf Of Vincent
> > Mailhol
> > Sent: Monday, November 28, 2022 4:06 PM
> > To: Jiri Pirko <jiri@nvidia.com>; netdev@vger.kernel.org; Jakub Kicinski
> > <kuba@kernel.org>
> > Cc: David S . Miller <davem@davemloft.net>; Eric Dumazet
> > <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; linux-
> > kernel@vger.kernel.org; Boris Brezillon <bbrezillon@kernel.org>; Arnaud Ebalard
> > <arno@natisbad.org>; Srujana Challa <schalla@marvell.com>; Kurt Kanzenbach
> > <kurt@linutronix.de>; Andrew Lunn <andrew@lunn.ch>; Florian Fainelli
> > <f.fainelli@gmail.com>; Vladimir Oltean <olteanv@gmail.com>; Michael Chan
> > <michael.chan@broadcom.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
> > Dimitris Michailidis <dmichail@fungible.com>; Yisen Zhuang
> > <yisen.zhuang@huawei.com>; Salil Mehta <salil.mehta@huawei.com>;
> > Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Sunil Goutham <sgoutham@marvell.com>; Linu
> > Cherian <lcherian@marvell.com>; Geetha sowjanya <gakula@marvell.com>;
> > Jerin Jacob <jerinj@marvell.com>; hariprasad <hkelam@marvell.com>;
> > Subbaraya Sundeep <sbhatta@marvell.com>; Taras Chornyi
> > <tchornyi@marvell.com>; Saeed Mahameed <saeedm@nvidia.com>; Leon
> > Romanovsky <leon@kernel.org>; Ido Schimmel <idosch@nvidia.com>; Petr
> > Machata <petrm@nvidia.com>; Simon Horman <simon.horman@corigine.com>;
> > Shannon Nelson <snelson@pensando.io>; drivers@pensando.io; Ariel Elior
> > <aelior@marvell.com>; Manish Chopra <manishc@marvell.com>; Jonathan
> > Lemon <jonathan.lemon@gmail.com>; Vadim Fedorenko <vadfed@fb.com>;
> > Richard Cochran <richardcochran@gmail.com>; Vadim Pasternak
> > <vadimp@mellanox.com>; Shalom Toledo <shalomt@mellanox.com>; linux-
> > crypto@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> > rdma@vger.kernel.org; oss-drivers@corigine.com; Jiri Pirko
> > <jiri@mellanox.com>; Herbert Xu <herbert@gondor.apana.org.au>; Hao Chen
> > <chenhao288@hisilicon.com>; Guangbin Huang
> > <huangguangbin2@huawei.com>; Minghao Chi <chi.minghao@zte.com.cn>;
> > Shijith Thotton <sthotton@marvell.com>; Vincent Mailhol
> > <mailhol.vincent@wanadoo.fr>
> > Subject: [PATCH net-next v5 2/4] net: devlink: remove
> > devlink_info_driver_name_put()
> >
> > Now that the core sets the driver name attribute, drivers are not
> > supposed to call devlink_info_driver_name_put() anymore. Remove it.
> >
>
> You could combine this patch with the previous one so that in the event of a cherry-pick its not possible to have this function while the core inserts the driver name automatically.
>
> I think that also makes it very clear that there are no remaining in-tree drivers still calling the function.
>
> I don't have a strong preference if we prefer it being separated.

The first patch is already pretty long. I do not expect this to be
cherry-picked because it does not fix any existing bug (and if people
really want to cherry pick, then they just have to cherry pick both).
On the contrary, splitting makes it easier to review, I think.

Unless the maintainers as me to squash, I want to keep it as-is.


Yours sincerely,
Vincent Mailhol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
