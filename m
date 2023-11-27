Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D77FA88B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 19:05:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6B4B81749;
	Mon, 27 Nov 2023 18:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6B4B81749
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701108311;
	bh=CgqwWUXPn1hn5C9uX3c4m/BuguWlPpdSJ/Xo2Jwav7k=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VW4nViI60NEjhkWYrsHLFBfbSA6v74UdwSY7ZxS22TzBGeYuqBVhfn6lrAxq8oxZl
	 iqd7RcgmLMmx/1Ayk9ZUIYsWK28fSv8ngA6mKzv2tGYcrI2+goicluHhTSB0PgAbeS
	 Nks50zXdQnDJvmc4jG86jcsm17qlpCTw+Tlg2i61HUi7rEK7o3A3A/z11B9raQarsY
	 WDN/59N1InLwX0n5M+i9B4F2Qn2KmlMEmNjjYjj1YKH7aJmq+uRUQqm2+iXhgM+c0U
	 Yy3jziOjtT3lrWUQY7AhbWBXJVFSDs6rh0COT+0LM7g/iYAMaZw/rgDs4IDmq8mnhD
	 +zYdIWDsvVuIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4K1cFBB7Cg7K; Mon, 27 Nov 2023 18:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02EDC81755;
	Mon, 27 Nov 2023 18:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02EDC81755
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCE01BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 18:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 620F840642
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 18:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 620F840642
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChFAuZawP5Eg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 18:05:04 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 589514063C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 18:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 589514063C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3339BCE107C;
 Mon, 27 Nov 2023 18:05:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCEE7C433C7;
 Mon, 27 Nov 2023 18:04:58 +0000 (UTC)
Date: Mon, 27 Nov 2023 10:04:58 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <20231127100458.48e0ff6e@kernel.org>
In-Reply-To: <81014d9d-4642-6a6b-2a44-02229cd734f9@gmail.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-2-ahmed.zaki@intel.com>
 <20231121152906.2dd5f487@kernel.org>
 <4945c089-3817-47b2-9a02-2532995d3a46@intel.com>
 <20231127085552.396f9375@kernel.org>
 <81014d9d-4642-6a6b-2a44-02229cd734f9@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701108299;
 bh=yZAd/k08GdcTOr/Fs5n1V5VQl7oMldA6TqSlVGcOWQA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fbwviPv1dKJaPLc0mEB/gU/U5HQ9sxxhmTt2ywizmRonX8X5jx9fQnlqvTROeXeLw
 UneGMpLbqDgFR6nx1jr0mGGdF9mpMqy3sYSrRDhoJR6JSZyBAlOS+Qr68o0Ti0tcWb
 HYjoHmsTHdfjpWaYSeXQIBB15vlhYlaXoU7TY0Z/uBf7+eKq1dNywBbzq9wUD8yn68
 HeiXfFJn8JW6YLNetu8GFmGyZSLdkUS0Hy/VopQwr6N9cipd+iTXxRVFQzXLjg3b4l
 dn80JJlLrOmkh5r51G83Zt0bIugxxrZmNvmCj5p4Z12FlVeDJwkDHldBfQNZZ81dAB
 cRcjrAUGkdWWA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fbwviPv1
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/7] net: ethtool: pass
 ethtool_rxfh to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 27 Nov 2023 17:10:37 +0000 Edward Cree wrote:
> Yep, I had noticed.  Was wondering how the removal of the old
>  [sg]et_rxfh_context functions would interact with my new API,
>  which has three ops (create/modify/delete) and thus can't
>  really be wedged into the [sg]et_rxfh() like that.

Set side looks fairly straightforward. Get is indeed more tricky.

> Tbh I'd rather move in the direction of using the new API (and
>  associated state-in-core) for everything, even context 0, so
>  that the behaviour is consistent between default and custom
>  contexts for NICs that support the latter.  Not 100% sure how
>  exactly that would work in practice yet though; drivers are
>  currently responsible for populating ctx 0 (indir, key, etc)
>  at probe time so how do you read that state into the core?

We can try to slowly move drivers over from the "pull model"
to a "push model" where they inform the core about the change
they have made. The main thing to worry about will probably
be the indirection table, as queues get reconfigured.

Maybe we can tie the switch over to the multi-context support?

Or wait with the conversion until the new API gets some use
for the non-0 context..

> And I promise v5 of the rework is coming eventually, bosses
>  just keep prioritising everything but this :(

Right, which is why I'm not asking Ahmed to worry about/wait for 
your work :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
