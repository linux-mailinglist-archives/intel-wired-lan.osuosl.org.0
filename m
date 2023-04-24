Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5666EC664
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 08:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B03CE408DD;
	Mon, 24 Apr 2023 06:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B03CE408DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682318368;
	bh=pTZddhxsRtsXxBy4Qweh0RQ3L+a+jTtVxVLynPomuq8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v0cospoVQxXIBeNVYYGIKk6xPjg8iFtP51VSJJ77As4Rx0tvKzWpfG0FgXOX7lzj+
	 n2k/89RYEaJ+sixVb+pDt2ewEHUoQzyZcYAK1mzt425KPzuzWr0FKHSXm2opvnorRa
	 MrNOzspUxw+5a3t5bIsUlxuc5P7q5/ZgURYpRA22LY6SzyEYYXzwM5l336pnTf1foN
	 QsWYR6SfaExcJXt3uBpp8IHYWj4Rjk+RpyR0s7lsWBCYy5O5autgg2g6dPvHJ+MmaH
	 T/j+aL3OcCWqPV7OWqcPQZArZdkW8Y2hKCcKjIC7W7JAWk1Scv1VjzPufPqrbARz11
	 aJWEchx5JoBbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hIBm0k6zeBK; Mon, 24 Apr 2023 06:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCDAD40256;
	Mon, 24 Apr 2023 06:39:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCDAD40256
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 885AF1C2B82
 for <intel-wired-lan@osuosl.org>; Mon, 24 Apr 2023 06:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E35A4099E
 for <intel-wired-lan@osuosl.org>; Mon, 24 Apr 2023 06:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E35A4099E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9QuH7TlxMxn8 for <intel-wired-lan@osuosl.org>;
 Mon, 24 Apr 2023 06:39:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF5D040920
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF5D040920
 for <intel-wired-lan@osuosl.org>; Mon, 24 Apr 2023 06:39:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="409308230"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="409308230"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2023 23:39:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="939194700"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="939194700"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.36])
 ([10.13.12.36])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2023 23:39:17 -0700
Message-ID: <cc67bcc4-608c-51e8-e3f9-b488eb10d222@linux.intel.com>
Date: Mon, 24 Apr 2023 09:39:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230410065140.20824-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230410065140.20824-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682318361; x=1713854361;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qitDecGuKLJ+MfgU3jY+x1iNL3+cC3TYh8AR89505U0=;
 b=Uz+rF9cNy8jz3YfC+dDALeJa7njUoSb1U0JFk386LlnZo3fzl3uYN+5C
 /+xr/aAf/4vb3vMFotItPyZ+Gj1IKZVaOm+EjzO7KBfHBcLoicpUVYjmZ
 5dsPMat0+4/pR41Bb1qwub8XRNyseYLlzqMGdZTDUt8f0xLtJJZJHTrr5
 qIkM63Lz2hIoP6LiAXn3XI/JYD6M3L/gzKo9J/2XInINvBqKzpuFBjloF
 NueKQyftdAdG/cznE1TU3RSQbTrLv0XZpjpPZNWsqKXn1bjr3TnR05fGs
 IUO7VyjfdtSN4GLOw+PqMMZSWZMpcW/yG1zq3Y7g/UfLFR8znKlVOINJq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uz+rF9cN
Subject: Re: [Intel-wired-lan] [PATCH] igc: Clean the TX buffer and TX
 descriptor ring
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

On 4/10/2023 09:51, Muhammad Husaini Zulkifli wrote:
> There could be a race condition during link down where interrupt
> being generated and igc_clean_tx_irq() been called to perform the
> TX completion. Properly clear the TX buffer and TX descriptor ring
> to avoid those case.
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 7 +++++++
>   1 file changed, 7 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
