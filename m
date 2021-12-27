Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1FD48048F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Dec 2021 21:35:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16DBA81461;
	Mon, 27 Dec 2021 20:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6Xz1jHNmVVj; Mon, 27 Dec 2021 20:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16057813A1;
	Mon, 27 Dec 2021 20:35:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9DF31BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7694813A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vm3H7jRUiYru for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Dec 2021 20:35:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04DA1813A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 20:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640637337; x=1672173337;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=i0+skIG3r3ZUUYPJ5601p7bDL3y6odf9XcyndmoTIqM=;
 b=W4m7ViY9sIIFcHG53BQ+VN/2LImV+G6ik4cxwSzR048hafnJvVgczY9V
 8GBlnT2wmf7wO2U0fVCG6VkPA0xEDbTfw5PpBmkKWS21UWNDQDjlyH1H8
 Rr5M5j7XBF7Qn/mpefTUu160zs4AKbmT95R01bWyWKmirA6xszTTi0e8z
 E5hhgTjXhJixjfjWTJLmXvIzuyQvvZOmaDUCwJMEC3uKFCYqPEXf+i8Ba
 WDNFNuZPTMaAf2YWtLvO0MMvSqcq0oFEUqlcStvzdkPptxJBFn6aHUFdM
 I/ZLe+MKaThC786Z4tnJ2D4GraPQDDjQQf0GeI1D+XxYkkg+pTzVhX73x w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="240049739"
X-IronPort-AV: E=Sophos;i="5.88,240,1635231600"; d="scan'208";a="240049739"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 12:35:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,240,1635231600"; d="scan'208";a="523406171"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.255.195.237])
 ([10.255.195.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 12:35:33 -0800
Message-ID: <30f0321d-14de-e2b8-26b3-c0ed3b01f5de@linux.intel.com>
Date: Mon, 27 Dec 2021 22:35:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <87wnk8qrt8.fsf@intel.com>
 <20211214003949.666642-1-vinicius.gomes@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211214003949.666642-1-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] igc: Do not enable
 crosstimestamping for i225-V models
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
Cc: netdev@vger.kernel.org, roots@gmx.de, regressions@leemhuis.info,
 kuba@kernel.org, greg@kroah.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2021 02:39, Vinicius Costa Gomes wrote:
> It was reported that when PCIe PTM is enabled, some lockups could
> be observed with some integrated i225-V models.
> 
> While the issue is investigated, we can disable crosstimestamp for
> those models and see no loss of functionality, because those models
> don't have any support for time synchronization.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Link: https://lore.kernel.org/all/924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de/
> Reported-by: Stefan Dietrich <roots@gmx.de>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
