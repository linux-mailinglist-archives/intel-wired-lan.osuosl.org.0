Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 440BD626E0D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Nov 2022 08:31:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A80260B9C;
	Sun, 13 Nov 2022 07:31:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A80260B9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668324695;
	bh=SldxSrWmXzq5pEQOuveOE2siHF5VVIynnPtd5f0BMio=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kJV5AUf/ZKthW1YVX3amtIcjclDHfYNGl2tlJWNE0VwXIPO52X96UX7O++oH4hFJk
	 OZhc+Lm2K20KgaUyQ799pSX6YolSRLjOWbtLnx2kdxtMVYU0MEghpMsculhzdhPTJJ
	 /cfnUJjrnQkuQoHMDpWW20pQMZyCIZjFYW79muOjxcloAlVmHX1KXKexPTd8QHhDps
	 VKeD5Rwqs81SjgnZPAk+TLIMZU05wX3V4aFhOOYqfBIi5qOWXWnk1MuuWiv+poiyxo
	 T5/owRfNqWGTlw/veudJbPHkeXN9YP1ThaOfxlmeA2CchCpB7/+Tn8CD7wx5fZRMXX
	 3wJSE7wrbGPDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AqDs9bkAm3Zu; Sun, 13 Nov 2022 07:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EBE160AD7;
	Sun, 13 Nov 2022 07:31:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EBE160AD7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D076C1BF4E5
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B84A560AD7
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:31:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B84A560AD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-Tk6sJK7SKu for <intel-wired-lan@osuosl.org>;
 Sun, 13 Nov 2022 07:31:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F4CE60692
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F4CE60692
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:31:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="338568926"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="338568926"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:31:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="706944125"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="706944125"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:31:27 -0800
Message-ID: <0d2d09e5-5e43-db4d-75e5-f4a3e732256e@linux.intel.com>
Date: Sun, 13 Nov 2022 09:31:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
 <20221030045324.25207-4-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221030045324.25207-4-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668324689; x=1699860689;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4TLKiC/8i9ixufqDRz6lK7vui2y5+R1Xvad/66MTiE0=;
 b=gtJuK33/D/jkODQc65Hb9FgcOzUIiuhtsYQJCMteq3HPwlKgAt9Nibjj
 FtzAtK8ub04cgQ8GC85cSO7n2PZB7w4F6sKlB5DY6gVpeo9bR+TtAm8vA
 ZaAXCWxsunqaEUm60NozPsAQYWB9/2K4t0S8RCC2ZloJbhaWUqhuTbZy/
 FgMJl96Sq3ecMuxmaXSptvOHcU61r2ZA+dgYUpb/ss3iEoiBajClw5gJW
 ocIOfFWFVMAq6hYrrf1eSEDi/LxK3YSsi47QE0pJbWkBvd7/wi7Vx8cxB
 3AiIJb5LAGeJevTq1sbeHNs0ccm1Z3MZ0koN0qB783LhZTjFwmaunoxtt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gtJuK33/
Subject: Re: [Intel-wired-lan] [PATCH 3/5] igc: recalculate Qbv end_time by
 considering cycle time
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
Cc: tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/30/2022 06:53, Muhammad Husaini Zulkifli wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Qbv users can specify a cycle time that is not equal to the total GCL
> intervals. Hence, recalculation is necessary here to exclude the time
> interval that exceeds the cycle time. As those GCL which exceeds the
> cycle time will be truncated.
> 
> According to IEEE Std. 802.1Q-2018 section 8.6.9.2, once the end of
> the list is reached, it will switch to the END_OF_CYCLE state and
> leave the gates in the same state until the next cycle is started.
> 
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
