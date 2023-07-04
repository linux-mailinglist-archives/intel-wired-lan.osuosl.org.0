Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6903D7468F5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 07:29:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D15240946;
	Tue,  4 Jul 2023 05:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D15240946
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688448552;
	bh=LV0+EBfpy5ds0dyXXbzhvuSHv/8A4/YAbae9QzhwrZ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m4osoxKdZYKHsZ1Rx3lwnjq7rndXM1vHcC+ZDIy4PNvoFP3ZShNpLvcsk2f3FM2YS
	 4Z8+B0CxpGSKS18PU8pse/xoMdUMQcTDpO/R2A89Zx7wpRpN/yoZib66HLHNxf3pMK
	 bRGY5gugVQVXacrWTyQdwAy1c+Mdks1urDTfrvgad/jAoZoCTrqb/I8kQzkyUvpT6g
	 i8CLQABGk2h5ekjgmfp47AZt4vJK69bgQHmTVTSM2teaGpW5V8ArewhGckv2MlAm4Z
	 /xvDvdPv5OVKVTtYc/W3nF1CEvjWYyADxZACnUFDQL55mX7tJu4TdAUmFFnxcBVa5W
	 GiUJQbbzx//CQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8Q3vnBM9H6G; Tue,  4 Jul 2023 05:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB81340940;
	Tue,  4 Jul 2023 05:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB81340940
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C41791BF285
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 05:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A953B60B6C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 05:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A953B60B6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xSdTqdNNBJH8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 05:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1D6A60739
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1D6A60739
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 05:29:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="361899019"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="361899019"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 22:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="808794648"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="808794648"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.63])
 ([10.13.12.63])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 22:28:58 -0700
Message-ID: <a0f3166c-b520-d3db-6131-fb29809463a9@linux.intel.com>
Date: Tue, 4 Jul 2023 08:28:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Florian Kauer <florian.kauer@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
 <20230619100858.116286-4-florian.kauer@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230619100858.116286-4-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688448544; x=1719984544;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Oa4QuauqJ+8TcHeLgAPnDEQ9ZUhBWWVcqLElYpzmNJM=;
 b=IOfYJ16r2o+lJ5GatsgZSd+psAQ0uEflx/gtd2Gi8uCJbhz9W30a+k66
 bxoyZSz9sF7SZZxeVXnkGaum2tZfEh9r6fLt24Qxq+8dLQUmV94oBrkoz
 JdIGbBulJUTurgTAT4j3kXzcxKGbs2ZuNLaxJiw/kZrS8o1kqXdBEkMQN
 99dtrGlgWXxMEXmhMcJ6IAZSkoGCGtyWGsb/FRsKs+om3CXgAzQuAv7W9
 VHXv+EPEcpcXjV6FjKuaD0pEUP2R2gsi5Z82XnlGFfna7YVcSx1NHdonC
 iYZCgJ1A8nQbE8WWO5rDhfA3RbQ/4RDDM6hbsitKQ3Vahci7tJBC2LE8T
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IOfYJ16r
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/6] igc: Handle already
 enabled taprio offload for basetime 0
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/19/2023 13:08, Florian Kauer wrote:
> Since commit e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
> it is possible to enable taprio offload with a basetime of 0.
> However, the check if taprio offload is already enabled for i225
> (and thus -EALREADY should be returned for igc_save_qbv_schedule)
> still relied on adapter->base_time > 0.
> 
> This can be reproduced as follows:
> 
>      # TAPRIO offload (flags == 0x2) and base-time = 0
>      sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24 taprio \
> 	    num_tc 1 \
> 	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
> 	    queues 1@0 \
> 	    base-time 0 \
> 	    sched-entry S 01 300000 \
> 	    flags 0x2
> 
>      # The second call should fail with "Error: Device failed to setup taprio offload."
>      # But that only happens if base-time was != 0
>      sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24 taprio \
> 	    num_tc 1 \
> 	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
> 	    queues 1@0 \
> 	    base-time 0 \
> 	    sched-entry S 01 300000 \
> 	    flags 0x2
> 
> Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
