Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8497F7A75DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 10:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8951C612D3;
	Wed, 20 Sep 2023 08:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8951C612D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695198464;
	bh=0UTvK6dVFNJC2a9jE74psJJpZUTnZvpSisBkGS6CMZc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I/nnBx4bOaBdvqwle9Y1Q9dqaImBBuzfpVqmZuwvrF5QvXx0acmYeCg0M2x3nUQYm
	 tPjPMnabDDloBCVnuAGxeqRHDTMeiCCOJx0g/ips15OjzZ2RZpyNqMCA0If6tf8Tty
	 HSyNnVuxPYLBP0aMOmgnjQN3HKndzodP8+wjEkSCdYk19fVHEdm1JI/sd3RZ46DA9y
	 10JwEHs8lSqULdMm8y6UYkz6LCber/vCQGoZiKlBSFj1nZqbBS5Y6twc8hmu0X9v8B
	 vsHhnPMAB+3lK0Unn5vVSaPTS68YZmNmaVBgiS2eVmUoCF5giABKRz3EzSE8E698ZV
	 Htb7BfAG3CksA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pZE3aVmSEt-I; Wed, 20 Sep 2023 08:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FBFA612D7;
	Wed, 20 Sep 2023 08:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FBFA612D7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9AC1BF475
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 08:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC2F541DCD
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 08:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC2F541DCD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0MiowXbGsTqn for <intel-wired-lan@osuosl.org>;
 Wed, 20 Sep 2023 08:27:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC62141DC9
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 08:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC62141DC9
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370476831"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="370476831"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 01:27:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="775902663"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="775902663"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.192.216])
 ([10.214.192.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 01:27:32 -0700
Message-ID: <6da7388a-45f2-b705-af74-f493dc301b52@linux.intel.com>
Date: Wed, 20 Sep 2023 11:27:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695198456; x=1726734456;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mugEMfEi1I77BlKEzCqJcYcb+pIhWsiKW9tX8FiEGkA=;
 b=GjBFlg60e22fP6fKg3i8A7Wtl4+6TeNhgVnrM75PJ3uFt0Jf+hMTqsj8
 fgw35/9oUpxZIMAPSlSfFttDxIbThTA+wmFFSvazD1eWuTwcPtXy+Au8v
 Vm7415OMnIKhxZtpGvdH50HUbj5IzVPg9rZ5wQUdhwkWcu43APgiz4lpY
 6IcRDBh7LrvvdRnUWzhWwe5lUQxHJWM46v7PjNrK20w8361dsJXwVG0zu
 BWilKfwOFWoDjwbsg95eGAL/je1rdUoyemb2qtLBEJwD6v6ebchleQpXs
 1HEBA90e/EdjV1XvSN4CjdXOHUiB/lM0iVzYNtTaFBJd08YDCrUlL2SCO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GjBFlg60
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igc: Expose tx-usecs
 coalesce setting to user
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
Cc: sasha.neftin@intel.com, bcreeley@amd.com, netdev@vger.kernel.org,
 edumazet@google.com, husainizulkifli@gmail.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/8/2023 11:17, Muhammad Husaini Zulkifli wrote:
> When users attempt to obtain the coalesce setting using the
> ethtool command, current code always returns 0 for tx-usecs.
> This is because I225/6 always uses a queue pair setting, hence
> tx_coalesce_usecs does not return a value during the
> igc_ethtool_get_coalesce() callback process. The pair queue
> condition checking in igc_ethtool_get_coalesce() is removed by
> this patch so that the user gets information of the value of tx-usecs.
> 
> Even if i225/6 is using queue pair setting, there is no harm in
> notifying the user of the tx-usecs. The implementation of the current
> code may have previously been a copy of the legacy code i210.
> Since I225 has the queue pair setting enabled, tx-usecs will always adhere
> to the user-set rx-usecs value. An error message will appear when the user
> attempts to set the tx-usecs value for the input parameters because,
> by default, they should only set the rx-usecs value.
> 
> This patch also adds the helper function to get the
> previous rx coalesce value similar to tx coalesce.
> 
> How to test:
> User can get the coalesce value using ethtool command.
> 
> Example command:
> Get: ethtool -c <interface>
> 
> Previous output:
> 
> rx-usecs: 3
> rx-frames: n/a
> rx-usecs-irq: n/a
> rx-frames-irq: n/a
> 
> tx-usecs: 0
> tx-frames: n/a
> tx-usecs-irq: n/a
> tx-frames-irq: n/a
> 
> New output:
> 
> rx-usecs: 3
> rx-frames: n/a
> rx-usecs-irq: n/a
> rx-frames-irq: n/a
> 
> tx-usecs: 3
> tx-frames: n/a
> tx-usecs-irq: n/a
> tx-frames-irq: n/a
> 
> Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Tested-by: Naama Meir <naamax.meir@linux.intel.com>
> ---
> V4 -> V5:
> - Squash patch for set/get together as recommended by Jakub.
> - Fix unstabilize value when user insert both tx and rx params
> together.
> - Add error message for unsupported config.
> 
> V3 -> V4:
> - Implement the helper function, as recommended by Brett Creely.
> - Fix typo in cover letter.
> 
> V2 -> V3:
> - Refactor the code, as Simon suggested, to make it more readable.
> 
> V1 -> V2:
> - Split the patch file into two, like Anthony suggested.
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 31 ++++++++++++--------
>   1 file changed, 19 insertions(+), 12 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
