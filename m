Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1992CFC52
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Dec 2020 18:59:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95F19874C2;
	Sat,  5 Dec 2020 17:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DPRkIqGih50Z; Sat,  5 Dec 2020 17:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDC748780F;
	Sat,  5 Dec 2020 17:59:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 975451BF25B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9049F86C6D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dD9Tiy6XGwDY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Dec 2020 17:59:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 197AB86C6C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:59:50 +0000 (UTC)
Date: Sat, 5 Dec 2020 09:59:48 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607191189;
 bh=2XTj98FPwKYrzmdgVAroyFbBlTDM4KyJc/G+XYx1L5s=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=frCgoLvdzjdFmwlMnLFXg2EUZK1aRpWGIxlunb2Yx0PduLElndrQvqORfyMbcZjOY
 sA9u7JB/BbqjGMmWfSlHvzTfuaHo4ffWPpUsFsoskWCcjmrF/BYSL+n0ZpRnsZ84I1
 AXu/7TgwP3/kiOWws2ZiPPHQBV7lzPs5PCujv3IBlUOAsF155AKtB+Ny2sy1wPcAQa
 4vC/DK9p6mCU63qbakVs9iQh6l1Gg/N/ZbcFqczrYkFD330x1sn+sk5M3XOMhFIHBs
 4R0snzIEAY6bW0JT1EVc55C+R8uX42sZU95qU/1ZyZER29WztsTZwKkNIyXBTKX1QC
 YIJx3ks2ohP/w==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201205095948.5e0eba28@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201202045325.3254757-9-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-9-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 8/9] igc: Add support for
 exposing frame preemption stats registers
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

On Tue,  1 Dec 2020 20:53:24 -0800 Vinicius Costa Gomes wrote:
> Expose the Frame Preemption counters, so the number of
> express/preemptible packets can be monitored by userspace.
> 
> These registers are cleared when read, so the value shown is the
> number of events that happened since the last read.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

You mean expose in a register dump? That's not great user experience..

Are there any stats that the standards mandate?

It'd be great if we could come up with some common set and expose them
via ethtool like the pause frame statistics.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
