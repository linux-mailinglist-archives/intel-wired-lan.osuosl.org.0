Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 495F66B162
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 23:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5B4F21FAD;
	Tue, 16 Jul 2019 21:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2gJ5Rt1mQtXd; Tue, 16 Jul 2019 21:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5A1A72052C;
	Tue, 16 Jul 2019 21:52:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31B511BF29A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 21:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 287FD87E78
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 21:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvCu3ZnMQE9h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 21:19:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 77FEB87D33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 21:19:06 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E5E961264EA04;
 Tue, 16 Jul 2019 14:19:04 -0700 (PDT)
Date: Tue, 16 Jul 2019 14:19:04 -0700 (PDT)
Message-Id: <20190716.141904.308520366333461345.davem@davemloft.net>
To: vedang.patel@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1563306738-2779-1-git-send-email-vedang.patel@intel.com>
References: <1563306738-2779-1-git-send-email-vedang.patel@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 16 Jul 2019 14:19:05 -0700 (PDT)
X-Mailman-Approved-At: Tue, 16 Jul 2019 21:52:36 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] fix: taprio: Change type
 of txtime-delay parameter to u32
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
 stephen@networkplumber.org, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 eric.dumazet@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vedang Patel <vedang.patel@intel.com>
Date: Tue, 16 Jul 2019 12:52:18 -0700

> During the review of the iproute2 patches for txtime-assist mode, it was
> pointed out that it does not make sense for the txtime-delay parameter to
> be negative. So, change the type of the parameter from s32 to u32.
> 
> Fixes: 4cfd5779bd6e ("taprio: Add support for txtime-assist mode")
> Reported-by: Stephen Hemminger <stephen@networkplumber.org>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>

You should have targetted this at 'net' as that's the only tree open
right now.

I'll apply this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
