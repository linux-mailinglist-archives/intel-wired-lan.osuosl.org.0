Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5FF358052
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 12:10:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E76AD84DB1;
	Thu,  8 Apr 2021 10:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bZOag8oKsDvq; Thu,  8 Apr 2021 10:10:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07D3F8349A;
	Thu,  8 Apr 2021 10:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 231381BF3DB
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DACB84DA1
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnHfR9OHzWnC for <intel-wired-lan@osuosl.org>;
 Thu,  8 Apr 2021 10:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C13858349A
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:10:35 +0000 (UTC)
IronPort-SDR: Ayh5AQc/Q9FSaPPDxG8/gOctBLDzyFUIlyC9smF1IJ4YwkTcwcZNj1K2WUqEcSnb2HiLvcYWXY
 VNIpXeuPiz9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172982064"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="172982064"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:10:35 -0700
IronPort-SDR: ZxHF3I436UMpq9iOFPL44slgTlCNsH/kcc+fv9V2SyPvyJO33xCV9Bd4Jf02LJk5eiRtwyucEb
 CaiOT5VseMKg==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="422173032"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:10:34 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210226002308.2348-1-jithu.joseph@intel.com>
 <20210226002308.2348-5-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <1a150870-d333-f025-2b60-9b24eebe75ca@linux.intel.com>
Date: Thu, 8 Apr 2021 13:10:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210226002308.2348-5-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 4/9] igc: Refactor XDP rxq info
 registration
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
Cc: Andre Guedes <andre.guedes@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 26/02/2021 02:23, Jithu Joseph wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> Refactor XDP rxq info registration code, preparing the driver for AF_XDP
> zero-copy support which is added by upcoming patches.
> 
> Currently, xdp_rxq and memory model are both registered during RX
> resource setup time by igc_xdp_register_rxq_info() helper. With AF_XDP,
> we want to register the memory model later on while configuring the ring
> because we will know which memory model type to register
> (MEM_TYPE_PAGE_SHARED or MEM_TYPE_XSK_BUFF_POOL).
> 
> The helpers igc_xdp_register_rxq_info() and igc_xdp_unregister_rxq_
> info() are not useful anymore so they are removed.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 16 ++++++++++----
>   drivers/net/ethernet/intel/igc/igc_xdp.c  | 27 -----------------------
>   drivers/net/ethernet/intel/igc/igc_xdp.h  |  3 ---
>   3 files changed, 12 insertions(+), 34 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
