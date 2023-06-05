Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF4A72209D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 10:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77DA88227C;
	Mon,  5 Jun 2023 08:10:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77DA88227C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685952655;
	bh=ewU+ctiD7xwmbGcuvQ7VWuEW0m54ateRPHs2Z5fNHN8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KWTwBIGFiVXb3wKmWiAGthyQRyikrOglSgJMru817qXLhUxmX/v9C17qNEVRjNPf2
	 2ymQ0e4/yw0fMynZBsI4l3GyHpMxnBhcd+WrIte5eE0FPG+tdSHgWTbps8Fx/t2gN5
	 a6LPVaTNCdcUeRHLxM6xumAVlKWO4hZRF8VOgPVsm4TQxtaj8icg/3HDE4DsCRbIv7
	 1XfI4oFothJA9qQjamslvEaoODqrn8Xk472SOxTUsAPHvkOHSIU6RnAjXStqeUXcYm
	 LubVMYaZVp+lxFVl13JKyQpPGZNZ0v2egxPFH2Lm0eiqmSnN5euPxbWb8bsE54pqrZ
	 fZZiUM26UrnWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jo4Bvl46QNrN; Mon,  5 Jun 2023 08:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E9F88224B;
	Mon,  5 Jun 2023 08:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E9F88224B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F303F1BF4E7
 for <intel-wired-lan@osuosl.org>; Mon,  5 Jun 2023 08:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D660B417BC
 for <intel-wired-lan@osuosl.org>; Mon,  5 Jun 2023 08:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D660B417BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id So4_jjfE1X1y for <intel-wired-lan@osuosl.org>;
 Mon,  5 Jun 2023 08:10:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9034417BA
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9034417BA
 for <intel-wired-lan@osuosl.org>; Mon,  5 Jun 2023 08:10:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="359623673"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="359623673"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 01:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="658985060"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="658985060"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.3])
 ([10.13.12.3])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 01:10:46 -0700
Message-ID: <87e5cfd8-c069-85a9-1a62-0f0335f7eef2@linux.intel.com>
Date: Mon, 5 Jun 2023 11:10:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230517001812.8101-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230517001812.8101-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685952648; x=1717488648;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=QYN1WYP2JfpfSu8YZp0Yl+Q7Ets2Jvk2mIh003bqlxU=;
 b=NzybZieYcPdGZrDr1aR2Sup6l7LHBa5Ke1e9SHetsydEM6uNcgMLydA+
 798tRDFgdhZ5y6MMNEYCSBMa/NQw0xTnqa1VaHkxqNgYmjx18idWS/Ge5
 v13AokFkjym9EBaie6shy1Di2ZQSy+l5s7538nzTb8ZVf6ldI/0sGASSk
 5ENgzAaMzvH8HUcjHcGn24RGDxWcI/Xd+5tpDT2s9abxY+UuTdyd6jDfR
 kMRDbJ1H8K5wnA0s8V+6ivf1M2XLZcB1r7MmcXRIcdnjS9KK7PmE1qEJP
 fQpx2tGyLs/5JZcI8Oi8X8b9plOf9r1ZmN9g3Ic9kMrJO2JsX1KyYcpPw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NzybZieY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Remove delay during
 TX ring configuration
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

On 5/17/2023 03:18, Muhammad Husaini Zulkifli wrote:
> Remove unnecessary delay during the TX ring configuration.
> This will cause delay, especially during link down and
> link up activity.
> 
> Furthermore, old SKUs like as I225 will call the reset_adapter
> to reset the controller during TSN mode Gate Control List (GCL)
> setting. This will add more time to the configuration of the
> real-time use case.
> 
> It doesn't mentioned about this delay in the Software User Manual.
> It might have been ported from legacy code I210 in the past.
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V1 -> V2: Update commit message.
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>   1 file changed, 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
