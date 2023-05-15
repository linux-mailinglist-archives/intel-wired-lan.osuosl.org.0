Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B69F702B9E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 13:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DA7E81437;
	Mon, 15 May 2023 11:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DA7E81437
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684150730;
	bh=4Ves60B52ufIAX9UkdhMvB6b6cg6mPnpI5rg3gC0E/A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=okvDEz6t4HESvUbqz8ka46wgDy5+rqOloDbMW6hH/fUec/X/YursNstCJrscu9sDS
	 Vq3HM8179csYH893DxA4yBogl8sB1B6kKtwLAadp+WW20i6TcAcA2YaXGkMQS/QGAG
	 aJ8mfaN7Vwx3OcOuOxZ1gEnYRp92+FBJ0ZDEiWAeZA3kQpLPDFobHcxTmba0U4bxqW
	 8iBx4CPW30vETBRyUSlspzQduzX9SvTC7sGt2Av2uuTnpiBDIbbiOz6ocPwAx094jV
	 vfkw0xfSyjx80cujUg7sfazotKfROzW1YFWcGajH43+rjOoh6wtm4vhZypdfTaaALM
	 K9Q1uUbsiZvoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xe8uMmrB5E9T; Mon, 15 May 2023 11:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0516581392;
	Mon, 15 May 2023 11:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0516581392
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2B721BF311
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 11:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A9A48138B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 11:38:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A9A48138B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0-zOilUE9Rv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 11:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB16181376
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB16181376
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 11:38:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="348671661"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="348671661"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="703957618"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="703957618"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.159])
 ([10.13.12.159])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:38:31 -0700
Message-ID: <0b886ed5-d539-a16e-166b-b3b3690ec00d@linux.intel.com>
Date: Mon, 15 May 2023 14:38:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
 <20230511230731.105152-2-vinicius.gomes@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230511230731.105152-2-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684150722; x=1715686722;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VwDOui8Jnr8Yr8cpMohKyWfrk8okHfln3J8bRPqDV0M=;
 b=PtYrJeH4fxAO5WWj2WOMtVLcDRL8TzcwBsdtzudkv03sbADRS/YjjDFr
 ex6NTmbljF3e9Oic0cL04Ymlo4anfwW8x1KDwgFqhHQtj58ovc/tqH89I
 Fy4sbwS2ni92mP7frqA0lYR4oAmjoTCEcsk1bLZwEyhZ/l4YpgLBKPm4K
 CM0N+Jxt8f7TbI1+0wPidS8Owpyv6lHcTN/9NV4Gm1Po3MYx/sj4Jf6Vz
 amh3GAabIrh7gp8uYWH4Nh3eJwIpiezSeDwoPoMA1EZu+QsABUd40KbhT
 rpceElBrtK+iEA2DSPjBbFSbywp86fdorEP75P4SJZTfW4p2HR8U5A76G
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PtYrJeH4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/4] igc: Fix race
 condition in PTP tx code
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
Cc: vladimir.oltean@nxp.com, Andre Guedes <andre.guedes@intel.com>,
 kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/12/2023 02:07, Vinicius Costa Gomes wrote:
> Currently, the igc driver supports timestamping only one tx packet at a
> time. During the transmission flow, the skb that requires hardware
> timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
> timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
> scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
> adapter->ptp_tx_skb, and notify the network stack.
> 
> While the thread executing the transmission flow (the user process
> running in kernel mode) and the thread executing ptp_tx_work don't
> access adapter->ptp_tx_skb concurrently, there are two other places
> where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
> igc_ptp_suspend().
> 
> igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
> thread which runs periodically so it is possible we have two threads
> accessing ptp_tx_skb at the same time. Consider the following scenario:
> right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
> igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
> written yet, this is considered a timeout and adapter->ptp_tx_skb is
> cleaned up.
> 
> This patch fixes the issue described above by adding the ptp_tx_lock to
> protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
> Since igc_xmit_frame_ring() called in atomic context by the networking
> stack, ptp_tx_lock is defined as a spinlock, and the irq safe variants
> of lock/unlock are used.
> 
> With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
> flag doesn't provide much of a use anymore so this patch gets rid of it.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  5 +-
>   drivers/net/ethernet/intel/igc/igc_main.c |  9 ++--
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 61 ++++++++++++-----------
>   3 files changed, 43 insertions(+), 32 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
