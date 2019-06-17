Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BDA495CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2019 01:23:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FA3D8643B;
	Mon, 17 Jun 2019 23:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwIdsYASjzUa; Mon, 17 Jun 2019 23:23:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C42E87592;
	Mon, 17 Jun 2019 23:23:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 980711BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 23:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 920E784414
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 23:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sta9HPbTs4i2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2019 23:23:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0E56835F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 23:23:09 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 313E6151BE52F;
 Mon, 17 Jun 2019 16:23:09 -0700 (PDT)
Date: Mon, 17 Jun 2019 16:23:08 -0700 (PDT)
Message-Id: <20190617.162308.2157008404980622764.davem@davemloft.net>
To: vedang.patel@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1560799870-18956-6-git-send-email-vedang.patel@intel.com>
References: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
 <1560799870-18956-6-git-send-email-vedang.patel@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 17 Jun 2019 16:23:09 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/6] taprio: make clock
 reference conversions easier
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
Cc: jiri@resnulli.us, l@dorileo.org, netdev@vger.kernel.org, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vedang Patel <vedang.patel@intel.com>
Date: Mon, 17 Jun 2019 12:31:09 -0700

> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> index ab6080013666..f63cc3a9e69a 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
 ...
>  	return ns_to_ktime(sched->base_time);
>  }
>  
> +static inline ktime_t taprio_get_time(struct taprio_sched *q)
> +{

Please don't use inline here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
