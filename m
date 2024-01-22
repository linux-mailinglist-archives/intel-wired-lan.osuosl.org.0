Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3598E837496
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 21:51:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AA8D41A33;
	Mon, 22 Jan 2024 20:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AA8D41A33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705956714;
	bh=gzGz+E73GyVV6rytZCUQtMogJ1kDCqJPVOFejEwHm/0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=taAN4TVQmEXQRmTaTMWYZlObLXFsSy9bfXqEaQybdcF+2nCev4yvLSJ1eSJHh3JNM
	 0AQx4KLmGi82NvGKR8bs0tEVje1cP+55yEkmVNY3iQE+JR5g4ZOBhBZh8nlJR0c1dG
	 OUDp+AuFgmG/axFlcw3ixWm1XFhIM/WgkjeEkjQnTZDYOHQ/hM6pvVdgZpk6w8Xfcj
	 SaUNFI0vtK4nE2YXWON6UykM9lR37qzD2WZrdI/Euli2qgStqwhXdhzIvlzBT/nbfa
	 VlbJhYOdtsE/BYppT2bBbAGPhZ/FQzDmlY4pru2jukZgJQQZylriYwDxdI9LE0qKuZ
	 ToIY+PdKFjJvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T6Pq6d8BLssC; Mon, 22 Jan 2024 20:51:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7185F41A06;
	Mon, 22 Jan 2024 20:51:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7185F41A06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC4B61BF859
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 20:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3ADB60B9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 20:51:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3ADB60B9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKX1kf_1ITHE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 20:51:46 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C1CB60A8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 20:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C1CB60A8A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 38C98B811AC;
 Mon, 22 Jan 2024 20:51:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6596EC433C7;
 Mon, 22 Jan 2024 20:51:40 +0000 (UTC)
Date: Mon, 22 Jan 2024 20:51:37 +0000
From: Simon Horman <horms@kernel.org>
To: Suresh Kumar <suresh2514@gmail.com>
Message-ID: <20240122205137.GH126470@kernel.org>
References: <20240120072806.8554-1-suresh2514@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240120072806.8554-1-suresh2514@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705956702;
 bh=kBy1Gyk4KwbMYdlczXCSVyblnX5b1/z4nvmDyE4PLA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EPWsA64QiIJiR5DEKExhPQM45t/lykkdoZuwLhoV9qa+hsveaxJx69OxBa/F/lttl
 8mcarfEKPnDixdfMXPTmx8P8sNxYiNicA2r/9EbkMiGkN6JNadMqgArG0N+L7Dp4LI
 ZMdOY8bk1HQDwQhlGiV/xjr6XXLZPsz4of0y+bEzh3Pzlr3e/mCmP1cXB7YLHD4hFX
 1BLcFb2ODHKE5LBI2OX1zFMzprz3/sdPLD3t5cdDxdxEnbA8LDwoMygQjEOwCbIfdj
 oLY98/Kr7+ilOZkPyfeLiK9MJEPNyMW1n7Bc1d10tubvdK6pz64h1LY9AnD9sNrkVi
 G5SPSU89GeJcg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EPWsA64Q
Subject: Re: [Intel-wired-lan] [PATCH iwl v2] i40e: print correct hw max rss
 count in kernel ring buffer
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jan 20, 2024 at 12:58:06PM +0530, Suresh Kumar wrote:
> pf->rss_size_max is hardcoded and always prints max rss count as 64.
> 
> Eg:
>   kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count:  104/64
> 
> whereas  ethtool reports the correct value from "vsi->num_queue_pairs"
> 
> Channel parameters for eno33:
> Pre-set maximums:
> RX:     n/a
> TX:     n/a
> Other:      1
> Combined:   104
> Current hardware settings:
> RX:     n/a
> TX:     n/a
> Other:      1
> Combined:   104  <-------
> 
> and is misleading.
> 
> Change it to vsi->num_queue_pairs
> 
> Signed-off-by: Suresh Kumar <suresh2514@gmail.com>

Hi Suresh,

following-up on our earlier emails.

I do think that if this it is a fix it should have a fixes tag.
Which should be for the commit where the bug was first visible to users.
