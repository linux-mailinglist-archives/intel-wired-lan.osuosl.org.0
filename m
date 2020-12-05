Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0567C2CFC4F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Dec 2020 18:50:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9771A2281C;
	Sat,  5 Dec 2020 17:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0j4fBe+37EF; Sat,  5 Dec 2020 17:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3504122817;
	Sat,  5 Dec 2020 17:50:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 513B61BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4CF7C86B43
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3g76FcWf6bRb for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Dec 2020 17:50:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEC8386B3A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:50:22 +0000 (UTC)
Date: Sat, 5 Dec 2020 09:50:21 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607190622;
 bh=eXv3+mv1r4rGBZPQXy5JncBjXLX4m1Jn75DZFqAu9ms=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=DnUx2vP9Y/VyqMsTenPfI2Uez+RKawzq8uWTV7Up1/vIETGZN4t001HBoruL1L45g
 0KRHe0lLA1Zrv66m9nJPwasmebj3fzOTzs6Fze4BUn52ekwY1y2Nl9e5UNC0Yy8ecK
 Gb04C8nUJF/Zyzp5d6uTb7OEGS+dsj5Wmw5Z9zsr6kBh4E4R6gQRdEJNOqZ46l7ZOz
 jFz2h3iiKdcUMj/f10/6IuT/rwLdqcVAfGK97DRQGEvOrVCaBwOb7VYqhVH+kEqclK
 GPcF/fkLs8qSptxLShcJVoM43oLj8S5qVmG4NNVKrIDLPWa0IMbVx52k/Gr4W3+5UH
 j8MIA7OQGQElQ==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201205095021.36e1a24d@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201202045325.3254757-1-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/9] ethtool: Add support
 for frame preemption
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  1 Dec 2020 20:53:16 -0800 Vinicius Costa Gomes wrote:
> $ tc qdisc replace dev $IFACE parent root handle 100 taprio \
>       num_tc 3 \
>       map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>       queues 1@0 1@1 2@2 \
>       base-time $BASE_TIME \
>       sched-entry S 0f 10000000 \
>       preempt 1110 \
>       flags 0x2 
> 
> The "preempt" parameter is the only difference, it configures which
> queues are marked as preemptible, in this example, queue 0 is marked
> as "not preemptible", so it is express, the rest of the four queues
> are preemptible.

Does it make more sense for the individual queues to be preemptible 
or not, or is it better controlled at traffic class level?
I was looking at patch 2, and 32 queues isn't that many these days..
We either need a larger type there or configure this based on classes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
