Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B77038E396
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 May 2021 11:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E58E740345;
	Mon, 24 May 2021 09:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bGgBkUw_PDV6; Mon, 24 May 2021 09:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3946402B8;
	Mon, 24 May 2021 09:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 901481BF3EE
 for <intel-wired-lan@osuosl.org>; Mon, 24 May 2021 09:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CBAC40325
 for <intel-wired-lan@osuosl.org>; Mon, 24 May 2021 09:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sOkxuAeiZtDv for <intel-wired-lan@osuosl.org>;
 Mon, 24 May 2021 09:57:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5EE4402B8
 for <intel-wired-lan@osuosl.org>; Mon, 24 May 2021 09:57:46 +0000 (UTC)
IronPort-SDR: tOBNKkKGE66SFujjbrUvaz0t5dWpztREYODE9Gl+V/VIvI3NT5Ec2BjTLGvtEa47tlg11SkuHF
 n0s4ZAEEDBVw==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="223051861"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="223051861"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 02:57:45 -0700
IronPort-SDR: BbVoPETR/g5q/Y2y8HopCwQghW3fQkZyUR2lnjlNUlXxFEEcd5tk3mHWDZcE/rN8Q6BWqyBko6
 peigggHcLK1w==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="475786228"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 02:57:44 -0700
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20210510053612.14163-1-muhammad.husaini.zulkifli@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <fac887be-b481-c3a9-f6c9-a1dc58ed0abb@linux.intel.com>
Date: Mon, 24 May 2021 12:57:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210510053612.14163-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Enable HW VLAN Insertion and
 HW VLAN Stripping
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
Cc: mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/05/2021 08:36, Muhammad Husaini Zulkifli wrote:
> Add HW VLAN acceleration protocol handling. In case of HW VLAN tagging,
> we need that protocol available in the ndo_start_xmit(), so that it will be
> stored in a new fields in the skb.
> 
> HW offloading is set to OFF by default.
> Users are allow to turn on/off rx/tx HW vlan acceleration via ethtool.
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  1 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++
>   drivers/net/ethernet/intel/igc/igc_main.c    | 73 +++++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
>   4 files changed, 78 insertions(+), 2 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
