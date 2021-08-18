Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902BC3F0D29
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 23:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 402CA402C8;
	Wed, 18 Aug 2021 21:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QaBkghgpaW-X; Wed, 18 Aug 2021 21:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABAD6402DC;
	Wed, 18 Aug 2021 21:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9C161BF2C7
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7F7F60B85
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UuKhHRSBDwOP for <intel-wired-lan@osuosl.org>;
 Wed, 18 Aug 2021 21:10:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4060160654
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:10:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="203627958"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="203627958"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:10:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="488882717"
Received: from oavioz-mobl.ger.corp.intel.com (HELO [10.251.185.186])
 ([10.251.185.186])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:10:27 -0700
To: aravindhan.gunasekaran@intel.com, intel-wired-lan@osuosl.org
References: <1628520820-28907-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1628520820-28907-3-git-send-email-aravindhan.gunasekaran@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <bfe33b15-adb3-153a-927e-0e8bf2b536e8@linux.intel.com>
Date: Thu, 19 Aug 2021 00:10:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1628520820-28907-3-git-send-email-aravindhan.gunasekaran@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 2/3] igc: Simplify TSN
 flags handling
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
Cc: velmurugan.chenniyappan@intel.com, mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/9/2021 17:53, aravindhan.gunasekaran@intel.com wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> Separates the procedure done during reset from applying a
> configuration, knowing when the code is executing allow us to
> separate the better what changes the hardware state from what
> changes only the driver state.
> 
> Introduces a flag for bookkeeping the driver state of TSN
> features. When Qav and frame-preemption is also implemented
> this flag makes it easier to keep track on whether a TSN feature
> driver state is enabled or not though controller state changes,
> say,during a reset.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 +
>   drivers/net/ethernet/intel/igc/igc_main.c |  2 +-
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 65 ++++++++++++++++++-------------
>   drivers/net/ethernet/intel/igc/igc_tsn.h  |  1 +
>   4 files changed, 43 insertions(+), 27 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
