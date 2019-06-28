Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87545A68A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 23:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46BFE88299;
	Fri, 28 Jun 2019 21:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWusb14xCZJI; Fri, 28 Jun 2019 21:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D4FB88294;
	Fri, 28 Jun 2019 21:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1671BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 21:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 270938762A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 21:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THQo0IFSb+Ll for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 21:46:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 425C88761F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 21:46:49 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1304813CB3330;
 Fri, 28 Jun 2019 14:46:48 -0700 (PDT)
Date: Fri, 28 Jun 2019 14:46:47 -0700 (PDT)
Message-Id: <20190628.144647.570493656550419800.davem@davemloft.net>
To: vedang.patel@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
References: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 28 Jun 2019 14:46:48 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/8] net/sched: Add
 txtime-assist support for taprio.
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
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 netdev@vger.kernel.org, jakub.kicinski@netronome.com, jhs@mojatatu.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org,
 xiyou.wangcong@gmail.com, eric.dumazet@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vedang Patel <vedang.patel@intel.com>
Date: Tue, 25 Jun 2019 15:07:11 -0700

> Currently, we are seeing packets being transmitted outside their
> timeslices. We can confirm that the packets are being dequeued at the right
> time. So, the delay is induced after the packet is dequeued, because
> taprio, without any offloading, has no control of when a packet is actually
> transmitted.
> 
> In order to solve this, we are making use of the txtime feature provided by
> ETF qdisc. Hardware offloading needs to be supported by the ETF qdisc in
> order to take advantage of this feature. The taprio qdisc will assign
> txtime (in skb->tstamp) for all the packets which do not have the txtime
> allocated via the SO_TXTIME socket option. For the packets which already
> have SO_TXTIME set, taprio will validate whether the packet will be
> transmitted in the correct interval.
> 
> In order to support this, the following parameters have been added:
> - flags (taprio): This is added in order to support different offloading
>   modes which will be added in the future.
> - txtime-delay (taprio): This indicates the minimum time it will take for
>   the packet to hit the wire after it reaches taprio_enqueue(). This is
>   useful in determining whether we can transmit the packet in the remaining
>   time if the gate corresponding to the packet is currently open.
> - skip_skb_check (ETF): ETF currently drops any packet which does not have
>   the SO_TXTIME socket option set. This check can be skipped by specifying
>   this option.
 ...

Series applied, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
