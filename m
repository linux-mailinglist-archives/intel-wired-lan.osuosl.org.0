Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A33734C60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 09:29:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20BDD81E63;
	Mon, 19 Jun 2023 07:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20BDD81E63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687159779;
	bh=ImcXbG1UrhFqaBkiQHOu4BM0HK7S9FVHzxUnaBi4Eu0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8vksXdETluppwioycmEzqAIkF4LTdzBuRtVEa9cLvA1/TnOgu73gTB5NJdzpc04IX
	 k37/eYBBMtE85Ff515Un/5RFqiRqDOM2TbzsMrZpbFdV5rwWtzPYywUIJE2LoDL+9m
	 83giQiqcHHeaOXLWLEAuekRe1Jdyb4EOAJEbG2sBg4YQjLBkMjpt8DWo3VS9btV4Cv
	 aglnV50ejmqQRMQG9+9SpKgwxKnZ/bp+9nc2uxue4nd+6jHd7Dj2aF1SAitaBT3MBn
	 rprjV1TEvYD5F6Je56niXHTtvH6TnIt83netJIu/wHf+oNDMYb/8elSn0mtkVAmj5N
	 C4JxGhKIQUUCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIaecHzp-Inc; Mon, 19 Jun 2023 07:29:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E430C81E60;
	Mon, 19 Jun 2023 07:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E430C81E60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A67FA1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 07:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F51081E60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 07:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F51081E60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LQ9CJaYPRgQ6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 07:29:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 260C581E5D
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 260C581E5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 07:29:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="359573457"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="359573457"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 00:29:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="887821577"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="887821577"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.68])
 ([10.13.12.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 00:29:26 -0700
Message-ID: <65172955-e051-e76e-26a6-ff5e895992e5@linux.intel.com>
Date: Mon, 19 Jun 2023 10:29:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
 <20230607213232.875138-2-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230607213232.875138-2-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687159771; x=1718695771;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TFiPE8+gSRNX5fOfU+icJ12DIwV/vreT/GZ/5XS6etQ=;
 b=IkxTaStS49zZ7slEiyA6Q8QI5LwzBAk5cxZeHKe0pL4fWLut9pzkxQr5
 0opVVUvVGZzfjA61RTDMtRpmb1Wpevdrim34+8FLHKmI5IZJn7nzplNDZ
 r5H9PGefA1w+7F2BrtT/QW7KNX3JV8z/9/onwAXbSL8AKA7dbPFwJ3yad
 VDMTlvTeDnOJBABM2rWRbokLJMMNnUFET5HM9ZROzIcteFEf80EqEapYK
 k/FARUbsC22WjLE8twva1gmjRilRls4KwGsYN2B+9z2K0VdzSrBB7PDPi
 MQmstr2W9IpMtODrmM957VYSr/7NrvJe0rVbvie2vTH1MyKQ558hk8fY2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IkxTaStS
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/4] igc: Fix race
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

On 6/8/2023 00:32, Vinicius Costa Gomes wrote:
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
