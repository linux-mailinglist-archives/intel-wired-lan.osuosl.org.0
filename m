Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE854B13E06
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 17:17:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B6A28151E;
	Mon, 28 Jul 2025 15:17:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TDcs6tXCTs4e; Mon, 28 Jul 2025 15:17:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 910448143A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753715874;
	bh=Iqd85GSaExhzF2KiLiSLM0mlTiO1kY90xA4VIA1y+tI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MxfLzXYzOW9vhu3WX+xHzW4I9ExsD0ep26JXiysa9zZBcEr+u2T7hNmyno0ZtScNg
	 e2kGENzv0rdE+pAHifmLIcnyBi1dDEZH+q1Er2xjXq+K48QYpdx4K+bbZcvKub29mk
	 aID4ohcYZEOJzpwXbBbai/4MV/RNQ96OaEOzUfkMMsgD53/vwzxUofR6i6n4/gfgZB
	 jO67pwt1BJOEaWnPIpBIwuJp4hHg2agEpcXf8ka65IrgawvMp8N7Zh/4fk2zqkuW3K
	 IbmYdnlRqHJdkBabQwceqTqO7emzEXLstkDzihwFVoJ01249bAL5wOGlpKKEcBxESz
	 hn6oZahUouo0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 910448143A;
	Mon, 28 Jul 2025 15:17:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D710151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 15:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F0D160735
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 15:17:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 92J_T6XGikV4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 15:17:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5749A60718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5749A60718
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5749A60718
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 15:17:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C78F560007;
 Mon, 28 Jul 2025 15:17:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE4BC4CEE7;
 Mon, 28 Jul 2025 15:17:49 +0000 (UTC)
Date: Mon, 28 Jul 2025 08:17:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <ttoukan.linux@gmail.com>
Cc: Tariq Toukan <tariqt@nvidia.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>, Gal
 Pressman <gal@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Shahar
 Shitrit <shshitrit@nvidia.com>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Cai Huoqing <cai.huoqing@linux.dev>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, Subbaraya
 Sundeep <sbhatta@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>, Mark
 Bloch <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org
Message-ID: <20250728081748.700ad46a@kernel.org>
In-Reply-To: <3bf6714b-46d7-45ad-9d15-f5ce9d4b74e4@gmail.com>
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <20250718174737.1d1177cd@kernel.org>
 <6892bb46-e2eb-4373-9ac0-6c43eca78b8e@gmail.com>
 <20250724171011.2e8ebca4@kernel.org>
 <3bf6714b-46d7-45ad-9d15-f5ce9d4b74e4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753715870;
 bh=jV727T99qgnh1S0rwWU0da1unCUJvT2tB6hFm2F1/Mo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=K16BHBpRBWnNWZUczzVwEQX3lZbsX0KV0ELZ5BY2IxJt2tyDWbAVHAuddklKMUNL/
 6rM5XsxGlU5XsvyfafnXLhXviqefHfmIhdkVa4KhSUuVBu5LLvJyWlrmzBbYzTNf7r
 XaagVrZ+xz1j5nWqqz0Dq6TMa69amqwuKHy2tBc7XGfjMAtYeDFAjmIWDDjO9mhs8f
 emOQG6011CW96Df3b3hpWWoGRNGVqcnLgxD0Zt/1bhC41PEILL3uJxhYqQAlwqsplD
 h9vYZa57WBkTku3SZbAIM2C6rGXODXfrcZYVUdsjKWFLj1j2csHBKRuMMWkvR4cgjY
 0VQLmrxuroWWQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=K16BHBpR
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] Expose grace period
 delay for devlink health reporter
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 27 Jul 2025 14:00:11 +0300 Tariq Toukan wrote:
> I get your suggestion. I agree that it's also pretty simple to 
> implement, and that it tolerates bursts.
> 
> However, I think it softens the grace period role too much. It has an 
> important disadvantage, as it tolerates non-bursts as well. It lacks the 
> "burstness" distinguishability.
> 
> IMO current grace_period has multiple goals, among them:
> 
> a. let the auto-recovery mechanism handle errors as long as they are 
> followed by some long-enough "healthy" intervals.
> 
> b. break infinite loop of auto-recoveries, when the "healthy" interval 
> is not long enough. Raise a flag to mark the need for admin intervention.
> 
> In your proposal, the above doesn't hold.
> It won't prevent the infinite auto-recovery loop for a buggy system that 
> has a constant rate of up to X failures in N msecs.
> 
> One can argue that this can be addressed by increasing the grace_period. 
> i.e. a current system with grace_period=N is intuitively moved to 
> burst_size=X and grace_period=X*N.
> 
> But increasing the grace_period by such a large factor has 
> over-enforcement and hurts legitimate auto-recoveries.
> 
> Again, the main point is, it lacks the ability to properly distinguish 
> between 1. a "burst" followed by a healthy interval, and 2. a buggy 
> system with a rate of repeated errors.

I suspect this is catching some very mlx5-specific recovery loop,
so I defer to your judgment on what's better.

As a user I do not know how to configure this health recovery stuff.
My intuition would be that we just needs to lower the recovery rate
to prevent filling up logs etc. and the action of taking the machine
out is really the responsibility of some fleet health monitoring daemon.
I can't think of any other error reporting facility in the kernel where
we'd shut down the recovery completely if the rate is high..

> > Now we add something called "grace period delay" in
> > some places in the code referred to as "reporter_delay"..
> > 
> > It may be more palatable if we named the first period "error burst
> > period" and, well, the later I suppose it's too late to rename..  
> It can be named after what it achieves (allows handling of more errors) 
> or what it is (a shift of the grace_period). I'm fine with both, don't 
> have strong preference.

Let's rename to "error burst period", reporter_in_error_burst etc.

> I'd call it grace_period in case we didn't have one already :)

Exactly :)
