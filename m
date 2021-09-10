Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B8C4068FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 11:19:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 720F140600;
	Fri, 10 Sep 2021 09:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gc82XVkBtXrY; Fri, 10 Sep 2021 09:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41006405FB;
	Fri, 10 Sep 2021 09:19:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94BF81BF2AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 09:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8311540326
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 09:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q9Y5fn3nE_X6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Sep 2021 09:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C68E40302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 09:19:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F1CFE60E54;
 Fri, 10 Sep 2021 09:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631265555;
 bh=MMdXWy9QH0CzGaZwwChXTBW5lxYyYuHrr1/bvcKTO20=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F8JcAKGjm89rFblCLpR+Tlttk8cyjZwZ6IjQe8rcKDaWLIChbb8lKu4LRiXkNu1zU
 7zOvkS2atN/JENfcou79ze/peTxu7QZgJLtF+jFSb/8gveQ37vT5Vgbvq45iuQ033W
 djHtyCbnG/3SqLCsUVHebjEfcBJrcW7jZrqHzQUqBYa0zFJFnuWbUP/gFnqBYZ9Jll
 DhL12KibM5lY4NCLzoa/GxShPqNxTVqC239ao2kcG2jaIXzlm8M8Q/jyrYJ2VqzteH
 qawRXAhIcj/lB/LQfkq6/HCr0/FmDeIPZaB32NBEnBLe+dapcpPM7mK8DUP7psSGC5
 RbfwRSCRnqWqA==
Date: Fri, 10 Sep 2021 12:19:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <YTsjDsFbBggL2X/8@unreal>
References: <20210909151223.572918-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210909151223.572918-1-david.m.ertman@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH RESEND net] ice: Correctly deal with
 PFs that do not support RDMA
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
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca, yongxin.liu@windriver.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 09, 2021 at 08:12:23AM -0700, Dave Ertman wrote:
> There are two cases where the current PF does not support RDMA
> functionality.  The first is if the NVM loaded on the device is set
> to not support RDMA (common_caps.rdma is false).  The second is if
> the kernel bonding driver has included the current PF in an active
> link aggregate.
> 
> When the driver has determined that this PF does not support RDMA, then
> auxiliary devices should not be created on the auxiliary bus. 

This part is wrong, auxiliary devices should always be created, in your case it
will be one eth device only without extra irdma device.

Your "bug" is that you mixed auxiliary bus devices with "regular" ones
and created eth device not as auxiliary one. This is why you are calling
to auxiliary_device_init() for RDMA only and fallback to non-auxiliary mode.

I hope that this is simple mistake while Intel folks rushed to merge irdma
and not deliberate decision to find a way to support out-of-tree drivers.

As a reminder, the whole idea of auxiliary bus is to have small,
independent vendor driver core logic that manages capabilities and
based on that creates/removes sub-devices (eth, rdma, vdpa ...), so
driver core can properly load/unload their respective drivers.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
