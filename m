Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9C75F21B2
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 09:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B087860B3D;
	Sun,  2 Oct 2022 07:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B087860B3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664695271;
	bh=+frl9UjL09+cIav5YPVlPZBKNU1/Cqqiq1FIaLQQ6N4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gp9FHvEgSh7au0Z3EXTBoJpejDSanKNSpG4vcS6TffyFfkc7tz8iDC//suXQPjd51
	 g3hTdKxHR33bmKf370V4gsf+SsYvV5IstquLk+4q430Pmpkztguz/x0dTrQwJ09Fo7
	 vAvhTmJ10kic5iF2iWzJHsV1mJxrM8e2SKzBB0HrU5X9WAv0ZPZUiYOD04qMGZufBw
	 gWGDtryxWT1hNCvuqUlVuo4OEEg/DNdgwYDaOby3bnwCzm7i+4NzHGpf4G6W8DiRFa
	 vMcSTzL5Mn0dJCo3UEOBM9OSChjHMjw0d8s/X0cQGm5TY/k1vSKcg2gVbiIJY4uQYv
	 llBJGukBuIJGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7skO9YEXTW9C; Sun,  2 Oct 2022 07:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8543B60B12;
	Sun,  2 Oct 2022 07:21:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8543B60B12
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6790A1BF403
 for <intel-wired-lan@osuosl.org>; Sun,  2 Oct 2022 07:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36170409FC
 for <intel-wired-lan@osuosl.org>; Sun,  2 Oct 2022 07:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36170409FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6RJ376H5yQ2 for <intel-wired-lan@osuosl.org>;
 Sun,  2 Oct 2022 07:21:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06497409D0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06497409D0
 for <intel-wired-lan@osuosl.org>; Sun,  2 Oct 2022 07:21:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="289612384"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="289612384"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 00:21:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="952012464"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="952012464"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.5])
 ([10.13.12.5])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 00:21:01 -0700
Message-ID: <71edf233-f098-aa02-aadb-05ff59db9b8c@linux.intel.com>
Date: Sun, 2 Oct 2022 10:20:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664695264; x=1696231264;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gsh7RHxIFLlhywdioMW3BlBzzHE6AvClzf31ayRq0wM=;
 b=FXW+bvxJcu9OEJApkgYqxoF1x/m6N9CoKgGq3V4tb5uSaiPeTaHrIkHv
 KVgzvIzact0yrw+0YxdAngEROVAbblBt6ouZZly0JvV9R10P7OVpQEhAL
 Hv73xzNyTZ4f9FbhKPqjHMnpjaKYHQRI+0BdIyW1SYOdBpL4htfwISdca
 v1+UncMK48Lwv8omZ2NOYmvnU9Yy5lCO9eBOFjjtQkJhNn4jLDDO/7EW4
 f+jyV6yG2p2Bm9Om8bUVb3s9Ubu5vbdxvsJxn+GlXnOjmBaUGw0Kt9xC7
 9Xoyfx11U5OWQQC7AZl1EL6mhIYaN4izyGlv8CiPMq/uIq6Y+z4kl6Bi7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FXW+bvxJ
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: Correct the launchtime offset
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
Cc: pmenzel@molgen.mpg.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/21/2022 05:49, Muhammad Husaini Zulkifli wrote:
> The launchtime offset should be corrected according to sections 7.5.2.6
> Transmit Scheduling Latency of the Intel Ethernet I225/I226 Software
> User Manual.
> 
> Software can compensate the latency between the transmission scheduling
> and the time that packet is transmitted to the network by setting this
> GTxOffset register. Without setting this register, there may be a
> significant delay between the packet scheduling and the network point.
> 
> This patch helps to reduce the latency for each of the link speed.
> 
> Before:
> 
> 10Mbps   : 11000 - 13800 nanosecond
> 100Mbps  : 1300 - 1700 nanosecond
> 1000Mbps : 190 - 600 nanosecond
> 2500Mbps : 1400 - 1700 nanosecond
> 
> After:
> 
> 10Mbps   : less than 750 nanosecond
> 100Mbps  : less than 192 nanosecond
> 1000Mbps : less than 128 nanosecond
> 2500Mbps : less than 128 nanosecond
> 
> Test Setup:
> 
> Talker : Use l2_tai.c to generate the launchtime into packet payload.
> Listener: Use timedump.c to compute the delta between packet arrival and
> LaunchTime packet payload.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  9 ++++++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 30 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
>   5 files changed, 47 insertions(+)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
