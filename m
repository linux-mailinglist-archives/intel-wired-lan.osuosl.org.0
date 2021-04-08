Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F70D35804F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 12:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F07360DA7;
	Thu,  8 Apr 2021 10:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1n3Y42uyrUKV; Thu,  8 Apr 2021 10:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 556AB60A4F;
	Thu,  8 Apr 2021 10:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4E541BF3DB
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93B4E84DA1
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LEoTfBYQFTIL for <intel-wired-lan@osuosl.org>;
 Thu,  8 Apr 2021 10:09:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBACC84D9F
 for <intel-wired-lan@osuosl.org>; Thu,  8 Apr 2021 10:09:49 +0000 (UTC)
IronPort-SDR: jKIbbkD2INiODtp/vHWxqPlHBsxXW+dlFMJUI4IwR6sGezvF+ApPNxyGn1lcISOmlDe6QV9SYm
 PxZNLEaVbp5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193047504"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="193047504"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:09:49 -0700
IronPort-SDR: bslVMiSp963waGO5KBiXlubZTwec8qdvhELSsFnQazSlHCJnyR6fBP2kMk2wpdKdgYD2VynlZ9
 +rcMcW0ioe7w==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="422172792"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 03:09:47 -0700
To: Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@osuosl.org
References: <20210226002308.2348-1-jithu.joseph@intel.com>
 <20210226002308.2348-4-jithu.joseph@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <0b43ffa7-2c02-38b5-cd55-ab4f4b2f80a6@linux.intel.com>
Date: Thu, 8 Apr 2021 13:09:45 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210226002308.2348-4-jithu.joseph@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 3/9] igc: Refactor
 igc_clean_rx_ring()
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
> Refactor igc_clean_rx_ring() helper, preparing the code for AF_XDP
> zero-copy support which is added by upcoming patches.
> 
> The refactor consists of encapsulating page-shared specific code into
> its own helper, leaving common code that will be shared by both
> page-shared and xsk pool in igc_clean_rx_ring().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 23 ++++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
