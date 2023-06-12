Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF4172BEDB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 12:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5585840438;
	Mon, 12 Jun 2023 10:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5585840438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686565495;
	bh=UzbcBzp6v6Gdnl3n7SUefToOCk2Ug41ejGh1zbgB56o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yLvgKNCUDW5V9fsHwJj4/JjbXNdL0faE+DGZqXmZGNg8h+R3uoU3CUiSt7I/2VCoz
	 ThwULsyAnj+s7DvZ+JpGvvpn4Q8QtBBP/iapF4XopczSrwu6LJwDQ9kTEqnjyYwi+O
	 KYIaJMdpfs4AX0u2NiU8RjPF7B7OOtbLdQ7SUQR2utCWthwp1x/OKFmdU+eajz02qz
	 uiauCV7vKwr96F7rORQCrYm0iRxTL2aTg3/FVRXpuGSSbnDG3NE1kYRFsq3+xmW40U
	 TnbkxuQ2TpKbUN2eM3tGmIlk+4iKTpzHpTwxpFALWLtXFjPVoDt6mqAmIVIYJQ+7a4
	 U6vYNvTFAsrdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qoOOpcOa_XiX; Mon, 12 Jun 2023 10:24:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07D4E40150;
	Mon, 12 Jun 2023 10:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07D4E40150
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D586D1BF2A2
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 10:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9DF940120
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 10:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9DF940120
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7lSkgoYR95U for <intel-wired-lan@osuosl.org>;
 Mon, 12 Jun 2023 10:24:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D79BE40150
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D79BE40150
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 10:24:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="357995729"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="357995729"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 03:24:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="800978099"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="800978099"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.64])
 ([10.13.12.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 03:24:44 -0700
Message-ID: <4a6d6751-e8ea-35db-3fe3-eccdfb152f28@linux.intel.com>
Date: Mon, 12 Jun 2023 13:24:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230603125934.28090-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230603125934.28090-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686565487; x=1718101487;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=iRqe/FsJBqZNDrQ3YBD3/zPAHk8arsPP6uNP+QK2kyE=;
 b=cGG2+eytgrj8SQ+FWQoJf3WIxwAHTIKqlbWXHKxFMiZRJpo9fSOM8m36
 0Smjj+pXWXBJhGlB8LJTU4Ehr4UgpJV+mLxZ7pRyxylIVTIjqweQYUT8O
 AR/qJ6cLVPRHa7HU1GBgSH3uwT+77UMMrcJlk5y6Up7EWpeRVpNc0Rhha
 l9VXL8B9exg85bHq/tV3zerxKR7PU4gkHdSEJV6RtM6/tg4vstIJ7wdFP
 8FdO2LisRnd35lC48o8ABHTOGgtOjpLn9AzYEzREvE1/hqfRcySqyHlgz
 vmeNrjTSbnvq9Y7Ft8n0V+FZI4tqje86SyTXapbnAe4P248XLOm0IrB7M
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cGG2+eyt
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Fix TX Hang issue
 when QBV Gate is closed
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
Cc: chwee.lin.choong@intel.com, pmenzel@molgen.mpg.de,
 tee.min.tan@linux.intel.com, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/3/2023 15:59, Muhammad Husaini Zulkifli wrote:
> If a user schedules a Gate Control List (GCL) to close one of
> the QBV gates while also transmitting a packet to that closed gate,
> TX Hang will be happen. HW would not drop any packet when the gate
> is closed and keep queuing up in HW TX FIFO until the gate is re-opened.
> This patch implements the solution to drop the packet for the closed
> gate.
> 
> This patch will also reset the adapter to perform SW initialization
> for each 1st Gate Control List (GCL) to avoid hang.
> This is due to the HW design, where changing to TSN transmit mode
> requires SW initialization. Intel Discrete I225/6 transmit mode
> cannot be changed when in dynamic mode according to Software User
> Manual Section 7.5.2.1. Subsequent Gate Control List (GCL) operations
> will proceed without a reset, as they already are in TSN Mode.
> 
> Step to reproduce:
> 
> DUT:
> 1) Configure GCL List with certain gate close.
> 
> BASE=$(date +%s%N)
> tc qdisc replace dev $IFACE parent root handle 100 taprio \
>      num_tc 4 \
>      map 0 1 2 3 3 3 3 3 3 3 3 3 3 3 3 3 \
>      queues 1@0 1@1 1@2 1@3 \
>      base-time $BASE \
>      sched-entry S 0x8 500000 \
>      sched-entry S 0x4 500000 \
>      flags 0x2
> 
> 2) Transmit the packet to closed gate. You may use udp_tai
> application to transmit UDP packet to any of the closed gate.
> 
> ./udp_tai -i <interface> -P 100000 -p 90 -c 1 -t <0/1> -u 30004
> 
> Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
> Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Tested-by: Chwee Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
> V2 -> V3: Fix reviewers's comments.
> V1 -> V2: Fix conflict and apply to net-queue tree.
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  6 +++
>   drivers/net/ethernet/intel/igc/igc_main.c | 57 +++++++++++++++++++++--
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 41 ++++++++++------
>   3 files changed, 87 insertions(+), 17 deletions(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
