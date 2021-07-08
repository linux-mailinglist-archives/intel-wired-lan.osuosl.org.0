Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 418253BF91F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 13:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A54C60618;
	Thu,  8 Jul 2021 11:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPxx1T6lGRC1; Thu,  8 Jul 2021 11:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF94B600C5;
	Thu,  8 Jul 2021 11:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F11921BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 11:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC82C8249C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 11:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqsSy0W2PtY3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jul 2021 11:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A00F82446
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 11:37:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="209306607"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="209306607"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 04:37:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487520164"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.13.12.119])
 ([10.13.12.119])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 04:37:43 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210629044332.3491232-1-vinicius.gomes@intel.com>
 <20210629044332.3491232-4-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <daea1976-d970-f4a8-7f77-64b37cc7ded7@linux.intel.com>
Date: Thu, 8 Jul 2021 14:37:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210629044332.3491232-4-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/5] igc: Allow for Flex
 Filters to be installed
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
Cc: kurt@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/29/2021 07:43, Vinicius Costa Gomes wrote:
> Allows Flex Filters to be installed.
> 
> The previous restriction to the types of filters that can be installed
> can now be lifted.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
