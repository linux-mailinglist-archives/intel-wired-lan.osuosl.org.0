Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 871026517A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 02:13:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 614C9415DA;
	Tue, 20 Dec 2022 01:13:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 614C9415DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671498815;
	bh=452Z755Vx86hNVS4Efp4Isnf408cAT5tFod3YEaY+eM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=80Nv2+CCu8h148uzRCDEvgJWi07cjvEk/1hT2auldFEly2T7VijjjZuYDAidsHF12
	 mkyR/RdpNnkg1TvQR0aRxMV2vI6f0ZMwwq2cW4Sm3qq/ZpMRoDN35Xt0LWVVF1h/P+
	 mI7yU9A2jHNtY8dUvjL+h3AM+k1b8zxVsik5S1eTF4OEMyVJRnx9nk9b/43TXFXa9T
	 doMp9ZfNNwiKZkC+fT1cNtUK6T5pgvpF7mfbWViVtZ0CMPx4NAF+pODk5wo89dp/w/
	 guy5JQ5YQGkQTmiDJWCnNuKuMES3IX8kLxNjuOW60ylN8g/2zqCyl07e2GKGfwgu7p
	 cHif3o3XIQfog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebrJYoapMEZj; Tue, 20 Dec 2022 01:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18D0F415C9;
	Tue, 20 Dec 2022 01:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18D0F415C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A64BE1BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 01:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 896324011C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 01:13:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 896324011C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dux9VakZfstC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 01:13:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4B3E400EF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4B3E400EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 01:13:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8F85661171;
 Tue, 20 Dec 2022 01:13:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AE75C433F0;
 Tue, 20 Dec 2022 01:13:22 +0000 (UTC)
Date: Mon, 19 Dec 2022 17:13:21 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20221219171321.7a67002b@kernel.org>
In-Reply-To: <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671498803;
 bh=GhvR/+DG+rgM08a/7XAG0bKpkCNp0hJgF6NxkYUzmDI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kHHwVJlX7XGbfdBf/t7Y6+zrIB5I/9waRcwcxJaY91y93RDnYJgwsudGZbuLbbAv4
 ZoDGqKe+m+WaGVO2aixhOlNDH2wTBVGL0KCIU12TVOhubLPgET+Kih+UEn+B7Snx+v
 dy3a2L2yrYdiBdrsI3n9Hdkp2YRUFGBE0VY7OZGz2TX1rpG6g6bx18AIrsh9VmrT/D
 b3WW5GykoiDyk3cHupelEHHoax6frsLvY0T5wJqBm+AeBp3SH79SkcUsCr0/hrungq
 oFoWkbgpERG8hzXa4qxTSHmX4iGsrICDhQRD4c4NKiWNe80ZeqZuWtv/9sBfqcBJlq
 Ki5bdWysGMj9w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kHHwVJlX
Subject: Re: [Intel-wired-lan] [RFC bpf-next 2/8] net: introduce XDP
 features flag
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 pabeni@redhat.com, grygorii.strashko@ti.com, aelior@marvell.com,
 hawk@kernel.org, christophe.jaillet@wanadoo.fr, memxor@gmail.com,
 john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 19 Dec 2022 16:41:31 +0100 Lorenzo Bianconi wrote:
> +=====================
> +Netdev XDP features
> +=====================
> +
> + * XDP FEATURES FLAGS
> +
> +Following netdev xdp features flags can be retrieved over route netlink
> +interface (compact form) - the same way as netdev feature flags.

How likely is it that I'll be able to convince you that cramming more
stuff in rtnl is a bad idea? I can convert this for you to a YAML-
-compatible genetlink family for you in a jiffy, just say yes :S

rtnl is hard to parse, and already overloaded with random stuff.
And the messages are enormous.

> +These features flags are read only and cannot be change at runtime.
> +
> +*  XDP_ABORTED
> +
> +This feature informs if netdev supports xdp aborted action.
> +
> +*  XDP_DROP
> +
> +This feature informs if netdev supports xdp drop action.
> +
> +*  XDP_PASS
> +
> +This feature informs if netdev supports xdp pass action.
> +
> +*  XDP_TX
> +
> +This feature informs if netdev supports xdp tx action.
> +
> +*  XDP_REDIRECT
> +
> +This feature informs if netdev supports xdp redirect action.
> +It assumes the all beforehand mentioned flags are enabled.
> +
> +*  XDP_SOCK_ZEROCOPY
> +
> +This feature informs if netdev driver supports xdp zero copy.
> +It assumes the all beforehand mentioned flags are enabled.

Why is this "assumption" worth documenting?

> +*  XDP_HW_OFFLOAD
> +
> +This feature informs if netdev driver supports xdp hw oflloading.
> +
> +*  XDP_TX_LOCK
> +
> +This feature informs if netdev ndo_xdp_xmit function requires locking.

Why is it relevant to the user?

> +*  XDP_REDIRECT_TARGET
> +
> +This feature informs if netdev implements ndo_xdp_xmit callback.

Does it make sense to rename XDP_REDIRECT -> XDP_REDIRECT_SOURCE then?

> +*  XDP_FRAG_RX
> +
> +This feature informs if netdev implements non-linear xdp buff support in
> +the driver napi callback.

Who's the target audience? Maybe FRAG is not the best name?
Scatter-gather or multi-buf may be more widely understood.

> +*  XDP_FRAG_TARGET
> +
> +This feature informs if netdev implements non-linear xdp buff support in
> +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET is properly
> +supported.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
