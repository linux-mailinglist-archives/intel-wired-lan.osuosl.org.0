Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEB31C7BD9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 May 2020 23:02:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 257B089183;
	Wed,  6 May 2020 21:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mFW5iWsFeZox; Wed,  6 May 2020 21:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8BD589170;
	Wed,  6 May 2020 21:02:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 612891BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 21:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D3CE8835B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 21:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQCUmof0ORfs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2020 21:02:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 40DAC88336
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 21:02:41 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B4C961210D920;
 Wed,  6 May 2020 14:02:39 -0700 (PDT)
Date: Wed, 06 May 2020 14:02:39 -0700 (PDT)
Message-Id: <20200506.140239.2129195871879981516.davem@davemloft.net>
To: yanaijie@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200506061835.19662-1-yanaijie@huawei.com>
References: <20200506061835.19662-1-yanaijie@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 May 2020 14:02:40 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Make
 i40e_shutdown_adminq() return void
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
 piotr.azarewicz@intel.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Yan <yanaijie@huawei.com>
Date: Wed, 6 May 2020 14:18:35 +0800

> Fix the following coccicheck warning:
> 
> drivers/net/ethernet/intel/i40e/i40e_adminq.c:699:13-21: Unneeded
> variable: "ret_code". Return "0" on line 710
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Jeff, please pick this up.

Thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
