Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BBA358058
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 12:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACEAB406A0;
	Thu,  8 Apr 2021 10:12:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3wtdmeZWqO1; Thu,  8 Apr 2021 10:12:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AAB44065B;
	Thu,  8 Apr 2021 10:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5BB41BF3DB
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C46F384DAC
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aTjGmxedqSMX for <intel-wired-lan@osuosl.org>;
 Thu,  8 Apr 2021 10:11:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 396D884DAA
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:11:56 +0000 (UTC)
IronPort-SDR: NpLs5uvTm6I0zZ39aR5bLBc1J8HJZfa6iULFI1BX9trPA75Bts9hhxe1yNtVEdeJgd6KLVXFIZ
 auKhV7h1j3zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193620782"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="193620782"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:11:56 -0700
IronPort-SDR: Qe3zeKP6c96ZbZI2EOtS26UB5sD3x9efEe+IU8Tef8ThNyF3wDcVsMQg5VcdYNiYrb1vnqeCqL
 AVz1dBX8ZyNw==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="422173282"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:11:54 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210226002308.2348-1-jithu.joseph@intel.com>
 <20210226002308.2348-7-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <17bf46ab-2170-b4f3-39be-22bc37f81c20@linux.intel.com>
Date: Thu, 8 Apr 2021 13:11:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210226002308.2348-7-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 6/9] igc: Introduce
 igc_unmap_tx_buffer() helper
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
> In preparation for AF_XDP zero-copy support, encapsulate the code that
> unmaps tx buffers into its own local helper so we can reuse it, avoiding
> code duplication.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 49 +++++++----------------
>   1 file changed, 15 insertions(+), 34 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
