Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 328B988FE18
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 12:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3709E60717;
	Thu, 28 Mar 2024 11:32:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1-RNyUaOX5Tp; Thu, 28 Mar 2024 11:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 949FC60C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711625533;
	bh=mSo7DhF7mzZKKcMy8syjlrux0lEHXlKps9+TIGRsmWk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n88WGmQ8r1T/1qfqr+PCU57ElXbFNrXBDCt9Jh2p5jYL5Nnk4pwtqxJ4JJr3gSofw
	 +SF+hkr8EfJ4Kep+c+tkYgubjTKfGnNUtup1JHsT6OfdLQ0TihbezCAcNTR8P+/ExV
	 h2ZY17AhJID4/eBP6S3zcA6erzIFZKSG7xxcdVVC1GXCVUbMGCc8FBDaHK5r3NzQTQ
	 qM5O/rHTjjT4+/aBueXsW0Yz74wfcwjkimhBujffWhzS4GbcVg88Xaqo4mnwTlysws
	 FZ44jcW5EWvAZ4bbt2lfLOwQ3AxibvmfahnfQkDjIzSvPXWd+8IxE4GV97MQq3Rt+4
	 Z3/xVVXZ/gIkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 949FC60C31;
	Thu, 28 Mar 2024 11:32:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F323C1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED4B4400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:32:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id peubYpWp_s03 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 11:32:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC05C401CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC05C401CE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC05C401CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:32:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 93F0161477;
 Thu, 28 Mar 2024 11:32:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82B50C433F1;
 Thu, 28 Mar 2024 11:32:04 +0000 (UTC)
Date: Thu, 28 Mar 2024 11:32:02 +0000
From: Simon Horman <horms@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20240328113202.GH403975@kernel.org>
References: <20240327040213.3153864-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327040213.3153864-1-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711625527;
 bh=s1Kbht052+Q3EYXLA3+hm7ApiGwdjm7g8WW19YP5C6M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qwh6Uk3ZRyOSlz/Or4Da1ULl71LQUnrLGlaxQA8U0S3NRmJIEUBeqhwBJlb57Rzd3
 w6KhpDYV/AhkKd0OshpY7KcSxVZkJvfq51/esQwWZ4OT8GVZv1SzySiBibc4jsoRaa
 Vqy8pavoaz/X9xRer/fc7ZBsJO4IpEfU9i5VkWS+DdekYDj6R0Wvggb7SFkKnnf+J+
 hCw8WWm2G9kogAd9gFDQoZje26shpas497IwDnXODo30bfFXoW0IacEC7DzCV3Tf0z
 g+MSODMq8aBtznJIVmQd7mQ93qGQixuH+875jjBKKkD3P/uA9wIo5nOVjUpgUElVr8
 K3UT7/jzDXxhA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qwh6Uk3Z
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] net: remove gfp_mask from
 napi_alloc_skb()
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
Cc: siyanteng@loongson.cn, netdev@vger.kernel.org, alexandre.torgue@foss.st.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, edumazet@google.com,
 joabreu@synopsys.com, anthony.l.nguyen@intel.com, mcoquelin.stm32@gmail.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 alexs@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 26, 2024 at 09:02:12PM -0700, Jakub Kicinski wrote:
> __napi_alloc_skb() is napi_alloc_skb() with the added flexibility
> of choosing gfp_mask. This is a NAPI function, so GFP_ATOMIC is
> implied. The only practical choice the caller has is whether to
> set __GFP_NOWARN. But that's a false choice, too, allocation failures
> in atomic context will happen, and printing warnings in logs,
> effectively for a packet drop, is both too much and very likely
> non-actionable.
> 
> This leads me to a conclusion that most uses of napi_alloc_skb()
> are simply misguided, and should use __GFP_NOWARN in the first
> place. We also have a "standard" way of reporting allocation
> failures via the queue stat API (qstats::rx-alloc-fail).
> 
> The direct motivation for this patch is that one of the drivers
> used at Meta calls napi_alloc_skb() (so prior to this patch without
> __GFP_NOWARN), and the resulting OOM warning is the top networking
> warning in our fleet.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

