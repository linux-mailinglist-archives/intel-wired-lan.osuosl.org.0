Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D47605BDB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 12:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8346D842A1;
	Thu, 20 Oct 2022 10:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8346D842A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666260459;
	bh=V3HxYpzc3Q5mTkU+fgL2YbxQJvY2GEThIf2No7Nx9Tg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=71dWuACPo/8I6PsS6NuQjElIda0jjxIVsrNaEleaG/BkSh7A6dagr5pCZQMMRpGV8
	 zGg7xzKFpV9C28E6Fj75ZkdsGlfnV3/xv54rMF/Vvr2VyyBu5q6Rv2e1Q1GUdS5m5a
	 UcZqAlp2cuiNBtHDiZWwVq4Y31jM1JGXDQorsSJ4gEoCBvSWtCBMaVvFOhKglyLNIj
	 YKBL/DzAzZfkGgZdqYt2oDVhK/jN99eZdlh5Wr9RpqnkYFGsUQHZh9bILrENUajMVl
	 3LZOX5jwIvzDMZIz8gxR/oo1++xGmCk+JoBhnb4IL3GWbbklbKZCKSUYYiQWfQQdGj
	 tt4gas2BqLhQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UggMyoUm4Eus; Thu, 20 Oct 2022 10:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FDC48427D;
	Thu, 20 Oct 2022 10:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FDC48427D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F45A1BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 10:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0989584283
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 10:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0989584283
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlkHzjSap_pv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 10:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 659728427D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 659728427D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 10:07:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="304281542"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="304281542"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:07:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="580819679"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="580819679"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.255])
 ([10.13.11.255])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:07:30 -0700
Message-ID: <c130cbd4-cd4f-eed7-71a4-0c460f398d68@linux.intel.com>
Date: Thu, 20 Oct 2022 13:07:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220921075937.1117880-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220921075937.1117880-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666260452; x=1697796452;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Vd/zM7MQLc0Xr/EMTkUyZQ7SiGk/aPbBPEFbV6qGMCU=;
 b=UpkSUYs6NVYYOQ80nd0d9K+smoPp2rwQuxvONoiMX+qEy+f9A23dT78z
 y62TTDyZUMtHoK48aPQBycjhZRukrPxniB5CF+dpua9Xgi1lYDbtQPzv9
 7NKcO5S8CACVnDCWJpjuU7WTJgiQvyhm9nSNkEGOb8OsgQlyl88jNGp3V
 60eJPHysbLYq8K0bXU6WxiLTgjNpoyZ2qhmZAcMLNUZ7MK2dNjFsZBOfR
 irHqmn1BNAGuzfI8HJNzx0wieb7gjuqZ1WxbyRDAfC3iegkLbUfV/nYdP
 ytV2DHN67x23RxjQ8z0ux2ndg2PRqJNWdVf/67g1pvus8Fr+di4UZfB9b
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UpkSUYs6
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add e1000e trace module
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

On 9/21/2022 10:59, Sasha Neftin wrote:
> Add tracepoints to the driver via a new file e1000e_trace.h and some new
> trace calls added in interesting places in the driver. Add some tracing
> for s0ix flows to help in a debug of shared resources with the CSME
> firmware. The idea here is that tracepoints have such low performance cost
> when disabled that we can leave these in the upstream driver.
> 
> Performance not affected, and this can be very useful for debugging and
> adding new trace events to paths in the future.
> 
> Usage:
> echo "e1000e_trace:*" > /sys/kernel/debug/tracing/set_event
> echo 1 > /sys/kernel/debug/tracing/events/e1000e_trace/enable
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/Makefile    |  3 ++
>   .../net/ethernet/intel/e1000e/e1000e_trace.h  | 42 +++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c    |  4 ++
>   3 files changed, 49 insertions(+)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
