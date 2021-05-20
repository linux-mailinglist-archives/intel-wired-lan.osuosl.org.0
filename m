Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E42389E77
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:57:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58F0F606C8;
	Thu, 20 May 2021 06:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1ZK7EVFu-a8; Thu, 20 May 2021 06:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 437BE60623;
	Thu, 20 May 2021 06:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D16B91BF23C
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:57:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEE6B83BFF
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKyxYQZARNwL for <intel-wired-lan@osuosl.org>;
 Thu, 20 May 2021 06:57:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44EBF83BBC
 for <intel-wired-lan@osuosl.org>; Thu, 20 May 2021 06:57:45 +0000 (UTC)
IronPort-SDR: 4igGEyIn80WqVDYlPJass15qsb2+fD2LzRVvA0GhqEmgRVAouf/hCIcZMl5v2xznLxxD0vDiGi
 zF23Pq2k1iwA==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="199208093"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="199208093"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:57:44 -0700
IronPort-SDR: cil1F5PKhPmfzOI19vUmMEL2EQgGIMaK5pWojIOGk8l0kmyhBadZS0IAF7YL+JpB/MrZaGgLDG
 QgYRsmAgIyUA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473865495"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:57:42 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210423062555.14972-1-jithu.joseph@intel.com>
 <20210423062555.14972-5-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <b6dff1d1-fda9-df58-284c-2eb4293d4a6e@linux.intel.com>
Date: Thu, 20 May 2021 09:57:38 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210423062555.14972-5-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v6 4/9] igc: Refactor XDP rxq info
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
Cc: kuba@kernel.org, Andre Guedes <andre.guedes@intel.com>,
 Vedang Patel <vedang.patel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 23/04/2021 09:25, Jithu Joseph wrote:
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
