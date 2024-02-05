Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B78B849916
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 12:43:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A79F60FF1;
	Mon,  5 Feb 2024 11:43:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A79F60FF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707133404;
	bh=/asqOkBdcZneLp0Klp4WkubdP2DUDZrXIpl8e+GpaKo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ctg9GjTNP/kB1vjxDbLEElK6466fVr4KYVsRS2Q+nFH5kW77ERZ/vAdZIT1fKD3Tm
	 HZispTgVT8bAVNLtf6x/ejVDqZd6cxpglI2Hap8Rvp3QmxaZvVL5FclEQLtMqpm3br
	 lFho4TQgUD8Wb+qubkOF7/WmAL0rnz+ZUc0e6TAyH68iUp+bFtKbKZDrE85eavOYtx
	 ps4zrlJdu5+7eaKW+gE1rGeNI6MTQJt35MunLZobhgGfsk59wyupKTqvozIXYC88JG
	 d1o0LVsaq8kg9xHnPF6B9TrWxEV9EIsp53p6JolM2CYDUEF8cXfJ4WJXozaUNcMURb
	 qh95iebtDc/7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkLnP1c7yh8I; Mon,  5 Feb 2024 11:43:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3360E60FEF;
	Mon,  5 Feb 2024 11:43:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3360E60FEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3A6F1BF281
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A4C882C18
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A4C882C18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id no1MYP9EMj6V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 11:43:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7667382BFD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7667382BFD
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="395289"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="395289"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 03:43:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="1020773"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 03:43:12 -0800
Message-ID: <ca9f11d8-9b55-4983-a213-a53ecc6c06a3@linux.intel.com>
Date: Mon, 5 Feb 2024 13:43:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240124055700.818996-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240124055700.818996-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707133394; x=1738669394;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ycTG51Vg2rlrK++4clFl1BlnkqCAxB9RXnBZ73645PY=;
 b=e7X29rpcQyGDbRxUP9tUieqYVLiqaw6T4GI2cOdiqB9vifqUtPIB3C1C
 ImmGX8FbMQZ5Ns1/KBa4zrKdD6V1dgSgBMilDZKcG2c4qqe81LjZTACy0
 ivYZTMr5A4zXxF6u8c39sVE3R/V8c5LJ+4dBtO6KofDOkyyXvPlK4FsrN
 B4V1cni8P9FfZ7ezXxgZlNz0MQvj787hW97G0E/Znj/QiWO0OXEkmWqT4
 dSbVB7taLUkC3l8n5jFKExx/IvKjWZW/O6zFlf1AE7EZ/d8tDEbYvJA4K
 IvHBBWH0jhKZXBfnZUclJaP42HzWrfM+0X7Z1nVnTt6/EwVhLe/Cp7jfm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e7X29rpc
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Remove temporary
 workaround
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/24/2024 07:57, Sasha Neftin wrote:
> PHY_CONTROL register works as defined in the IEEE 802.3 specification.
> (IEEE 802.3-2008 22.2.4.1). Tide up the temporary workaround.
> 
> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_phy.c | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
