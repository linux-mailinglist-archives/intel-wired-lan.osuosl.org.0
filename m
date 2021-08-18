Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BAC3F0D25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 23:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5893F402C8;
	Wed, 18 Aug 2021 21:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjS0LTpdu9h8; Wed, 18 Aug 2021 21:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEE0D402DC;
	Wed, 18 Aug 2021 21:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 367091BF2C7
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2539080D18
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9KdVk53Fcg7 for <intel-wired-lan@osuosl.org>;
 Wed, 18 Aug 2021 21:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0FBC80D0E
 for <intel-wired-lan@osuosl.org>; Wed, 18 Aug 2021 21:09:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="196688258"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="196688258"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:09:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="488882424"
Received: from oavioz-mobl.ger.corp.intel.com (HELO [10.251.185.186])
 ([10.251.185.186])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:09:19 -0700
To: aravindhan.gunasekaran@intel.com, intel-wired-lan@osuosl.org
References: <1628520820-28907-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1628520820-28907-2-git-send-email-aravindhan.gunasekaran@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <02a5627b-7f03-2578-c853-aba58d327cfa@linux.intel.com>
Date: Thu, 19 Aug 2021 00:09:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1628520820-28907-2-git-send-email-aravindhan.gunasekaran@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 1/3] igc: Use default
 cycle 'start' and 'end' values for queues
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
> Sets default values for each queue cycle start and cycle end.
> This allows some simplification in the handling of these
> configurations as most TSN features in i225 require a cycle
> to be configured.
> 
> In i225, cycle start and end time is required to be programmed
> for CBS to work properly.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 37 ++++++++++++++++++-------------
>   drivers/net/ethernet/intel/igc/igc_tsn.c  |  6 -----
>   2 files changed, 21 insertions(+), 22 deletions(-)
> 

Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
