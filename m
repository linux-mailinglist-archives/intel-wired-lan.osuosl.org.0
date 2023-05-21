Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AAF70ACC8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 May 2023 09:24:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74463404EC;
	Sun, 21 May 2023 07:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74463404EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684653864;
	bh=kBa5P2LVBDKxTpW0tx5ZchREOXXla9gT/htQScIrKP0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qRQlhZTdKIJHzaTRo+EPB7/AeEXBYIcMGtQSRSJ+MUQKolzZ5Y0JKB5wcRcRhrddE
	 Df0uzTQff4TNhjCjxh4VQVsX19AdiUtukDiVDnqCml362eodLaasc1m3+Sh/IdNF0N
	 dq+/LvksT2sNoFpY2c8dsz+x4gBqeevam9ir/K91Gdv6NMm/r0fwGyWU/qXB0nq1t3
	 EgA71ljG+hSvlCezE8SMvfrN7vLVXE6shDjz4rs0lKy3ebcyWvdkax47KbvBB/Jb1N
	 sVgV+O8eh2IF2qmZMhzxOHJVo+bdMb06Qcdigc/jtH8XJ5Ud9yDgtyjG4C0vVpT97I
	 CwyZmb1jC9dfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20qzyc3jlvZ0; Sun, 21 May 2023 07:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CCC7404E9;
	Sun, 21 May 2023 07:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CCC7404E9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 817311BF3D9
 for <intel-wired-lan@osuosl.org>; Sun, 21 May 2023 07:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5119941879
 for <intel-wired-lan@osuosl.org>; Sun, 21 May 2023 07:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5119941879
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cteC0QT4cNBO for <intel-wired-lan@osuosl.org>;
 Sun, 21 May 2023 07:24:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C617417DA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C617417DA
 for <intel-wired-lan@osuosl.org>; Sun, 21 May 2023 07:24:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10716"; a="355028294"
X-IronPort-AV: E=Sophos;i="6.00,181,1681196400"; d="scan'208";a="355028294"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2023 00:24:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10716"; a="768134470"
X-IronPort-AV: E=Sophos;i="6.00,181,1681196400"; d="scan'208";a="768134470"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.21])
 ([10.13.12.21])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2023 00:24:13 -0700
Message-ID: <1d978ef4-d4f0-21de-28af-cb1099d8c30f@linux.intel.com>
Date: Sun, 21 May 2023 10:23:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230515060336.16272-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230515060336.16272-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684653856; x=1716189856;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LpqHIxwehoQLObSs0Meb/jIpYKxHNEiQpPi3Pv9gepM=;
 b=DrUpHbsjTWEGMu+b/T8Q5/Jn+5m2Z2Ft9jKxnw/v11Aw+sH2ix3pXO3A
 7S/zcEu16a4k0QTvGwR/ADtYCkZa9oV4UbCgR5LrY96W0gTZIzfjVwzKx
 nO1T2K9pAisx0HiNao6wPutoycvfXCwsxPUIy14maxtoF3WJ0HW9i9gWI
 qz+OtCCCt3abX1u+xGPh0CZjIi9Kc+RxPn20/WYx7k9W4k2xJLcLneTIC
 0F7SExobPHWHygwklkTsR1PnbD8KJ4FuTkFTb/kW8PeFzfKd1wFaiJB7u
 5tf8W9DvfOvvWpjlcrIAi39j3/oO/QNQgB5I9cALGPsl+n4bkClCsQYcx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DrUpHbsj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Add condition for
 qbv_config_change_errors counter
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
Cc: anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/15/2023 09:03, Muhammad Husaini Zulkifli wrote:
> Add condition to increase the qbv counter during taprio qbv
> configuration only.
> 
> There might be a case when TC already been setup then user configure
> the ETF/CBS qdisc and this counter will increase if no condition above.
> 
> Fixes: ae4fe4698300 ("igc: Add qbv_config_change_errors counter")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 1 +
>   3 files changed, 4 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
