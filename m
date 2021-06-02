Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22293985BF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jun 2021 11:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F914400FE;
	Wed,  2 Jun 2021 09:56:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FIQ8ywZlClCg; Wed,  2 Jun 2021 09:56:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBE8240200;
	Wed,  2 Jun 2021 09:56:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66ADC1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 09:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5411983388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 09:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 06X-IHeRtqjl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jun 2021 09:56:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3519E832A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 09:56:32 +0000 (UTC)
IronPort-SDR: CuIC5usmrTzoz39YRhee88IHQewRRG1EjHMFSHkthHOdSCNuZKLbdPHzrBmWiFRPbtrvrOsJkm
 Llu7mcIKDxvw==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="203745668"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="203745668"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 02:56:11 -0700
IronPort-SDR: TrFo+hMv1XQI3ofexshnQt9SWmuAUBFB7UzHNXbIimatbhdJzeOnIu/TQ1MA44ZAUX1UptTLuN
 qdzraq4A5f9g==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="479643991"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 02:56:10 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20210524060901.3622163-1-sasha.neftin@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <c855ba1c-dd34-d021-3910-f2a3b3cddc32@linux.intel.com>
Date: Wed, 2 Jun 2021 12:56:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210524060901.3622163-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Indentation fixes
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 24/05/2021 09:09, Sasha Neftin wrote:
> Minor fix of indentation in igc_defines.h
> 
> Fixes: 87938851b6efb ("igc: enable auxiliary PHC functions for the i225")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
