Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FEA3AE91F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 14:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EC1682AF8;
	Mon, 21 Jun 2021 12:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lS7zX5hiEpQl; Mon, 21 Jun 2021 12:33:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 401D082C2E;
	Mon, 21 Jun 2021 12:33:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A0BD1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1442682C2E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AJhOEOzvIpsW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 12:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F19F382AF8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:33:22 +0000 (UTC)
IronPort-SDR: ce/A7t1bVbEV1INYbdT+A/rWDlvArhRwfsGO/NluHVVhr9lU798EIb12kSByzWWUTovIrXckNj
 +EL4jKBMtUlQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="194142743"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="194142743"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:33:19 -0700
IronPort-SDR: pFFHeuYCf38ZL2B3M+Ir1Qs1aoIUNOPaHwZtyvRUT9NtCxnc2wwAfJ980lU4ngQmogeFbKwmNF
 SxxRPPfTalMA==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486472293"
Received: from unknown (HELO [10.185.172.254]) ([10.185.172.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:33:17 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-5-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <01422d78-7828-8782-e186-f94596c95ddd@linux.intel.com>
Date: Mon, 21 Jun 2021 15:33:15 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210611003924.492853-5-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 4/5] igc: Make flex
 filter more flexible
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/11/2021 03:39, Vinicius Costa Gomes wrote:
> From: Kurt Kanzenbach <kurt@linutronix.de>
> 
> Currently flex filters are only used for filters containing user data.
> However, it makes sense to utilize them also for filters having
> multiple conditions, because that's not supported by the driver at the
> moment. Add it.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  1 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 27 ++++++++++++--------
>   drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++------
>   3 files changed, 22 insertions(+), 20 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
