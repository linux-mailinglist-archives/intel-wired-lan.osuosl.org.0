Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B69929250
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Jul 2024 11:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FE3581ADE;
	Sat,  6 Jul 2024 09:53:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cflhgyIokg_q; Sat,  6 Jul 2024 09:53:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DC4F8198A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720259589;
	bh=bhjdK/SLRM3PjWp2iETGKtVoXUHQ22IPHFy9ZXDRWM0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0ddakwEWd4/bFEfVQXAKRVS0Zye8y0BMBwSNXMToIavQ3+HQZoJOojH7JGNmF/MCA
	 vKsToAJzFdOxyyRIHbg8+JvqSdedA9VO1VuEUXGOpH8FIGo9DT4g7/mbODKQg1UHlE
	 X9B+RCWpvkmi40vMZNyCKGa1+m+tsIs+L+jzf1pL+czqPPk8K+GjGEEq+LhXBcBUvJ
	 DwDvrDZXip63WhR077eLIxMWteRKSjzTiu/86e4W5uiZnqlItwLzOlTV0CpxCnXxMv
	 +XH8V70EzbfylKjJ5vmckWuJwfKHznkC28P3rsQO/vOuQyBCY6X5Hw/5pMUUfP8y7f
	 8NsANXD2LrIbA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DC4F8198A;
	Sat,  6 Jul 2024 09:53:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 565C31BF83C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 09:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E1E8407AF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x39m9DQnERFp for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jul 2024 09:53:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12251406E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12251406E3
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12251406E3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 09:53:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A18E661C0A;
 Sat,  6 Jul 2024 09:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E28E8C2BD10;
 Sat,  6 Jul 2024 09:53:00 +0000 (UTC)
Date: Sat, 6 Jul 2024 10:52:58 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Mishin <amishin@t-argos.ru>
Message-ID: <20240706095258.GB1481495@kernel.org>
References: <20240705163620.12429-1-amishin@t-argos.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240705163620.12429-1-amishin@t-argos.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720259583;
 bh=EoJn9pc2K+C/K7BLu1o4zFCKx6+NE9Wo+WHt6QnrWSM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oF3hrZ8HY+7i9IMoKfw0AtfX5ocmKNXTt9vQ41mFKyuTSb1Mzp9OYb+rg2lKQdX5v
 Gkha4nLpVioUDVOrnvBybTy1NEUc6pJVk2OlY8fmhUgRjaDESph8fY61qACYvJ8vRX
 FsI5/5g6PWk8ZZIocJOUxC6+I6SDnOvn5P4lTb6Ubx8n8fz9ybDZvcAKKF07dy1cVl
 08d7OLyM5/bySva0iotFvQhNRK8VpQSfhXfh/e4xOClw9xJateezPtgPyf8ZqI/SHb
 5c3uU9a/V2dDtLv6kayhdVB9/B+2vgU26ZJFj6Ui0IYr1fT/B8n+Ue9iK75xiK4sho
 HXWXsYewNPg8g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oF3hrZ8H
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Adjust memory overrun in
 ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: lvc-project@linuxtesting.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 05, 2024 at 07:36:20PM +0300, Aleksandr Mishin wrote:
> In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
> devm_kcalloc() in order to allocate memory for array of pointers to
> 'ice_sched_node' structure. But in this calls there are 'sizeof(*root)'
> instead of 'sizeof(root)' and 'sizeof(*node)' instead of 'sizeof(node)'.
> So memory is allocated for structures instead pointers. This lead to
> significant memory overrun.
> Looks like it was done for "coverity[suspicious_sizeof] workaround".

Hi Aleksandr,

While I agree that your patch is correct, I doesn't look to me like it was
done for "coverity[suspicious_sizeof] workaround", as that annotation was
added after the cited patch where the problem appears to have been
introduced.

> 
> Adjust memory overrun by correcting devm_kcalloc() parameters.

I also think it is misleading to describe this as an overrun.  In my
opinion, an overrun refers to writing over the end of a buffer, or similar
conditions where values are written to memory or read from that is not
intended for that purpose.

But that is not the case here.  Instead it is an over allocation of memory.
Which is, in a sense, the opposite of an overrun. I suggest updating the
description of the problem.

> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: dc49c7723676 ("ice: Get MAC/PHY/link info and scheduler topology")

I do agree there is a problem. But I'm not convinced this is fixing a bug -
is the overallocation of memory manifesting, in a real problem, other than
perhaps contributing to memory pressure (I assume in not a very significant
way).

My feeling is that it would be better to target this change to net-next and
drop the Fixes tag.

> Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>

...
