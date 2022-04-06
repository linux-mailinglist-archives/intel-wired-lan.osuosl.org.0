Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 384FA4F5478
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 07:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2B3D610B0;
	Wed,  6 Apr 2022 05:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agOjJF_tDMcu; Wed,  6 Apr 2022 05:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5F6B60B5A;
	Wed,  6 Apr 2022 05:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A06CA1BF962
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 05:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D7F040436
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 05:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SocN_4PmW-fN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 05:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5892F40126
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 05:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649221549; x=1680757549;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wuedaMwKfn9kve/51+O2sf4N9V+Qd+konib5o5NhHQc=;
 b=Q5zHV1KqJa9eGtRvjw2eUdm4EtnboY/GujeazbuoP80xcdMZNtuBW388
 bgAiSWci57+47mizC9n6yR8xAD9CtjbW4SysAxxnWckxqUx1yKddNd+hQ
 GOh8Lej602vPlfeLReu11C1b1r4jbWVzuAU5MHH3sG+UeNaweUktvx2ZT
 NVXYsMn8K6P8K8e4SlWCpGdgbNZDJJXaJUX6Xm7+Q/XzTnVQ9Dr8YeVtO
 1onn5B0if9cNaIutzdu5MjXtWnNYPXDKSRP0X8PDhUVosxldi3Q6qqRPY
 +CmKxNkV/IdF1YlCUveq/cjl3fUsoSJDeX6USLy2zAWnVlJfSVB0NWYIG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="285916771"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="285916771"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 22:05:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="524306499"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 22:05:47 -0700
Message-ID: <c5a1da34-0c31-32ea-17c5-9c51159ffbee@linux.intel.com>
Date: Wed, 6 Apr 2022 08:05:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220405155601.1443799-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220405155601.1443799-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>,
 James Hutchinson <jahutchinson99@googlemail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/5/2022 18:56, Sasha Neftin wrote:
> When we decode the latency and the max_latency u16 value does not fill
> the required size and could lead to the wrong LTR representation.
> Replace the u16 type with the u32 type and allow corrected LTR
> representation.
> 
> Fixes: 44a13a5d99c7 ("e1000e: Fix the max snoop/no-snoop latency for 10M")
> Reported-by: James Hutchinson <jahutchinson99@googlemail.com>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=215689
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v2: added link tag
> 
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
