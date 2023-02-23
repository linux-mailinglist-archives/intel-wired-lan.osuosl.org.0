Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD5F6A0289
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 06:48:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05BDF401B3;
	Thu, 23 Feb 2023 05:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05BDF401B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677131280;
	bh=vrAAv8eP5ijaiZbGeBW4disX/fo7zuQGjTQhVaTCU7Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n2iQ/MEx9Tyzh0H/QvzOH6KD3X5UTek/qxP+DYy8tqlFbNKdv2OUQ1jmQ1I3TqhOW
	 KsseAHrsG5GDAUDx3Van4dDrxV3oRCqI6xDp56tGIZVEsL8QWT7KHGngOVbnsETt4c
	 DFXfVHzVFBnXveyWfSlJwqq72r6pa3GFoJsbKX4EN+iCUvqv2xlSGcfmwWDnLFqJTP
	 Uzg0GR9hIlAia/4FN0+NXWCzNBL4p7/D3toX9TDhhPi2tnFeQZEu7dtJe6bhgrJe9M
	 1bUkUjxd+MpcKSjB8TdyseJ35HeiVBSAcHvytmRu8x7J+tP5sHgnk8BAc/DDTx4xOB
	 wmvkIr/bqJkIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IMZPDHg-M6tB; Thu, 23 Feb 2023 05:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A664B40181;
	Thu, 23 Feb 2023 05:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A664B40181
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E99331BF844
 for <intel-wired-lan@osuosl.org>; Thu, 23 Feb 2023 05:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C15584199A
 for <intel-wired-lan@osuosl.org>; Thu, 23 Feb 2023 05:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C15584199A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrwB-A7UuiQY for <intel-wired-lan@osuosl.org>;
 Thu, 23 Feb 2023 05:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB2B141953
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB2B141953
 for <intel-wired-lan@osuosl.org>; Thu, 23 Feb 2023 05:47:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="395603064"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="395603064"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 21:47:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="741136680"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="741136680"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.114])
 ([10.13.12.114])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 21:47:45 -0800
Message-ID: <a87701b4-4b77-3b03-38f0-3c73f5573b8f@linux.intel.com>
Date: Thu, 23 Feb 2023 07:47:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230216011624.14022-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230216011624.14022-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677131269; x=1708667269;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rLPwR9WXt2IVWdEZpVT1ZBpKuqvFL61GJDE2FeBc/f0=;
 b=mselwhH+AetWKs8Hizh3egjg1lP3jpS09y+30urRj4a5hFWPvoXRenXF
 A7Yi/jG7+mnSv3QKF7zN/wNqzQh3vLUUroDDJkbuEwuXzI/kYe9OEdufs
 nOvWQuJ7m0skUBzV9QuXghs1MtLorYoSlXUUPY23N7Lj/FoeiC/zUwp+7
 N1k8aQvzY5s2D1CrkXtC6tpD1HPZP9eWqOc0LcqCLXOzypmWQQqo34Ryo
 NX6klWVTufznFMLaodRvmQOtEzWxk3gfu7nh5+gl7efmDABMa3T3ftsMQ
 Up4G//V7d4HtTsl+7u9Nl7d92boQ50SaLx3r4vCp2FLoq2HfSGPQc/jMd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mselwhH+
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] igc: offload queue max
 SDU from tc-taprio
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
Cc: tee.min.tan@linux.intel.com, leon@kernel.org, netdev@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/16/2023 03:16, Muhammad Husaini Zulkifli wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Add support for configuring the max SDU for each Tx queue.
> If not specified, keep the default.
> 
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V4 -> V5: Rework based on Jakub's comment.
> V3 -> V4: Rebase to the latest tree as per requested by Anthony.
> V2 -> V3: Rework based on Leon Romanovsky's comment.
> V1 -> V2: Rework based on Vinicius's comment.
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 +
>   drivers/net/ethernet/intel/igc/igc_hw.h   |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++++++++++---
>   3 files changed, 31 insertions(+), 4 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
