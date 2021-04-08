Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B341358059
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 12:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36B4860DD5;
	Thu,  8 Apr 2021 10:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0oOeysy1jRdP; Thu,  8 Apr 2021 10:12:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41E7560C10;
	Thu,  8 Apr 2021 10:12:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D1A51BF3DB
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B35484DAA
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUy_2PFnHR0U for <intel-wired-lan@osuosl.org>;
 Thu,  8 Apr 2021 10:12:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7C7C84DAD
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:12:30 +0000 (UTC)
IronPort-SDR: 17e1NZJwDlwWccP7KYnrMl+X3Sr5tQNlkj82eiKXi2uRdSDOa//L++FJR4ynFMCCihWCQ4IPjX
 GwTfPuA2pwzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="257489496"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="257489496"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:12:29 -0700
IronPort-SDR: olYsWSxITBLbQFhOVJ+7YsknNSOygBX8mzbd+RS4JFbQBzzjEFj1h5+9O7sM3lpipadTVMVa8e
 HUTMvB0l7Crw==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="422173436"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:12:28 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210226002308.2348-1-jithu.joseph@intel.com>
 <20210226002308.2348-8-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <38b5a524-9d8a-c143-b671-a0bc38f24698@linux.intel.com>
Date: Thu, 8 Apr 2021 13:12:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210226002308.2348-8-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 7/9] igc: Replace IGC_TX_FLAGS_XDP
 flag by an enum
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
> Up to this point, tx buffers are associated with either a skb or a xdpf,
> and the IGC_TX_FLAGS_XDP flag was enough to distinguish between these
> two case. However, with upcoming patches that will add AF_XDP zero-copy
> support, a third case will be introduced so this flag-based approach
> won't fit well.
> 
> In preparation to land AF_XDP zero-copy support, replace the
> IGC_TX_FLAGS_XDP flag by an enum which will be extended once zero-copy
> support is introduced to the driver.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  8 +++++--
>   drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++++++++++-----
>   2 files changed, 28 insertions(+), 7 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
