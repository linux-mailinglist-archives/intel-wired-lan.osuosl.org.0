Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 340CD1C45AE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 20:21:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5D4488736;
	Mon,  4 May 2020 18:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guSANU+QqGfI; Mon,  4 May 2020 18:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F03388763;
	Mon,  4 May 2020 18:21:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DAE41BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 18:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25AE288736
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 18:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IRESDhuLO3Gv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 18:20:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89FDA8867D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 18:20:58 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C311711F5F61A;
 Mon,  4 May 2020 11:20:56 -0700 (PDT)
Date: Mon, 04 May 2020 11:20:56 -0700 (PDT)
Message-Id: <20200504.112056.1400711844642835898.davem@davemloft.net>
To: kai.heng.feng@canonical.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200504173218.1724-1-kai.heng.feng@canonical.com>
References: <20200504173218.1724-1-kai.heng.feng@canonical.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 May 2020 11:20:57 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH] igb: Report speed and duplex as
 unknown when device is runtime suspended
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue,  5 May 2020 01:32:18 +0800

> igb device gets runtime suspended when there's no link partner. We can't
> get correct speed under that state:
> $ cat /sys/class/net/enp3s0/speed
> 1000
> 
> In addition to that, an error can also be spotted in dmesg:
> [  385.991957] igb 0000:03:00.0 enp3s0: PCIe link lost
> 
> Since device can only be runtime suspended when there's no link partner,
> we can directly report the speed and duplex as unknown.
> 
> The more generic approach will be wrap get_link_ksettings() with begin()
> and complete() callbacks. However, for this particular issue, begin()
> calls igb_runtime_resume() , which tries to rtnl_lock() while the lock
> is already hold by upper ethtool layer.
> 
> So let's take this approach until the igb_runtime_resume() no longer
> needs to hold rtnl_lock.
> 
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

I'm assuming I will get this from upstream via Jeff K.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
