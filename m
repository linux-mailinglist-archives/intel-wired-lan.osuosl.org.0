Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344CFABEECE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 10:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0AB760771;
	Wed, 21 May 2025 08:58:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id espqeyd1C15y; Wed, 21 May 2025 08:58:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F1D6608EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747817939;
	bh=NmVTXwCrgz5/Cwr9ZIYVuSQlhEJSsULUOJ6ssZhudRI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xS723EoliZwN9XL4KG7OTH89ORgjGYcrGU24whXzvTPantnCdbVzzEUIysQ+gux+u
	 aWbsa+2cnqez5KuOF5qg/nEa0S11jnNMkX+HUlVZ0ImphDMAgkP1XoZ21HMgd2c9kM
	 1MC1bPRcjS4pdn2MXIX5NfaIZcWrMMp21IglS6hI8ahE3mJK2F12JrUszAWSAeZ8uu
	 J9ry1IQRu+5R6s/btVIoCRiddai7EHgIQSPrYyqbRRKY8u+6QOTZZ2LDkxjDltEqqi
	 sQB+P7xzF32kyDpsxBXtVcYZyJGObM4kM3ReFdLcDDvkP+KDX/wz/I+r3Oj+VhZAVK
	 yX7uxcoSJ6AQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F1D6608EB;
	Wed, 21 May 2025 08:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BDE211B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 08:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62267404D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 08:58:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ATJCgTD3tPuR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 08:58:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B89B8408D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B89B8408D5
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B89B8408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 08:58:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0AB6F45426;
 Wed, 21 May 2025 08:58:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74656C4CEE4;
 Wed, 21 May 2025 08:58:53 +0000 (UTC)
Date: Wed, 21 May 2025 09:58:51 +0100
From: Simon Horman <horms@kernel.org>
To: Krishna Kumar <krikku@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 kuba@kernel.org, pabeni@redhat.com, sridhar.samudrala@intel.com,
 ahmed.zaki@intel.com, krishna.ku@flipkart.com
Message-ID: <20250521085851.GQ365796@horms.kernel.org>
References: <20250520170656.2875753-1-krikku@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520170656.2875753-1-krikku@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747817935;
 bh=thJ7ueoFNpIdnDT3hVYMlZ4dOo2TwzqeL+wDkr8GQDA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qlVqA6Qzo2o/gIDllg+3y2w0ifELKPTUZug1Q1lkDN/qXHK0yDzX4+w+5+LLk0kxO
 BapqunvNSTXXEr0qvvhA4W4yirdtSKbqp+NmWIM4PLOH3PBetFBnldIOv2ahAu2eRa
 jKcweKkOUPhP5ZFXU5MYLOhgMOzL1O8dLO6m2apGTZLPe2W3TH7w+qaLyQT0xQo3fa
 yUEct5QzxGPr4uibPgK7s/YMHnbycmkTK1tAWHasQMC3+Mc1AdDjna5EzYBTNKvva7
 CDhrftW7B1fF6VCyKBRWUlzfFk8aLTid921lt6WuDZHfPamuoIsXr9n7U4Xbw0Golx
 bBA/JxA6KgoDA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qlVqA6Qz
Subject: Re: [Intel-wired-lan] [PATCH v2 net] net: ice: Perform accurate
 aRFS flow match
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

