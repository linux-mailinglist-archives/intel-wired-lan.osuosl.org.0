Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9150F3F0D2D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 23:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 249B860BDD;
	Wed, 18 Aug 2021 21:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-bkWPQVw_4t; Wed, 18 Aug 2021 21:11:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 964E460BDF;
	Wed, 18 Aug 2021 21:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA6A21BF2C7
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B268F402DC
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ctcsa_7mXdrW for <intel-wired-lan@osuosl.org>;
 Wed, 18 Aug 2021 21:11:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 737C9402C8
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:11:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="238538530"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="238538530"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:11:27 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="488882899"
Received: from oavioz-mobl.ger.corp.intel.com (HELO [10.251.185.186])
 ([10.251.185.186])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:11:26 -0700
To: aravindhan.gunasekaran@intel.com, intel-wired-lan@osuosl.org
References: <1628520820-28907-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1628520820-28907-4-git-send-email-aravindhan.gunasekaran@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <101a69fe-25e7-f33c-01f5-40294332c586@linux.intel.com>
Date: Thu, 19 Aug 2021 00:11:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1628520820-28907-4-git-send-email-aravindhan.gunasekaran@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 3/3] igc: Add support
 for CBS offloading
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
> From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> 
> Implemented support for Credit-based shaper(CBS) Qdisc hardware
> offload mode in the driver. There are two sets of IEEE802.1Qav
> (CBS) HW logic in i225 controller and this patch supports
> enabling them in the top two priority TX queues.
> 
> Driver implemented as recommended by Foxville External
> Architecture Specification v0.993. Idleslope and Hi-credit are
> the CBS tunable parameters for i225 NIC, programmed in TQAVCC
> and TQAVHC registers respectively.
> 
> In-order for IEEE802.1Qav (CBS) algorithm to work as intended
> and provide BW reservation CBS should be enabled in highest
> priority queue first. If we enable CBS on any of low priority
> queues, the traffic in high priority queue does not allow low
> priority queue to be selected for transmission and bandwidth
> reservation is not guaranteed.
> 
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  11 ++-
>   drivers/net/ethernet/intel/igc/igc_defines.h |   8 +++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  71 ++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 103 +++++++++++++++++++++++++++
>   5 files changed, 195 insertions(+), 1 deletion(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