On Tue, May 20, 2025 at 10:36:56PM +0530, Krishna Kumar wrote:
> This patch fixes an issue seen in a large-scale deployment under heavy
> incoming pkts where the aRFS flow wrongly matches a flow and reprograms the
> NIC with wrong settings. That mis-steering causes RX-path latency spikes
> and noisy neighbor effects when many connections collide on the same
> hash (some of our production servers have 20-30K connections).
> 
> set_rps_cpu() calls ndo_rx_flow_steer() with flow_id that is calculated by
> hashing the skb sized by the per rx-queue table size. This results in
> multiple connections (even across different rx-queues) getting the same
> hash value. The driver steer function modifies the wrong flow to use this
> rx-queue, e.g.: Flow#1 is first added:
>     Flow#1:  <ip1, port1, ip2, port2>, Hash 'h', q#10
> 
> Later when a new flow needs to be added:
> 	    Flow#2:  <ip3, port3, ip4, port4>, Hash 'h', q#20
> 
> The driver finds the hash 'h' from Flow#1 and updates it to use q#20. This
> results in both flows getting un-optimized - packets for Flow#1 goes to
> q#20, and then reprogrammed back to q#10 later and so on; and Flow #2
> programming is never done as Flow#1 is matched first for all misses. Many
> flows may wrongly share the same hash and reprogram rules of the original
> flow each with their own q#.
> 
> Tested on two 144-core servers with 16K netperf sessions for 180s. Netperf
> clients are pinned to cores 0-71 sequentially (so that wrong packets on q#s
> 72-143 can be measured). IRQs are set 1:1 for queues -> CPUs, enable XPS,
> enable aRFS (global value is 144 * rps_flow_cnt).
> 
> Test notes about results from ice_rx_flow_steer():
> ---------------------------------------------------
> 1. "Skip:" counter increments here:
>     if (fltr_info->q_index == rxq_idx ||
> 	arfs_entry->fltr_state != ICE_ARFS_ACTIVE)
> 	    goto out;
> 2. "Add:" counter increments here:
>     ret = arfs_entry->fltr_info.fltr_id;
>     INIT_HLIST_NODE(&arfs_entry->list_entry);
> 3. "Update:" counter increments here:
>     /* update the queue to forward to on an already existing flow */
> 
> Runtime comparison: original code vs with the patch for different
> rps_flow_cnt values.
> 
> +-------------------------------+--------------+--------------+
> | rps_flow_cnt                  |      512     |    2048      |
> +-------------------------------+--------------+--------------+
> | Ratio of Pkts on Good:Bad q's | 214 vs 822K  | 1.1M vs 980K |
> | Avoid wrong aRFS programming  | 0 vs 310K    | 0 vs 30K     |
> | CPU User                      | 216 vs 183   | 216 vs 206   |
> | CPU System                    | 1441 vs 1171 | 1447 vs 1320 |
> | CPU Softirq                   | 1245 vs 920  | 1238 vs 961  |
> | CPU Total                     | 29 vs 22.7   | 29 vs 24.9   |
> | aRFS Update                   | 533K vs 59   | 521K vs 32   |
> | aRFS Skip                     | 82M vs 77M   | 7.2M vs 4.5M |
> +-------------------------------+--------------+--------------+
> 
> A separate TCP_STREAM and TCP_RR with 1,4,8,16,64,128,256,512 connections
> showed no performance degradation.
> 
> Some points on the patch/aRFS behavior:
> 1. Enabling full tuple matching ensures flows are always correctly matched,
>    even with smaller hash sizes.
> 2. 5-6% drop in CPU utilization as the packets arrive at the correct CPUs
>    and fewer calls to driver for programming on misses.
> 3. Larger hash tables reduces mis-steering due to more unique flow hashes,
>    but still has clashes. However, with larger per-device rps_flow_cnt, old
>    flows take more time to expire and new aRFS flows cannot be added if h/w
>    limits are reached (rps_may_expire_flow() succeeds when 10*rps_flow_cnt
>    pkts have been processed by this cpu that are not part of the flow).
> 
> Changes since v1:
>   - Added "Fixes:" tag and documented return values.
>   - Added @ for function parameters.
>   - Updated subject line to denote target tree (net)

Thanks for the updates, much appreciated.

I don't think it is necessary to repost because of this, but for future
reference, these days it is preferred to place change information, like
that immediately above, below the scissors ("---"). That way it is visible
to reviewers and appears in mailing list archives and so on.  But it is
omitted from git history, as there the commit message is truncated at the
scissors.

> Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
> Signed-off-by: Krishna Kumar <krikku@gmail.com>

Reviewed-by: Simon Horman <horms@kernel.org>

